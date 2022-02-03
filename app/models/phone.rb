class Phone < ApplicationRecord
    validates :number, presence: true, uniqueness: true
    validates :label, presence: true
    validates :is_default, presence: true
    belongs_to :contact
end
