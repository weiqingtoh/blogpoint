class Article < ActiveRecord::Base
	before_save :capitalise_title
  attr_accessible :text, :title
  validates :title, presence: true, length: { minimum: 5 }
  has_many :comments, dependent: :destroy

  def capitalise_title()
  	self.title = self.title.split(' ').collect {|word| word.capitalize}.join(" ")
  end
end
