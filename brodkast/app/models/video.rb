class Video < ActiveRecord::Base
has_many :comments, dependent: :destroy
belongs_to :user
end
