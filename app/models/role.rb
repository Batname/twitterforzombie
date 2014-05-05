class Role < ActiveRecord::Base

  has_many :assignmentses
  has_many :zombies, through: :assignmentses
end
