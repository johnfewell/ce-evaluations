class Evaluation < ApplicationRecord
  has_many :evaluation_questions
  has_many :questions, :through => :evaluation_questions
  belongs_to :course, optional: true
  has_many :finished_evaluations
  accepts_nested_attributes_for :questions, reject_if: lambda {|attributes| attributes['content'].blank?}

  validates :name, presence: true, length: { minimum: 5 }

  scope :unassigned, -> {where(:course_id => nil)}
  scope :assigned, -> {where.not(:course_id => nil)}
  
  amoeba do
    enable
  end

  def next
    self.class.where("id > ?", id).first
  end

  def previous
    self.class.where("id < ?", id).last
  end

  def copy!
    new_copy = self.amoeba_dup
    new_copy.name = "COPY - " + new_copy.name
    new_copy.course = nil
    new_copy.save
    new_copy
  end

end
