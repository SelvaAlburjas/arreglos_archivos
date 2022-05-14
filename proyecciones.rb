=begin

Crear el programa proyecciones.rb y un archivo con las proyecciones de venta de cada
mes del próximo año. Este archivo debe llamarse ventas_base.db y estar en la misma
carpeta de trabajo que el código. Para realizar el ejercicio puedes agregar como contenido
los siguientes datos:
300070,50520,35000,32810,47999,62050,89100,21000,100010,121900,99549,210
000
El desafío consiste en hacer 2 simulaciones.
● Las ventas totales del primer semestre, dado que en la primera mitad del semestre
se vende un 10% más.
● Las ventas totales del segundo semestre, dado que en la segunda mitad del
semestre se vende un 20% más

=end

def read_file(filename)
    original_data = open(filename).read.split(',')
    lines = original_data.count
    array = []
    primer = []
    segundo = []
        lines.times do |i|
            array << original_data[i].to_i
        end
return array
end
    
    data = read_file("ventas_base.db")
    n = data.count
    ventas_primer = []
    ventas_segundo = []
    resultados = []
    ventas_primer = "%0.2f" % ((data[0..5]).sum * 1.10)  
    ventas_segundo = "%0.2f" %  ((data[6..11]).sum * 1.20)
    resultados[n] = [ventas_primer,ventas_segundo]

File.write('resultados.data', resultados.join("\n"))