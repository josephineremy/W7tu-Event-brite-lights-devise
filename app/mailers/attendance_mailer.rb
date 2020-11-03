class AttendanceMailer < ApplicationMailer
  default from: 'jremy2@audencia.com'

  def inscription_event(attendance)
  @attendance = attendance
  @admin = attendance.event.admin
  @user= attendance.user
  @url = 'https://event-brite-light.herokuapp.com/'
  mail(to: @attendance.event.admin.email, subject: 'Une nouvelle inscription à votre event !')
  end
end
