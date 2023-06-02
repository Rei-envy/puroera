require 'rails_helper'

RSpec.describe Question, type: :model do
  before do
    @user = FactoryBot.create(:user)
    @question = FactoryBot.build(:question, user_id: @user.id)
  end

  describe '質問投稿の保存' do
    context '質問の投稿の保存ができる場合' do
      it '質問の投稿に関わる全ての項目が存在すれば保存できる' do
        expect(@question).to be_valid
      end
      it 'actionが空でも保存できる' do
        @question.action = ''
        expect(@question).to be_valid
      end
      it 'thoughtが空でも保存できる' do
        @question.thought = ''
        expect(@question).to be_valid
      end
    end

    context '質問の投稿の保存ができない場合' do
      it 'titleが空では登録できない' do
        @question.title = ''
        @question.valid?
        expect(@question.errors.full_messages).to include "タイトルを入力してください"
      end
      it 'category_idが1では登録できない' do
        @question.category_id = 1
        @question.valid?
        expect(@question.errors.full_messages).to include 'カテゴリーは1以外の値にしてください'
      end
      it 'hypothesisが空では登録できない' do
        @question.hypothesis = ''
        @question.valid?
        expect(@question.errors.full_messages).to include "エラーが起きた状況と仮説を入力してください"
      end
      it 'ユーザー情報がない場合は登録できない' do
        @question.user = nil
        @question.valid?
        expect(@question.errors.full_messages).to include 'ユーザー情報を入力してください'
      end
    end
  end
end
