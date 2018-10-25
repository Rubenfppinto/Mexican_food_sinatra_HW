class PostController<Sinatra::Base
    set :root, File.join(File.dirname(__FILE__), "..")

    set :view, Proc.new { File.join(root, "views") }

    set :public_folder, File.dirname(__FILE__) + '/static'

  configure:development do
    register Sinatra::Reloader
  end

  get "/" do
    @tittle = "Homepage"
    erb :'food/index'
  end

  get "/:id" do
    id = params[:id]
    case id
    when "burritos"
        @title = "Burritos"
        @id = id
        erb :'food/burritos'
      when "chimichanga"
        @title = "Chimichanga"
        @id = id
        erb :'food/chimichanga'
      when "enchiladas"
        @title = "Enchiladas"
        @id = id
        erb :'food/enchiladas'
      when "fajitas"
        @title = "Fajitas"
        @id = id
        erb :'food/fajitas'
      when "tacos"
        @title = "Tacos"
        @id = id
        erb :'food/tacos'
      else
        "<h1>HTTP Error 404 (Page not found)</h1>"
    end
  end
end
