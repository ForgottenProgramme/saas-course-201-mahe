#Problem 1 

names = [["Jhumpa", "Lahiri"], ["J. K", "Rowling"], ["Devdutt", "Pattanaik"]]
new_names = names.map{ |name| name.join(' ')}
puts new_names

#Problem 2

books = ["Design as Art", "Anathem", "Shogun"]
authors = ["Bruno Munari", "Neal Stephenson", "James Clavell"]

by = books.map.with_index {|book, i| "#{book} was written by #{authors[i]}"}
puts by

#Problem 3
todos = [
    ["Send invoice", "money"],
    ["Clean room", "organize"],
    ["Pay rent", "money"],
    ["Arrange books", "organize"],
    ["Pay taxes", "money"],
    ["Buy groceries", "food"]
  ]




#hashes

library = {}
library["austen"] = ["Pride and Prejudice", "Sense and Sensibility"]
library["asimov"] = ["Robots of Dawn", "I,Robot"]

authors = library.keys
puts "These are the authors in my catalog: #{authors.join(", ")}"

books=library.values
puts "The books in my catalog are #{books.join(", ")}"

library.each do |author, books|
    puts "#{author.capitalize} wrote the books #{books.join(', ')}"
end

