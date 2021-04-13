require 'rails_helper'

RSpec.describe 'ユーザー新規登録', type: :model do
  before do
    @user = FactoryBot.build(:user)
  end


  context "登録できるとき" do
    it "ニックネームとパスワードと確認用パスワードが存在すれば登録できる" do
      expect(@user).to be_valid
    end

    it "パスワードと確認用パスワードが合致すれば登録できる" do
      expect(@user.password).to eq(@user.password_confirmation)
    end
  end

  context "登録できないとき" do
    it "ニックネームが空では登録できない" do
      @user.nickname = ''
      @user.valid?
      expect(@user.errors.full_messages).to including("ニックネームを入力してください")
    end

    it "メールアドレスが空では登録できない" do
      @user.email = ''
      @user.valid?
      expect(@user.errors.full_messages).to including("Eメールを入力してください")
    end
    
    it "メールアドレスに@を含めないと登録できない" do
      @user.email = 'aaaaa'
      @user.valid?
      expect(@user.errors.full_messages).to including("Eメールは不正な値です")
    end
    
    
    it "重複したメールアドレスが存在する場合登録できない" do
      @user.save
      another_user = FactoryBot.build(:user)
      another_user.email = @user.email
      another_user.valid?
      expect(another_user.errors.full_messages).to including("Eメールはすでに存在します")
    end
    
    it "パスワードが空では登録できない" do
      @user.password = ''
      @user.valid?
      expect(@user.errors.full_messages).to including("パスワードを入力してください")
    end
    
    it "パスワードが5文字以下では登録できない" do
      @user.password = '00000'
      @user.password_confirmation = '00000'
      @user.valid?
      expect(@user.errors.full_messages).to including("パスワードは6文字以上で入力してください")
    end
    
    it "パスワードが存在しても確認用パスワードが空では登録できない" do
      @user.password_confirmation = ''
      @user.valid?
      expect(@user.errors.full_messages).to including("パスワード（確認用）とパスワードの入力が一致しません")
    end
    
    
    it "パスワードが半角英数字混合でなければ登録できない(半角英字の場合)" do
      @user.password = 'aaaaaあ'
      @user.password_confirmation = 'aaaaaあ'
      @user.valid?
      expect(@user.errors.full_messages).to including("パスワードは不正な値です")
    end

    it "パスワードが半角英数字混合でなければ登録できない" do
      @user.password = '111111'
      @user.password_confirmation = '111111'
      @user.valid?
      expect(@user.errors.full_messages).to including("パスワードは不正な値です")
    end
  end

end