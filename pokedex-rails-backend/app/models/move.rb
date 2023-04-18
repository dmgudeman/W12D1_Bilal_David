# == Schema Information
#
# Table name: moves
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Move < ApplicationRecord
    has_many :poke_moves, inverse_of: :moves
    has_many :pokemons, through: :poke_moves
end
