class Classroom < ApplicationRecord
    belongs_to :college
    belongs_to :teacher
  
    validates :room_number, presence: true
    validates :student_count, numericality: { greater_than_or_equal_to: 0 }
    validates :period, presence: true
  
    attribute :room_number, :string
    attribute :student_count, :integer
    attribute :period, :string
  end