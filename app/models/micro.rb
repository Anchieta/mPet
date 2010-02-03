class Micro < ActiveRecord::Base
  belongs_to :macro
  #validates_associated  :macro

  validates_length_of     :nome,    :maximum=>25
  validates_length_of     :nomeseo, :maximum=>50

  validates_uniqueness_of :nome
  validates_uniqueness_of :nomeseo
  validates_uniqueness_of :ordem

  validates_presence_of   :nome
  validates_presence_of   :nomeseo
  validates_presence_of   :ordem
end
