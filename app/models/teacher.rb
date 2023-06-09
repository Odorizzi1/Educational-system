class Teacher < ApplicationRecord
    belongs_to :college
    has_many :classrooms
  
    validates :name, presence: true
    validates :age, numericality: { greater_than_or_equal_to: 18 }
  
    attribute :materia, :string
    attribute :name, :string
    attribute :age, :integer
  end