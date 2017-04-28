class MoviestuffController < ApplicationController

def direct
@alldirectors = Director.all
render("/director.html.erb")
end

def director_details
@specific_director = Director.find(params["director_id"])
render("/director_details.html.erb")
end

def delete_director
@director_to_delete = Director.find(params["delete_id"])
render("/delete_director.html.erb")
end

def new_form
render("/new_form.html.erb")
end

def create_director
  p = Director.new
  p.image_url = params["the_image_url"]
  p.bio = params["the_bio"]
  p.name = params["the_name"]
  p.dob = params["the_dob"]
  p.save
redirect_to("http://localhost3000/directors")
end

end
