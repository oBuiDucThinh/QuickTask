class Task < ApplicationRecord
  belongs_to :account
  has_many :deadlines, dependent: :destroy
end
