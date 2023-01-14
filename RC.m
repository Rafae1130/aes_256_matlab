function [w] = RC(w,round)

%r_con=[0x01000000 0x02000000 0x04000000 0x08000000 0x10000000 0x20000000 0x40000000 0x80000000 0x1B000000 0x36000000 0x6C000000 0xD8000000 0xAB000000 0x4D000000];
%r_con=[0x01000000 0x02000000 0x04000000 0x08000000 0x10000000 0x20000000 0x40000000 0x80000000 0x1B000000 0x36000000 0x6C000000 0xD8000000 0xAB000000 0x4D000000];

r_con=['0x01000000'; '0x02000000'; '0x04000000'; '0x08000000'; '0x10000000' ;'0x20000000'; '0x40000000' ;'0x80000000' ;'0x1B000000'; '0x36000000'; '0x6C000000'; '0xD8000000' ;'0xAB000000' ;'0x4D000000'];

temp=[hex2dec(r_con(round,3:4)) hex2dec(r_con(round,5:6)) hex2dec(r_con(round,7:8)) hex2dec(r_con(round,9:10))];

w = bitxor(cast(temp,'uint8'),w);
disp(w)
end