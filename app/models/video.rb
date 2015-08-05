class Video < ActiveRecord::Base
  acts_as_votable
has_many :comments, dependent: :destroy
belongs_to :user

def self.search(search)
  where("LOWER(subject) LIKE ?", "%#{search.downcase}%")
  # where("content LIKE ?", "%#{search}%")
end

end
