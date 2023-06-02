require 'rails_helper'

RSpec.describe Answer, type: :model do
  before do
    @user = FactoryBot.create(:user)
    @question = FactoryBot.create(:question, user_id: @user.id)
    @answer = FactoryBot.build(:answer, user_id: @user.id, question_id: @question.id)
  end

  describe '回答の保存' do
    context '回答の保存ができる場合' do
      it '回答に関わる全ての項目が存在すれば保存できる' do
        expect(@answer).to be_valid
      end
    end

    context '回答の保存ができない場合' do
      it 'answerが空では登録できない' do
        @answer.answer = ''
        @answer.valid?
        expect(@answer.errors.full_messages).to include "回答を入力してください"
      end
      it 'ユーザー情報がない場合は登録できない' do
        @answer.user = nil
        @answer.valid?
        expect(@answer.errors.full_messages).to include 'ユーザー情報を入力してください'
      end
      it '投稿の情報がない場合は登録できない' do
        @answer.question = nil
        @answer.valid?
        expect(@answer.errors.full_messages).to include '質問情報を入力してください'
      end
    end
  end
end
