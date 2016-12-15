require 'sinatra/base'

class App < Sinatra::Base

    #   Create a route that responds to a GET request at /newteam.
    # Add a form to the newteam.erb template and render it in the GET /newteam route.

    # It should look something like this:

    get '/newteam' do
      erb :newteam
    end

    post '/team' do
      @name = params[:name]
      @coach = params[:coach]
      @pg = params[:pg]
      @sg = params[:sg]
      @pf = params[:pf]
      @sf = params[:sf]
      @c = params[:c]
      erb :team
    end
end
