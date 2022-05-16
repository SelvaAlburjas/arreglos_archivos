=begin
Crear un método llamado notas_mas_alta dentro del archivo calculo_notas2.rb,
que reciba un arreglo, con los nombres y notas de los alumnos, y devuelva un arreglo
que contenga solo las notas más alta de cada alumno.
=end
data = open('notas.data').readlines
def nota_mas_alta(data)
    array = data.map {|x| x.split(",")}
    n = array.length
    alta = []
    n.times do |i|
        array[i].map! {|x| x.to_i}
        alta << array[i].max 
    end
    alta
end
    print "Notas más altas por alumno:"
    print nota_mas_alta(data)
    