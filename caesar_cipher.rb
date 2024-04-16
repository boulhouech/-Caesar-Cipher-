def caesar_cipher(text, shift)
  encrypted_text = ""
  text.each_char do |char|
    if char.match?(/[a-zA-Z]/)
      is_upper = char.match?(/[A-Z]/)
      shifted = ((char.ord - (is_upper ? 'A'.ord : 'a'.ord) + shift) % 26 + (is_upper ? 'A'.ord : 'a'.ord)).chr
      encrypted_text += shifted
    else
      encrypted_text += char
    end
  end
  encrypted_text
end


puts caesar_cipher("What a string!", 5)
