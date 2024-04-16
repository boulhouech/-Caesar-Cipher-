# Caesar Cipher Description

In cryptography, a Caesar cipher, also known as Caesar’s cipher, 
the shift cipher, Caesar’s code or Caesar shift, is one of the 
simplest and most widely known encryption techniques. 
It is a type of substitution cipher in which each letter in the plaintext
is replaced by a letter some fixed number of positions down the alphabet.
For example, with a left shift of 3, D would be replaced by A, E would become B, 
and so on. The method is named after Julius Caesar, who used it in his private correspondence.

# Caesar Cipher Implementation

  

This code snippet implements a Caesar cipher, a simple encryption technique that shifts characters by a fixed number of positions in the alphabet. Below is an explanation of each part of the code:

  

char.ord: This method converts the character char to its corresponding ASCII code.

  

(is_upper ? 'A'.ord : 'a'.ord): This ternary operator checks whether the character is uppercase (is_upper). If it is, it returns the ASCII code of 'A', otherwise, it returns the ASCII code of 'a'. This step determines the base value for the modular arithmetic operation.

  

(char.ord - (is_upper ? 'A'.ord : 'a'.ord) + shift): This expression calculates the new position of the character after applying the Caesar cipher shift. It subtracts the base value (either 'A' or 'a') from the ASCII code of the character, adds the shift, and computes the new position in terms of the alphabet.

  

% 26: This operation performs the modulo operation by 26, ensuring that the new position wraps around within the 26 letters of the alphabet.

  

+ (is_upper ? 'A'.ord : 'a'.ord): After the modulo operation, this step adds back the base value ('A' or 'a') to the result. This is necessary to shift the position back into the range of ASCII values for uppercase or lowercase letters.

  

.chr: Finally, this method converts the resulting ASCII code back to the corresponding character, completing the encryption process.
