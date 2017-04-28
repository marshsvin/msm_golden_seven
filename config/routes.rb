Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get("/directors/new_form", {:controller => "moviestuff", :action => "new_form"})
get("/create_director", :controller => "moviestuff", :action => "create_director")

get("/directors", {:controller => "moviestuff", :action => "direct"})
get("/directors/:director_id", {:controller => "moviestuff", :action => "director_details"})

get("/delete_director/:delete_id", {:controller => "moviestuff", :action => "delete_director"})



end
