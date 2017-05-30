class Assignment < ApplicationRecord
  belongs_to :course

  validates :title, length: { minimum: 3,  maximum: 30 }, presence: true
  validates :statement, presence: true
  validate :valid_dates

  def valid_dates
    if start_date >= end_date
      self.errors.add :start_time, ' has to be after end time'
    end
  end

  def to_s
    return title
  end
end
