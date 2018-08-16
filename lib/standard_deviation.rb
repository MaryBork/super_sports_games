#ages = [24, 30, 18, 20, 41]

#code for calculating standard standard_deviation
  #SUM ALL INTEGERS
  #Find the number of integers in the input array
  #Divide the sum of integers(step 1) by the number of integers(step 2)(AKA FIND THE AVERAGE)
  #Subtract each integer by the average found in step 3
  #Take result from step 4 and square each number
  #sum all the numbers from step 5
  #divide the result from step 6 by the number of integers(step 2)
  #take the square root of the result from step 7

#  When You find the standard deviation/Print it


class Event
  attr_reader :name,
              :ages

  def initialize(name, ages)
    @name = name
    @ages = ages
  end

  def standard_deviation_age
    sroot = Math.sqrt(squared.sum / squared.count)
    return sroot.round(2)
  end

  def max_age
    ages.max
  end

  def min_age
    ages.min
  end

  def average_age
    sum = 0.to_f
    count = ages.count
      ages.each do |age|
        sum += age
      end
    average = sum / count
    return average
  end

  def subtract_average #standard_deviation_age#(ages)
    subtracted = []
    ages.each do |age|
    rounded = age - average_age
    subtracted << rounded.round(1)
    end
    return subtracted
  end

  def squared
    square = []
    subtract_average.each do |num|
      round_squared = num ** 2
      square << round_squared.round(2)
    end
    return square
  end



end
