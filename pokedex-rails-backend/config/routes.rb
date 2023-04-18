Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: {format: :json} do
   
     resources :items, only: [:edit, :update,  :destroy]
     resources :pokemon, except:[:destroy] do   
        resources :items, only: [:index, :create]
        # resources :types 
      
     end
  end


  # Defines the root path route ("/")
  # root "articles#index"
end

# List Pokemon:         GET /api/pokemon
# Create a new Pokemon: POST /api/pokemon
# Update a Pokemon:     PUT /api/pokemon/:id

# Get a Pokemon's Items: GET /api/pokemon/:pokemonId/items
# Create an Item:       POST /api/pokemon/:pokemonId/items

# List Pokemon types:   GET /api/pokemon/types

# Delete an Item:      DELETE /api/items/:id
# Edit an Item:          PUT /api/items/:id


