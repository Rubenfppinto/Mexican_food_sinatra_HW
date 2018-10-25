class PostController<Sinatra::Base
    set :root, File.join(File.dirname(__FILE__), "..")

    set :view, Proc.new { File.join(root, "views") }

  configure:development do
    register Sinatra::Reloader
  end

  get "/" do
    @tittle = "Homepage"
    erb :'food/index'
  end

  get "/:id" do
    id = params[:id].downcase
    @title = id
    @id = id
    case id
      when "burritos"
        erb :'food/burritos'
      when "chimichanga"
        erb :'food/chimichanga'
      when "enchiladas"
        erb :'food/enchiladas'
      when "fajitas"
        erb :'food/fajitas'
      when "tacos"
        erb :'food/tacos'
      else
        "<h1>HTTP Error 404 (Page not found)</h1>"
    end
  end
end
