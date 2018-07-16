require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    n = params[:number].to_i
    "#{n * n}"
  end

  get '/say/:number/:phrase' do
    string = ''
    n = params[:number].to_i
    n.times { string += params[:phrase] }
    string
  end

  get '/square/:number' do
    params[:number].to_i.square
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    x, y = params[:number1].to_i, params[:number2].to_i
    case params[:operation]
    when 'add'
      "#{x + y}"
    when 'subtract'
      "#{x - y}"
    when 'multiply'
      "#{x * y}"
    when 'divide'
      "#{x / y}"
    end
  end
end
