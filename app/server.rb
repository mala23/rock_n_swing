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
	end

	get '/register' do
		erb :register
	end

	post '/choose' do
		erb :choose
	end

	# start the server if ruby file executed directly
	run! if app_file == $0
end
