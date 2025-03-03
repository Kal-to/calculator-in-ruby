def get_number 
  loop do
    begin # start the to view some error
      puts "Type a number: "
      return Float(gets.chomp) # only just accept the float number, and repeat the loop
    
    rescue ArgumentError # if the user type wrong
      puts "Invalid Input, type a number!: "
    end
  end 
end

# elevated def
def elevated(base, exponent) 
  base ** exponent 
end

# sqrt def 
def raiz_quadrada(num_rq)
  Math.sqrt(num_rq)
end

# percentage def
def percent(num, percentage)
  num * (percentage / 100)
end

loop do
  num1 = get_number
  
  puts "Type a sign: (+ - / * ^ sqrt %)"
  sign = gets.chomp
  
  num2 = get_number

  puts "Your equation: #{num1} #{sign} #{num2}"
  
  if sign == 'sqrt'
    result = raiz_quadrada(num1)
  else  
    result = case sign
    when '+' then num1 + num2
    when '-' then num1 - num2
    when '/' then num2.zero? ? "Error: cannot by divided by zero" : num1 / num2
    when '*' then num1 * num2
    when '^' then elevated(num1, num2)
    when '%' then percent(num1, num2)
    else
      puts "Invalid sign!"
    end
  end
  puts "Results #{result}"

  # to continue the program
  puts "Type yes to continue running the program "
  continue_loop = gets.chomp.downcase
  break unless continue_loop == "yes"
end

#TODO: 
# entender como coloco um valor para ser recebido pelo @num1 e @num2 como Input -> ao passar por ele, virar o Output [X]
# algoritmo pegar valor digitado pelo usuário [X]
# possivel colocação de if..elsif ou case - ver possibilidades [X]
# fazer loop infinito para funcionar como uma calculadora normal! [X] it can be running infinitely if the user wants...
# aceitar apenas números na equação [X]

# Desafio Extra: Adicione funcionalidades como potência, raiz quadrada ou porcentagem [X]
# subir para github []