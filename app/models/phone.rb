class Phone < ApplicationRecord
    validates :number, presence: true, uniqueness: true
    validates :label, presence: true
    validates :is_default, inclusion: { in: [ true, false ] }
    belongs_to :contact
end
