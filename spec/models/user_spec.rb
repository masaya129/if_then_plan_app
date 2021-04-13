require 'rails_helper'

RSpec.describe 'ユーザー新規登録', type: :model do
  before do
    @user = FactoryBot.build(:user)
  end


  context "登録できるとき" do
    it "ニックネームとパスワードと確認用パスワードが存在すれば登録できる" do
    end

    it "パスワードと確認用パスワードが合致すれば登録できる" do
    end
  end

  context "登録できないとき" do
    it "ニックネームが空では登録できない" do
    end

    it "メールアドレスが空では登録できない" do
    end

    it "メールアドレスに@を含めないと登録できない" do
    end


    it "重複したメールアドレスが存在する場合登録できない" do
    end

    it "パスワードが空では登録できない" do
    end

    it "パスワードが5文字以下では登録できない" do
    end

    it "パスワードが存在しても確認用パスワードが空では登録できない" do
    end


    it "パスワードが半角英数字混合でなければ登録できない" do
    end

    it "パスワードが半角英数字混合でなければ登録できない" do
    end
  end

end