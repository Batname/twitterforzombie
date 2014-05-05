class Zombie < ActiveRecord::Base

  has_many :assignmentses
  has_many :tweets
  has_many :roles, through: :assignmentses
  has_one :brain, dependent:  :destroy

  before_save :make_rotting

  #scope :rotting, where(rotting: true)
  scope :rotting, lambda { where(rotting: true) }
  scope :fresh, lambda { where("age < 20") }
  scope :recent, lambda { order("zombies.created_at DESC").limit(3) }


  def make_rotting
    self.rotting = true if age > 20
  end

end
