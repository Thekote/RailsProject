# frozen_string_literal: true

class Contact < ApplicationRecord
  validates :name, presence: true, uniqueness: { case_sensitive: false, scope: :user_id }
  belongs_to :user
  has_many :phones
end
