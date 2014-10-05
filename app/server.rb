=begin

Server file, since this app is fairly simple in structure, controllers are also kept in here

=end

require 'sinatra/base'

class RNS < Sinatra::Base
	set :views, settings.root + '/views/'
	set :public_dir, settings.root + '/public/'
	enable :sessions
	# set :port, 4567

	get '/' do
		redirect to('/register')
		# @username = session[:me]
	end

	get '/register' do
		erb :register
	end

	post '/choose' do
		session[:me] = params[:username]
		erb :choose
	end

	get '/choose' do
		erb :choose
	end

	# Why do I need a post AND a get route in order to make it pass my cukes?

	post '/result' do
		session[:me] = params[:gesture]
		erb :result
	end

	get '/result' do
		p session.inspect
		@username = session[:me]
		@gesture = session[:me]
		erb :result
	end

	# start the server if ruby file executed directly
	run! if app_file == $0
end
