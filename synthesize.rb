#Problem 1 

names = [["Jhumpa", "Lahiri"], ["J. K", "Rowling"], ["Devdutt", "Pattanaik"]]
new_names = names.map{ |name| name.join(' ')}
puts new_names

#Problem 2

books = ["Design as Art", "Anathem", "Shogun"]
authors = ["Bruno Munari", "Neal Stephenson", "James Clavell"]

by = books.map.with_index {|book, i| "#{book} was written by #{authors[i]}"}
puts by

