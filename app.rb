require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name].reverse
    @name
  end

  get '/square/:number' do
    @num = params[:number].to_i
    @squared = @num ** 2
    "#{@squared}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase].to_s
    message = ''
    @num.times do
      # binding.pry
      message += @phrase
    end
    message
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    msg = "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
    msg
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @sum = 0

    if @operation == 'add'
      @sum = @num1 + @num2
    elsif @operation == 'subtract'
      @sum = @num1 - @num2
    elsif @operation == 'multiply'
      @sum = @num1 * @num2
    elsif @operation == 'divide'
      @sum = @num1 / @num2
    end
    @sum.to_s
  end

end
