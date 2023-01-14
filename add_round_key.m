function [rounded]=add_round_key(message, key)

    rounded=bitxor(cast(message, 'uint8'), key)

end


