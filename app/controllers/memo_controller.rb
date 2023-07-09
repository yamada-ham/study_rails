class MemoController < ApplicationController
  def index
    @memos = Memo.all
    Rails.logger.info(@memos)
    @memo = "memo_data";
    render action: "index"
  end

  def create
    memo = Memo.new
    memo.name = "Sample Memo"
    memo.text = "This is a sample memo."
    memo.save
    render action: "index"
  end

  def edit
    # レコードを取得
    memo = Memo.find_by(id: 1)

    # 属性を更新
    memo.name = "Updated Title"
    memo.text = "Updated Content"

    # 保存
    memo.save
    render action: "index"
  end

  def destroy
    # レコードを取得
    memo = Memo.find_by(id: 1)

    # レコードを削除
    memo.destroy()

    render action: "index"
  end
end
