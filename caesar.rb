def encrypt(string, key)
  string = string.to_s
  key = key.to_i

  cipher=[]
  string.each_byte do |i|
    if (i>64 && i< 91)
      if (i+key) > 90
        ciper << (i+key-26).chr
      else
        cipher << (i+key).chr
      end
    elsif (i>96 && i< 123)
      if (i+key) > 122
        cipher << (i+key-26).chr
      else
        cipher << (i+key).chr
      end
    else
      cipher << i.chr
    end
  end

  cipher=cipher.join('')
  puts "Encrypted Phrase: #{cipher}"
end

print "enter phrase: "
letters = gets.chomp

print "enter Key: "
key = gets.chomp

encrypt(letters, key)
