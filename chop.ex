defmodule Chop do

  def mid a, b do
    div(( b - a ), 2) + a
  end	

  #If number is outside of the range say so
  def guess(actual, a..b) when actual < a or actual > b do
    IO.puts "Number is outside of range :("
    IO.puts actual
  end
  
  #Bingo
  def guess(actual, a..b) when actual == div(( b - a ), 2) + a do
  	IO.puts "It is #{actual}"
  	IO.puts actual
  end

  #Greater then mid-point 
  def guess(actual, a..b) when actual < div(( b - a ), 2) + a do
    IO.puts "It is #{mid(a, b)}"
    guess(actual, a..mid(a, b) - 1)   
  end

    #Less then mid-point 
  def guess(actual, a..b) when actual > div(( b - a ), 2) + a do
    IO.puts "It is #{mid(a, b)}"
    guess(actual, mid(a, b) + 1..b)   
  end  

end