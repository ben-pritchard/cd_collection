require("sinatra")
require("sinatra/reloader")
require("pry")
require("./lib/cd_collection")
also_reload('lib/**/*.rb')

get("/") do
  @collection = CD.all()
  erb(:index)
end

post("/add_CD") do
  @artist = params.fetch("artist")
  @album = params.fetch("album")
  to_add = CD.new({:artist => @artist, :album => @album})
  redirect("/")
end

post("/search_collection") do
  @results = []
  @search = params.fetch("search")
  @collection = CD.all()
  @results = CD.search(@search)

  erb(:search_results)
end

post("/all_artists") do
  @collection = CD.all()
  erb(:all_artists)
end

get("/artist_page/:artist") do
  @results = []
  @search = params.fetch("artist")
  @collection = CD.all()
  @results = CD.search(@search)

  erb(:search_results)
end
