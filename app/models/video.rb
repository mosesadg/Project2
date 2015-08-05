class Video < ActiveRecord::Base
has_many :comments, dependent: :destroy
belongs_to :user

def self.search(search)
  where("subject LIKE ?", "%#{search}%")
  # where("content LIKE ?", "%#{search}%")
end

end
