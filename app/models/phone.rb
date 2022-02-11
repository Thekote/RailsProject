# frozen_string_literal: true

class Phone < ApplicationRecord
  validates :number, presence: true, uniqueness: true
  validates :label, presence: true
  validates :is_default, inclusion: { in: [true, false] }
  belongs_to :contact
  after_save :update_default_phone

  def update_default_phone
    Phone.where(contact:).where.not(id:).update_all(is_default: false)
  end
end
