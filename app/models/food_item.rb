class FoodItem < ApplicationRecord
  belongs_to :section
  has_many :orders
  validates :name, :price, presence: true
  def image_url_or_default
  	image_url.presence || "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSBKrTFYWPlRit2ywyQgWgoHdT92swDqEeeGpdSEkGX4rv3X24j"
  end
  def self.search(search)
	  where("LOWER(name) LIKE ?", "%#{search.downcase}%")
	end
end
