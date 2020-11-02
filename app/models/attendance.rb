class Attendance < ApplicationRecord
  belongs_to :user
  belongs_to :event

  after_create :inscription_event_send
  def inscription_event_send
		AttendanceMailer.inscription_event(self).deliver_now
  end
end
