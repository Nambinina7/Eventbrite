class AttendanceMailer < ApplicationMailer
	 default from: 'no-reply@monsite.fr'

  def confirmation_email(attendance)
   	@attendance = attendance
    @url = 'http://monsite.fr/login'
    mail(to: @attendance.event.admin.email, subject: 'Votre participation est bien prise en compte !')
end
end
