class Post < ApplicationRecord
    has_many :comments, dependent: :destroy
    # @post.comments
    validates :title, presence: true, length: { minimum: 3, message: 'too short to post'}
    validates :body, presence: true
    
end
