function [shifted_mat]= inv_shift_rows(plain_mat)


shifted_mat=zeros(4,4);

shifted_mat(1,:)=plain_mat(1,:);
shifted_mat(2,:)=circshift(plain_mat(2,:),1);
shifted_mat(3,:)=circshift(plain_mat(3,:),2);
shifted_mat(4,:)=circshift(plain_mat(4,:),3);

end