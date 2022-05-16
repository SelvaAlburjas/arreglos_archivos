=begin
Crear un método llamado nota_mas_alta dentro del archivo calculo_notas.rb que
reciba un arreglo con el nombre y notas del alumno y devuelva la nota más alta.
Ejemplos:
○ nota_mas_alta(data[0]) => 9.
○ nota_mas_alta(data[1]) => 8.
=end

arreglo = ARGV[0].to_i
data = open('notas.data').readlines
def nota_mas_alta(data,lines)
    array = data.map {|x| x.split(",")}
    alta = 0
    array[lines].map! {|x| x.to_i}
    alta = array[lines].max
    return alta
end
  
puts "Indice de arreglo recibido:#{ARGV[0].to_i}"
print "La nota más alta es:"
print nota_mas_alta(data,ARGV[0].to_i)
    