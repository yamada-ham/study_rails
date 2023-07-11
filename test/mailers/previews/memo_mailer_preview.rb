# Preview all emails at http://localhost:3000/rails/mailers/memo_mailer
class MemoMailerPreview < ActionMailer::Preview
    def memo
        # memo = Memo.find_by(id: 2)
        memo = {'name'=>'yen','text'=>'dollar'}
        memo = OpenStruct.new(memo)
       
        MemoMailer.send_mail(memo)
      end
end
