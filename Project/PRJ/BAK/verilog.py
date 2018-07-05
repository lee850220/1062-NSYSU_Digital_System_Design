
# Wallace tree mix
def mix(array, line_num, tag = 'A'):
    s_line_num = int(line_num / 3)
    output = [[None] * 31 for i in range(line_num - s_line_num)]
    verilog = []
    for i in range(s_line_num):
        idx = 0
        for j in range(31):
            objs = []
            count = 0
            if array[i * 3][j] is not None:
                count += 1
                objs.append(array[i * 3][j])
            if array[i * 3 + 1][j] is not None:
                count += 1
                objs.append(array[i * 3 + 1][j])
            if array[i * 3 + 2][j] is not None:
                count += 1
                objs.append(array[i * 3 + 2][j])
            if count == 0:
                output[i * 2][j] = None
            elif count == 1:
                output[i * 2][j] = objs[0]
            elif count >= 2:
                output[i * 2][j] = tag + str(i) + 'S[' + str(idx) + ']'
                output[i * 2 + 1][j + 1] = tag + str(i) + 'C[' + str(idx) + ']'
                if count == 2:
                    verilog.append('HA ha_{0}_{1}_{2} ({0}{1}S[{2}], {0}{1}C[{2}], {3}, {4});'.format(tag, i, idx, objs[0], objs[1]))
                else:
                    verilog.append('FA fa_{0}_{1}_{2} ({0}{1}S[{2}], {0}{1}C[{2}], {3}, {4}, {5});'.format(tag, i, idx, objs[0], objs[1], objs[2]))
                idx += 1
                
    for i in range(line_num - 3 * s_line_num):
        for j in range(31):
            output[i + s_line_num * 2][j] = array[i + line_num - s_line_num][j]
            
    return output, line_num - s_line_num, verilog

# print array
def print_array(array, line_num):
    for i in range(line_num):
        for j in range(31):
            if array[i][j] is not None:
                print('%9s' % (array[i][j]), end = ' ')
            else:
                print('%9s' % ' ', end = ' ')
        print()
    print()
    
def print_verilog(array):
    for i in range(len(array)):
        print(array[i])
    print()
    print()

# init PP
PP, PPln = [[None] * 31 for i in range(8)], 8

k = 0
for i in range(PPln):
    idx = 0
    start = k
    end = 31 - 14 + k
    for j in range(start, end):
        PP[i][j] = 'PP' + str(i) + '[' + str(idx) + ']'
        idx += 1
    k += 2
    
# print_array(PP, PPln)
    
A, Aln, Av = mix(PP, PPln, 'A')
# print_array(A, Aln)
print_verilog(Av)

B, Bln, Bv = mix(A, Aln, 'B')
# print_array(B, Bln)
print_verilog(Bv)

C, Cln, Cv = mix(B, Bln, 'C')
# print_array(C, Cln)
print_verilog(Cv)

D, Dln, Dv = mix(C, Cln, 'D')
# print_array(D, Dln)
print_verilog(Dv)



