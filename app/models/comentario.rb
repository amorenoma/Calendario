class Comentario < ActiveRecord::Base
  attr_accessible :comentario, :evento, :usuario, :fecha
end
