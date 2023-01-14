In=['4f63760643e0aa85efa7213201a4e705'];
plain_text=hex2dec(reshape(In,2,[])');
plain_mat=cast((reshape(plain_text, 4,4))','uint8');
plain_mat'