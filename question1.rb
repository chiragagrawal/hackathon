class PlayWithArray
 def count(string, substring)
   count = string.each_char.each_cons(substring.size).map(&:join).count(substring)
   puts "the occurence of the subtring is #{count}"

   string_array = string.split(' ')

   string_array.delete_if do |element|
     if element == substring
       true # Mstring_arrayke sure the if statement returns true, so it gets marked for deletion
     end
   end
   append_array = count.times do string_array.push(substring) end
  puts string_array



 end
end

 PlayWithArray.new.count("hello world hello","hello")

#You can run the file, if you have ruby installed by the command ruby question1.rb