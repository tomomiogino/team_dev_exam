class DestroyAgendaMailer < ApplicationMailer
  def destroy_agenda_mail(agenda)
    @agenda = agenda
    mail to: @agenda.team.members.pluck(:email), subject: "アジェンダ削除通知メール"
  end
end
