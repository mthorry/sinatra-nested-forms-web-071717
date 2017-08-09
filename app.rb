require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @new_pirate = Pirate.new(params[:pirate])
      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end

      @new_ships = Ship.all

      erb :'pirates/show'
    end

  end
end

# params[:student][:courses].each do |details|
#     Course.new(details)

# => params:
    # {"pirate"=>
    #   {"name"=>"Matt",
    #    "weight"=>"150",
    #    "height"=>"5'9\"",
    #    "ships"=>
    #     [{"name"=>"Santa Maria",
    #       "type"=>"Sailboat",
    #       "booty"=>"Big"},
    #      {"name"=>"Cap'n",
    #       "type"=>"Sailboat",
    #       "booty"=>"Cash"}]}}