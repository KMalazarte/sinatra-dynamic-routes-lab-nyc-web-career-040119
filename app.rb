require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @sqr = (params[:number].to_i * params[:number].to_i).to_s
    "#{@sqr}"
  end

  get '/say/:number/:phrase' do
    answer = ''

    params[:number].to_i.times do
      answer += params[:phrase]
    end

    answer
  end


  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    @n1 = params[:number1].to_i
    @n2 = params[:number2].to_i
    @operation = params[:operation]
    @ans = ""

    case @operation
    when "add"
     @ans = (@n1 + @n2).to_s
     # binding.pry
    when "subtract"
     @ans = (@n1 - @n2).to_s
    when "multiply"
     @ans = (@n1 * @n2).to_s
    when "divide"
     @ans = (@n1 / @n2).to_s
    end
  end

end
