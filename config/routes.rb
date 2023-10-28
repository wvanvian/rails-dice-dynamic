Rails.application.routes.draw do
  get("/", { :controller => "page", :action => "default"})
  get("/dice/:number_of_dice/:how_many_sides", { :controller => "page", :action => "flexible"})
end
