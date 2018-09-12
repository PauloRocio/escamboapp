class Backoffice::SendMailController < ApplicationController
  def edit
    @admin = Admin.find(params[:id])
  end

  def create
    begin
      AdminMailer.send_message(current_admin, params[:'recipient-text'], params[:'subject-text'], params[:'message-text']).deliver_now
      @notify_message = "Email enviado com sucesso!"
      @notify_flag = "success"
    rescue
      @notify_message = "Erro ao enviar o Email!"
      @notify_flag = "error"
    end
  end
end
