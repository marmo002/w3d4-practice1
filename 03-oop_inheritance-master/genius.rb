require_relative 'multilinguist.rb'

class MathGenius < Multilinguist

  def report_total(array)
    result = array.sum
    if @current_lang == 'en'
      message = "The total is"
    else
      message = self.say_in_local_language('The total is')
    end

    "#{ message }: #{ result }"
  end

end

class Collector < Multilinguist

  def initialize
    super
    @quotes = {
      wisdom: [],
      friendship: [],
      Anniversary: [],
    }
  end

  def quotes
    @quotes
  end

  def add_quote(topic, quote)
    @quotes[topic.to_sym] << quote
  end

  def random(topic)
    text = @quotes[topic.to_sym].sample
    self.say_in_local_language(text)
  end

end
