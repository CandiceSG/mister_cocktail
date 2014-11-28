class Cocktail < ActiveRecord::Base
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }

  validates_presence_of :name, :image
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
