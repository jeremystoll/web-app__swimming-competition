MyApp.post "/view_add_swimmer_confirmation" do


  @school_1 = School.new
  @school_1.school_name = (params["school_1_name"])
  @school_1.save
  @show_school_id = @school_1.id
  @show_added_school = (params["school_1_name"])

  @swim_1 = Swimmer.new
  @swim_1.swimmer_name = (params["swim_1_name"])
  @swim_1.school_id = @show_school_id
  @swim_1.save
  @show_added_name = (params["swim_1_name"])

  binding.pry

  erb :"view_add_swimmer_confirmation"
end

MyApp.get "/view_add_swimmer" do

  erb :"view_add_swimmer"
end

# Show form.
MyApp.get "/" do
  erb :"view_home_page"
end
