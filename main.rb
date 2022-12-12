#!/usr/bin/env ruby

def caesar_cipher(text, shift)
    alphabet = "abcdefghijklmnopqrstuvwxyz".split('')
    alphabet_len = alphabet.length - 1

    text.downcase!
    res = ""

    for i in 0..text.length - 1
        if text[i] == ' ' || text[i] == '!'
            res += text[i]
            next
        end
        
        for j in 0..alphabet_len
            if text[i] == alphabet[j]
                res += alphabet[( shift - (alphabet_len - j) ) - 1]
            end
        end
    end

    return res.capitalize
end

puts caesar_cipher("What a string!", 5) # "Bmfy f xywnsl!"