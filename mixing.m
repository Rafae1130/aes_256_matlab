function [final]= mixing(shifted_mat, row_num)

temp =zeros(4);

if row_num==1
    i=1;
    j=2;
    k=3;
    l=4;
elseif row_num==2
    i=2;
    j=3;
    k=1;
    l=4;
elseif row_num==3
    i=3;
    j=4;
    k=2;
    l=1;
elseif row_num==4
    i=4;
    j=1;
    k=2;
    l=3;
end

shifted_mat=cast(shifted_mat,"uint8");

    if bitget(shifted_mat(i,1),8)==1
        temp(i)=bitshift(shifted_mat(i,1),1);
        temp(i)=bitxor(temp(i), 27);
        
    else
        temp(i)=bitshift(shifted_mat(i,1),1);
    end

    if bitget(shifted_mat(j,1),8)==1
        temp(j)=bitshift(shifted_mat(j,1),1);
        temp(j)=bitxor(temp(j), 27);
        temp(j)=bitxor(temp(j), shifted_mat(j,1));
    else
        temp(j)=bitshift(shifted_mat(j,1),1);
        temp(j)=bitxor(temp(j), shifted_mat(j,1));
    end
    temp(k) = shifted_mat(k);
    temp(l) = shifted_mat(l);

    final=bitxor(temp(1),temp(2));
    final=bitxor(final,temp(3));
    final=bitxor(final,temp(4));

end