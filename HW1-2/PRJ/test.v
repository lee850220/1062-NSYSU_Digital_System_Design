module ADDFXL ( S, CO, A, B, CI);
output S, CO;
input A, B, CI;
  xor I0(S, A, B, CI);
  and I1(a_and_b, A, B);
  and I2(a_and_ci, A, CI);
  and I3(b_and_ci, B, CI);
  or  I4(CO, a_and_b, a_and_ci, b_and_ci);

  specify
    specparam

      tplh$A$S  = 1.0,
      tphl$A$S  = 1.0,
      tplh$A$CO  = 1.0,
      tphl$A$CO  = 1.0,
      tplh$B$S  = 1.0,
      tphl$B$S  = 1.0,
      tplh$B$CO  = 1.0,
      tphl$B$CO  = 1.0,
      tplh$CI$S  = 1.0,
      tphl$CI$S  = 1.0,
      tplh$CI$CO  = 1.0,
      tphl$CI$CO  = 1.0;


     if (B == 1'b0 && CI == 1'b0)
	(A  *> S)  = (tplh$A$S,   tphl$A$S);
     if (B == 1'b1 && CI == 1'b1)
	(A  *> S)  = (tplh$A$S,   tphl$A$S);
     if (B == 1'b0 && CI == 1'b1)
	(A  *> S)  = (tplh$A$S,   tphl$A$S);
     if (B == 1'b1 && CI == 1'b0)
	(A  *> S)  = (tplh$A$S,   tphl$A$S);
     if (A == 1'b0 && CI == 1'b0)
	(B  *> S)  = (tplh$B$S,   tphl$B$S);
     if (A == 1'b1 && CI == 1'b1)
	(B  *> S)  = (tplh$B$S,   tphl$B$S);
     if (A == 1'b0 && CI == 1'b1)
	(B  *> S)  = (tplh$B$S,   tphl$B$S);
     if (A == 1'b1 && CI == 1'b0)
	(B  *> S)  = (tplh$B$S,   tphl$B$S);
     if ((A == 1'b0 && B == 1'b0) || (A == 1'b1 && B == 1'b1))
	(CI *> S)  = (tplh$CI$S,  tphl$CI$S);
     if ((A == 1'b0 && B == 1'b1) || (A == 1'b1 && B == 1'b0))
	(CI *> S)  = (tplh$CI$S,  tphl$CI$S);
     if (B == 1'b1)
	(A  *> CO) = (tplh$A$CO,  tphl$A$CO);
     if (B == 1'b0)
	(A  *> CO) = (tplh$A$CO,  tphl$A$CO);
     if (A == 1'b1)
	(B  *> CO) = (tplh$B$CO,  tphl$B$CO);
     if (A == 1'b0)
	(B  *> CO) = (tplh$B$CO,  tphl$B$CO);
     (CI *> CO) = (tplh$CI$CO, tphl$CI$CO);

  endspecify
endmodule