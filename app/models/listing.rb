class Listing < ActiveRecord::Base
	if Rails.env.development?

has_attached_file :image, :styles => { :xlarge => "100%x300", :thumb => "100x100>" }, :default_url => "noimage.jpg"
     else

	has_attached_file :image, :styles => { :xlarge => "100%x300", :thumb => "100x100>" }, :default_url => "noimage.jpg",
	:storage => :dropbox,
    :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
    :path => ":style/:id_:filename"
end
  validates :name, :description, :price, :city, :state, :duration, :terms, presence: true
  validates :price, numericality: {greater_than: 0}
  validates_attachment_content_type :image, :content_type => %w(image/jpeg image/jpg image/png)

  belongs_to :user
  has_many :orders
  
end
