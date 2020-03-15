class Post < ApplicationRecord
  enum status: {draft: 0, published: 1}

  belongs_to :user

  def toggle_status!
    if draft?
      published!
    else
      draft!
    end
  end
  
  mount_uploader :title_image, ImageUploader
end
