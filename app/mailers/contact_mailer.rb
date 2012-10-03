class ContactMailer < ActionMailer::Base
  include ::SendGrid

  default from: "noreply@sendgrid.com"

  def contact_email(params)

    sendgrid_category params[:category]

    mail to: params[:to], subject: params[:subject] do |format|
      format.html { render :text => params[:body] }
      format.text { render :text => params[:body] }
    end
  end
end
