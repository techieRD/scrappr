class Item < ActiveRecord::Base


# acts_as_gmappable

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

	belongs_to :category
	belongs_to :user

geocoded_by :street_address # can also be an IP address
after_validation :geocode # auto-fetch coordinates



end
