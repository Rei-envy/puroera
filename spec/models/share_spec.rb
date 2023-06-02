require 'rails_helper'

RSpec.describe Share, type: :model do
  before do
    @user = FactoryBot.create(:user)
    @share = FactoryBot.build(:share, user_id: @user.id)
  end

  describe '投稿の保存' do
    context '投稿の保存ができる場合' do
      it '投稿に関わる全ての項目が存在すれば保存できる' do
        expect(@share).to be_valid
      end
      it 'thoughtが空でも保存できる' do
        @share.thought = ''
        expect(@share).to be_valid
      end
    end

    context '投稿の保存ができない場合' do
      it 'titleが空では登録できない' do
        @share.title = ''
        @share.valid?
        expect(@share.errors.full_messages).to include "タイトルを入力してください"
      end
      it 'category_idが1では登録できない' do
        @share.category_id = 1
        @share.valid?
        expect(@share.errors.full_messages).to include 'カテゴリーは1以外の値にしてください'
      end
      it 'guessが空では登録できない' do
        @share.guess = ''
        @share.valid?
        expect(@share.errors.full_messages).to include "エラーが起きた状況と仮説を入力してください"
      end
      it 'solutionが空では登録できない' do
        @share.solution = ''
        @share.valid?
        expect(@share.errors.full_messages).to include "エラーの解決方法を入力してください"
      end
      it 'ユーザー情報がない場合は登録できない' do
        @share.user = nil
        @share.valid?
        expect(@share.errors.full_messages).to include 'ユーザー情報を入力してください'
      end
    end
  end
end
