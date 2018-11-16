require_relative 'multilinguist.rb'

class MathGenius < Multilinguist

  def report_total(array)
    result = array.sum
    message = "The total is: "
    "#{ message } #{ result }"
  end

end
