class MemoController < ApplicationController
  def index
    TestJob.perform_later
    # @memos = Memo.all
    @memos = Memo.includes(:user).where("id > ?", 0)
    debug_helper = DebugHelper::Debug.new
    debug_helper.print_r(@data)
    render action: "index"
  end

  def show
    param_value = params[:re_hello]
    @memo = Memo.find_by(id: 1)
    memo = Memo.find_by(id: 1)
    MemoMailer.send_mail(memo).deliver_now

    user = @memo.user

    Rails.logger.debug("\nデバッグ show")
    Rails.logger.debug(param_value)
    Rails.logger.debug(user.inspect)
    Rails.logger.debug("\n")
    render action: "show"
  end

  def create
    @memo = Memo.new
    @memo.user_id = 1
    # @memo.name = "Sample Memo"
    # @memo.text = "This is a sample memo."
    if @memo.save
      Rails.logger.debug("成功");
    else
      @memo.errors.full_messages.each do |message|
        puts message
        Rails.logger.debug("失敗");
        Rails.logger.debug(message)
      end
    end
    render action: "create"
  end

  def edit
    param_value = params[:hello]
    # レコードを取得
    memo = Memo.find_by(id: 1)

    # 属性を更新
    memo.name = "Updated Title"
    memo.text = "Updated Content"

    # 保存
    memo.save
    render action: "edit"
  end

  def update
    param_value = params[:hello]

    Rails.logger.debug("\nデバッグ update")
    Rails.logger.debug(param_value)
    Rails.logger.debug("\n")

    # render action: "update"
    # redirect_to memo_show_path
    redirect_to memo_show_path(re_hello: param_value)
  end

  def destroy
    # レコードを取得
    memo = Memo.find_by(id: 1)

    # レコードを削除
    memo.destroy

    render action: "index"
  end
end
