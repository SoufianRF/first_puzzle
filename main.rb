def output
#Output function goes here
end

output_thread = Thread.new{output()}

#Input goes here

teclado = gets(nil)
aux = open('RUTA SERIAL PORT', 'w') { |f|
  f << teclado
}

#End of output thread
output_thread.join
