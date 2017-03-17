class Pin < ApplicationRecord
    validates_presence_of :description
    belongs_to :user

    has_attached_file :pin_image 
    validates_attachment_content_type :pin_image, content_type: /\Aimage\/.*\z/

end
