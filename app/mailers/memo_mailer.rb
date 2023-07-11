class MemoMailer < ApplicationMailer
    def send_mail(memo)
        @memo = memo
        mail(
          from: 'system@example.com',
          to:   'manager@example.com',
          subject: 'お問い合わせ通知'
        )
    end
end
