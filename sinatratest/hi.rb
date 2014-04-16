require 'sinatra'

get '/hi' do
  "hello sinatra"
end

get  "/hello/:name" do
  "hello #{params[:name]}!"
end


set(:probability) { |value| condition { rand <= value } }

get '/win_a_car', :probability => 0.5 do
  "You won!"
end

get '/win_a_car' do
  "Sorry, you lost."
end

get '/guess/:who' do
  pass unless params[:who] == 'foo'
  'You got me!'
end

get '/guess/*' do
  'You missed!'
end