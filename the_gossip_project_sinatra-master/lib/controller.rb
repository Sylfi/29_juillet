require 'gossip'

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/gossips/new/' do
    erb :new_gossip
  end

  post '/gossips/new/' do
  Gossip.new(params["gossip_author"], params["gossip_content"]).save
  redirect '/'
  end


  get '/all_gossips/' do
    erb :all_gossips, locals: {gossips: Gossip.all}
  end

  get '/gossips/:index' do
    erb :show, locals: {gossips: Gossip.find(params['index'].to_i), index: params['index']}
    end

end
