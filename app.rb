require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    @square = params[:number].to_i  * params[:number].to_i 
    "#{@square}"
  end

  get '/say/:number/:phrase' do
   num = params[:number].to_i
   phrase = params[:phrase]
   array = []
   num.times do
    array << "#{phrase}"
   end
   array.join(" ")
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do

    w1 = params[:word1]
    w2 = params[:word2]
    w3 = params[:word3]
    w4 = params[:word4]
    w5 = params[:word5]

    result = [w1, w2, w3, w4, w5].join(" ") + "."

  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @operation = params[:operation].to_s

    case @operation
    when "add"
      "#{@num1 + @num2}"
    when "subtract"
      "#{@num1 - @num2}"
    when "multiply"
      "#{@num1 * @num2}"
    when "divide"
      "#{@num1 / @num2}"
    else
      nil
    end



  end


end