require 'sinatra'

get '/' do
	"I can\'t even"
	'<h1>welcome to my app!</h1>'+
	'<a href="/about">about</a>'
end

get '/about' do
  '<p>A little about me. </p> <p> A little more. </p>'
end

get '/form' do
	erb :form
end

post '/form' do
   "so you want to text " + 
   params[:message] + 
   " to " + 
   params[:phone_number] 
end