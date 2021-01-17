puts "What's your favourite genre? Fiction or Non-fiction?"
genre = gets.chomp.downcase

if genre=='fiction'
    puts "Read Harry Potter"
elsif genre=='non-fiction'
    puts "Read 'The Theory of Computation' "
else 
    puts "Go play cricket, you bufoon"
end

#useless comment
arr = "mahe is wonderful".split('')
puts arr
arr1 = "mahe is wonderful".split(' ')
puts arr1

arr2 = "mahe is wonderful  so are you  my dear girl".chomp.split('  ')
puts arr2