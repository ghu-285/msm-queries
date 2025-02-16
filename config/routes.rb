Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/directors", { :controller => "directors", :action => "show" })
  get("/directors/youngest", { :controller => "directors", :action => "young" })
  get("/directors/eldest", { :controller => "directors", :action => "old" })
  get("/directors/:director", { :controller => "directors", :action => "details" })

  get("/movies", { :controller => "movies", :action => "show" })
  get("/movies/:movie", { :controller => "movies", :action => "details" })

  get("/actors", { :controller => "actors", :action => "show" })
  get("/actors/:actor", { :controller => "actors", :action => "details" })

end
