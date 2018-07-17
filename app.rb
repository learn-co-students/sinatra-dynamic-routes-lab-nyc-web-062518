require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @name = params[:name].reverse
    @name
  end

  get "/square/:number" do
    @number = params[:number].to_i
    @square = @number * @number
    @square.to_s
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @phrase * @number
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    array = [@word1, @word2, @word3, @word4, @word5]
    string = ""
    array.each do |word|
      string += "#{word} "
    end
    string.chomp(" ") + "."
  end

  get "/:operation/:number1/:number2" do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @op = params[:operation]
    # binding.pry
    if @op == "add"
      @sum = @num1 + @num2
      @sum.to_s
    elsif
      @op == "subtract"
      @diff = @num1 - @num2
      @diff.to_s
    elsif @op == "multiply"
      @prod = @num1 * @num2
      @prod.to_s
    elsif @op == "divide"
      @div = @num1 / @num2
      @div.to_s
    end
  end

end
