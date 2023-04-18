

class PokeMove < ApplicationRecord
    belongs_to :pokemons,
    class_name: 'Pokemon',
    foreign_key: 'pokemon_id' #inverse_of: :poke_moves
    
    
    belongs_to :moves,
    class_name: 'Move',
    foreign_key: 'move_id' #inverse_of: :poke_moves
end