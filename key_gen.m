
function word= key_gen(w,word_num,i)
word=zeros(4,4);
word(:,1)=key_expansion(word_num,w(1:4,word_num),w(1:4,word_num-7),i,1);


word(:,2)=key_expansion(word_num+1,word(1:4,1), w(1:4,word_num-6),i,1);

word(:,3)=key_expansion(word_num+2,word(1:4,2),w(1:4,word_num-5),i,1);
word(:,4)=key_expansion(word_num+3,word(1:4,3),w(1:4,word_num-4),i,2);

end


