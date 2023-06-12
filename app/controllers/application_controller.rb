class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  # GET /recipes - Get all recipes
  get '/recipes' do
    recipes = Recipe.all
    recipes.to_json
  end


  # POST /dietaries - Create a new dietary
post '/dietaries' do
  dietary_params = JSON.parse(request.body.read)
  dietary = Dietary.new(dietary_params)
  
  if dietary.save
    status 201
    dietary.to_json
  else
    status 400
    { error: 'Failed to create dietary' }.to_json
  end
end


  # GET /dietaries - Get all dietaries
  get '/dietaries' do
    dietaries = Dietary.all
    dietaries.to_json
  end

  # DELETE /recipes/:id - Delete a recipe
  delete '/recipes/:id' do
    recipe_id = params[:id].to_i
    puts "Delete request received for recipe with ID: #{recipe_id}"
    recipe = Recipe.find(recipe_id)
    puts "Recipe found: #{recipe.inspect}"
  
    if recipe.destroy
      status 204
    else
      status 400
      { error: 'Failed to delete recipe' }.to_json
    end
  end

  # Error handling
  error do
    { error: 'Internal server error' }.to_json
  end
end
