require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @username = params[:name]
    "#{@username}".reverse
  end

  get "/square/:number" do
    @integer = params[:number]
    "#{@integer.to_i ** 2}"
  end

  get '/say/:number/:phrase' do
    answer = ''

    params[:number].to_i.times do
      answer += params[:phrase]
    end

    answer
  end


  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end


  get '/:operation/:number1/:number2' do
  number1 = params[:number1].to_i
  number2 = params[:number2].to_i

  a = ''

  case params[:operation]
  when 'add'
    a = (number1 + number2).to_s
  when 'subtract'
    a = (number1 - number2).to_s
  when 'multiply'
    a = (number1 * number2).to_s
  when 'divide'
    a = (number1 / number2).to_s
  end
  end
end
