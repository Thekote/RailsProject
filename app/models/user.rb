# frozen_string_literal: true

class User < ApplicationRecord
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  has_many :contacts
  has_many :phones, through: :contacts
end
