recipients = [
    ["Srinath"],
    ["Jadeja", "Kambli"],
    ["Sachin", "Sidhu", "Kumble"]
  ]

def generate_salutions(emails)
    if emails.length ==1
        "Hello, #{emails[0]}"
    elsif emails.length ==2
        "Hello, #{emails[0]} and #{emails[1]}"
    else
        "Hello, #{emails[0..-2].join(", ")}, and #{emails.last}"
    end
end


recipients.each do |emails|
    puts generate_salutions(emails)     
end
    

#synthesis problem 1

def salute(name, greeting)
    greeting.capitalize + " Mr. " + name.split[-1]
end
puts salute("Nelson Rolihlahla Mandela", "hello")
puts salute("Sir Alan Turing", "welcome")