require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name'do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @number = params[:number]
    @square = @number.to_i**2
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    @repeat = @number.to_i
    @array = []
    @repeat.times do
      @array << @phrase
    end
    @array
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1]
    @number2 = params[:number2]
    if @operation == "add"
      @addition = @number1.to_i + @number2.to_i
      @addition.to_s
    elsif @operation == "subtract"
      @subtraction = @number1.to_i - @number2.to_i
      @subtraction.to_s
    elsif @operation == "multiply"
      @multiply = @number1.to_i * @number2.to_i
      @multiply.to_s
    elsif @operation == "divide"
      @divide = @number1.to_i / @number2.to_i
      @divide.to_s
    end
  end

end
