class Macro < ActiveRecord::Base
  has_many :micros
  validates_associated  :micros
  
  validates_length_of     :nome,    :maximum=>25
  validates_length_of     :nomeseo, :maximum=>50
  validates_length_of     :abrev,   :maximum=>15
  validates_uniqueness_of :nome
  validates_uniqueness_of :nomeseo
  validates_uniqueness_of :abrev
  validates_uniqueness_of :ordem
  validates_presence_of   :nome
  validates_presence_of   :nomeseo
  validates_presence_of   :abrev
end

