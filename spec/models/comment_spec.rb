require 'rails_helper'

RSpec.describe Comment, type: :model do
  before do
    @user = FactoryBot.create(:user)
    @share = FactoryBot.create(:share, user_id: @user.id)
    @comment = FactoryBot.build(:comment, user_id: @user.id, share_id: @share.id)
  end

  describe 'コメントの保存' do
    context 'コメントの保存ができる場合' do
      it 'コメントに関わる全ての項目が存在すれば保存できる' do
        expect(@comment).to be_valid
      end
    end

    context 'コメントのの保存ができない場合' do
      it 'commentが空では登録できない' do
        @comment.comment = ''
        @comment.valid?
        expect(@comment.errors.full_messages).to include 'コメントを入力してください'
      end
      it 'ユーザー情報がない場合は登録できない' do
        @comment.user = nil
        @comment.valid?
        expect(@comment.errors.full_messages).to include 'ユーザー情報を入力してください'
      end
      it '投稿の情報がない場合は登録できない' do
        @comment.share = nil
        @comment.valid?
        expect(@comment.errors.full_messages).to include '投稿情報を入力してください'
      end
    end
  end
end
