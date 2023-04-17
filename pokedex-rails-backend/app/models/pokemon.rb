# == Schema Information
#
# Table name: pokemons
#
#  id         :bigint           not null, primary key
#  number     :integer          not null
#  name       :string           not null
#  attack     :integer          not null
#  defense    :integer          not null
#  poke_type  :string           not null
#  image_url  :string           not null
#  captured   :boolean          default(FALSE), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Pokemon < ApplicationRecord
    validates :number, presence: true, numericality: { greater_than: 0 }, uniqueness: { message: "'%{value}' must be greater than 0" }
    validates :name, length: { in: 3..255 }, uniqueness: { message: "'%{value}' is already in use" }, presence: true 
    validates :attack, presence: true, numericality: { greater_than: 0, less_than: 100, only_integer: true }
    validates :defense, presence: true, numericality: { greater_than: 0, less_than: 100, only_integer: true }
    validates :image_url, presence: true
    validates :captured, inclusion: [true, false]
   
    TYPES = [
    'fire',
    'electric',
    'normal',
    'ghost',
    'psychic',
    'water',
    'bug',
    'dragon',
    'grass',
    'fighting',
    'ice',
    'flying',
    'poison',
    'ground',
    'rock',
    'steel'
  ].sort.freeze

  validates :poke_type, inclusion: { in: TYPES, message: "'%{value}' is not a valid Pokemon type" }

end
