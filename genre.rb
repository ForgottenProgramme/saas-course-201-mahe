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
puts("\n\n")
#spliting strings
arr = "mahe is wonderful".split('')
puts arr
puts("\n")
arr1 = "mahe is wonderful".split(' ')
puts arr1
puts("\n")
arr2 = "mahe is wonderful  so are you  my dear girl".chomp.split('  ')
puts arr2
puts("\n")
puts("\n\n")

#joining the elements of array to form a string
ar = ['1', '2', '3'].join
puts ar
puts("\n\n")
ar2 = [1,2,3].join('-')
puts ar2
puts("\n")
#filer
some_arr = [1,2,3,4,5,6,7,8].select{|num| num.even?}
puts some_arr