class PostSerializer < ApplicationSerializer
  attributes :id, :title, :body

  has_many :comments
end
