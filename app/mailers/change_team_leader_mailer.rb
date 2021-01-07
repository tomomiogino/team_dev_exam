class ChangeTeamLeaderMailer < ApplicationMailer
  def change_team_leader_mail(team)
    @team = team
    mail to: @team.owner.email, subject: "チームリーダー変更通知メール"
  end
end
