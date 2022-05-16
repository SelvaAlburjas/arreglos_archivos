=begin
chart([5, 3, 2, 5, 10])
|**********
|******
|****
|**********
|********************
>--------------------
1 2 3 4 5 6 7 8 9 10
=end
#require_relative 'grafico'

def asteriscos(n)
    print("|")
    n.times do
        print "*" * 2
    end
    print "\n"
end   
def chart(array)
        array.each do |e|
            asteriscos (e)
        end
    maximo = array.max
    puts "#{">"}#{"-" * maximo * 2}#{"\n"}"
    print "#{">"}" 
        for i in 1..maximo
            print " " "#{i}"
        end
end
chart([5, 3, 2, 5, 10])    