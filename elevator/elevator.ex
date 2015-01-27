defmodule Elevator do

  #Passenger pushes the button for the current floor
  def activate_floor_button(_, current, desired) when current == desired do
    IO.puts "You are already here!"
  end
  
  #Passenger tries to hack the elevator to go to a floor outside the range
  def activate_floor_button([first..last], _, desired) when desired < first or desired > last do
    IO.puts "That floor is inaccessible or does not exist, please choose another."  
  end

  #Passenger pushes the button for a different floor than the current one
  def activate_floor_button(_, current, desired) do
  	_close_door
  	travel(current, desired)
  end

  ##Private functions that do things like open and close door and move the elevator
  
  #We have arrived!
  defp travel(current, desired) when current == desired do
  	_open_door(current)
  end

  #Go up a floor
  defp travel(current, desired) when current < desired do 
  	IO.puts "Floor number #{current}"
  	travel(current + 1, desired)
  end

  #Go down a floor
  defp travel(current, desired) when current > desired do 
  	IO.puts "Floor number #{current}"
  	travel(current - 1, desired)
  end

  #Open elevator door and announce floor
  defp _open_door(floor) do 
  	IO.puts "Floor number #{floor}, please watch your step."
  end

  #Close elevator door
  defp _close_door do 
  	IO.puts "Thank you, door is closing."
  end
end