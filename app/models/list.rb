class List < ApplicationRecord
  belongs_to :user, optional: true
  has_many :items

  validates :name, presence: true, allow_blank: false

end
