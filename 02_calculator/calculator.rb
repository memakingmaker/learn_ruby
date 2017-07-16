def add( number_1, number_2 )
  number_1 + number_2
end

def subtract( number_1, number_2 )
  number_1 - number_2
end

def sum( numbers )
  the_sum = 0
  numbers.each do | i |
    the_sum += i
  end

  the_sum
end

def multiply(factor1, *factor2)
  product = 1
  
  if( factor2 == [] )
    factor1.each do | i |
      product = product * i.to_i
    end
  else
    product = factor1 * factor2[0]
  end

  product
end

def power( base, power )
  base ** power
end

def factorial( number )
  factorial_product = 1

  while number > 1 do
    factorial_product = factorial_product * ( number )
    number-=1
  end

  factorial_product
end


