%make each cell of the key matrix of size 32

clc
clear all


In=['8ea2b7ca516745bfeafc49904b496089'];
plain_text=hex2dec(reshape(In,2,[])');
plain_mat=cast((reshape(plain_text, 4,4))','uint8');
plain_mat=plain_mat';
%row shifting


%coloumn mixing


% 
% KEY=[0x00 0x01 0x02 0x03 ...
%     0x04 0x05 0x06 0x07 ...
%     0x08 0x09 0x0a 0x0b ...
%     0x0c 0x0d 0x0e 0x0f ...
%     0x10 0x11 0x12 0x13 ...
%     0x14 0x15 0x16 0x17 ...
%     0x18 0x19 0x1a 0x1b ...
%     0x1c 0x1d 0x1e 0x1f];

KEY='000102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f';

key=hex2dec(reshape(KEY,2,[])');
key=reshape(key,4,[]);
w=cast(zeros(4,60),'uint8');
w(:,1:8)=key;



%for one word
for i=8:4:56
  %   disp(i)
  %   disp('in loooooooooooop')
  %   disp(size(key_gen(w, i,1)))
     disp('HAHAHHAHAHAH')
     w(:,i+1:i+4)=key_gen(w, i,1);
end

disp(w)

plain_mat=add_round_key(plain_mat, w(:,57:60));
 
ind_1=53;
ind_2=56;

for round=1:14
    plain_mat=inv_shift_rows(plain_mat);%per standard
    disp('inv sub')
    disp(plain_mat)


    plain_mat=inv_SubBytes(plain_mat,2);%per standard

    disp('inv sub')
   % disp(plain_mat)

     plain_mat=add_round_key(plain_mat,w(:,ind_1:ind_2))
     disp(plain_mat)
     if round ~=14
     plain_mat=(inv_mix_coloumns(plain_mat))%per standard
     end


    ind_1=ind_1-4;
    ind_2=ind_2-4;
end

   