class EstimateMailer < ActionMailer::Base
  default from: "movies@ri-plus.jp"
  def received_email(estimate)
    @estimate = estimate
    mail to: "movies@ri-plus.jp"
    mail(subject: 'ムービーズにお問い合わせ頂きありがとうございます。') do |format|
      format.text
    end
  end

  def send_email(estimate)
    @estimate = estimate
    mail to: estimate.email
    mail(subject: 'ムービーズにお問い合わせ頂きありがとうございます。') do |format|
      format.text
    end
  end

  def client_email(estimate)
    @estimate = estimate
    mail bcc: Company.all.map{|company| company.mail}
    mail(subject: '自販機お見積もり依頼') do |format|
      format.text
    end
  end

end
