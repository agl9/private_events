class Event < ApplicationRecord
  scope :past, -> { where('date < ?',Date.today).order(date: :desc) }
  scope :upcoming, -> { where('date >= ?',Date.today).order(:date) }
  belongs_to :creator, class_name: 'User'
  has_many :rsvps, foreign_key: :attended_event_id
  has_many :attendees, through: :rsvps
end
