class Article < ApplicationRecord
  belongs_to :user
  mount_uploader :poster, PosterUploader
end
