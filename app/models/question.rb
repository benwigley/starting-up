class Question < ApplicationRecord
  validates_presence_of :body, :email
end
