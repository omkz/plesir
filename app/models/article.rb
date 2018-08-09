class Article < ApplicationRecord
  belongs_to :user
  mount_uploader :poster, PosterUploader

  def self.search(search)
    where("title LIKE ?", "%#{search}%") 
    where("description LIKE ?", "%#{search}%")
    where("body LIKE ?", "%#{search}%")
  end
end
