puts "Por favor, digite 3 números válidos de temperatura para serem convertidos de Celsius para Fahrenheit."

#Retirando o "\n" que vem junto com os números ao digitar o valor das temperaturas e transformando os números em inteiros para serem usados na conversão
temp1 = gets.chomp.to_i
temp2 = gets.chomp.to_i
temp3 = gets.chomp.to_i

def temperatura(temp1, temp2, temp3)
    temperaturas = [temp1, temp2, temp3]
    puts "Iniciaremos agora a conversão de temperaturas de Celsius para Fahrenheit."
    puts "Estes foram os valores escolhidos: #{temperaturas}"
    puts "Vamos continuar com a conversão agora."
    puts "Eu irei escrever estes valores no arquivo temp.dat e irei convertê-los para Fahrenheit escrevendo-os no arquivo temp.out."
    puts "Escrevendo..."

    arq = File.new("temp.dat", "w")
    arq.puts temperaturas
    arq.close 

    def conversao_fahrenheit(temp)
       return (temp*9/5)+32
    end

    puts "Pronto!"

    puts "Os valores que você digitou em Celsius convertidos para Fahrenheit são, respectivamente: [#{conversao_fahrenheit(temp1)}, #{conversao_fahrenheit(temp2)}, #{conversao_fahrenheit(temp3)}]"

    arq2 = File.read("temp.dat")
    arq2m = arq2.to_s.split("\n")
    arq2m.map! { |temp| temp.to_i}
    arq2m.map! { |temp| conversao_fahrenheit(temp)}

    arq3 = File.new("temp.out", "w")
    arq3.puts arq2m 
    arq3.close
    
    

end

temperatura(temp1, temp2, temp3)