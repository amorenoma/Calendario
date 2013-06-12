class Usuario < ActiveRecord::Base
  attr_accessible :nombre , :email, :rol, :key, :nick
end
