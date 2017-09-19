class Item < ApplicationRecord
  belongs_to :list, optional: true
  delegate :user, to: :list

  validates :name, presence: true, allow_blank: false

end
