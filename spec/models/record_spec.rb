require 'rails_helper'

RSpec.describe 'タスクの記録機能', type: :model do
  before do
    user = FactoryBot.create(:user)
    task = FactoryBot.create(:task, user_id: user.id)
    @record = FactoryBot.build(:record, task_id: task.id, user_id: user.id)
  end

  context "登録できるとき" do
    it "記録の日付と記録があれば登録できる" do
      expect(@record).to be_valid
    end

    it "メモがなくても投稿できる" do
      @record.memo = ''
      expect(@record).to be_valid
    end
  end

  context "登録できないとき" do
    it "記録の日付が空だと登録できない" do
      @record.start_time = ''
      @record.valid?
      expect(@record.errors.full_messages).to including("記録の日付を入力してください")
    end
    
    it "記録が空だと登録できない" do
      @record.count = ''
      @record.valid?
      expect(@record.errors.full_messages).to including("記録を入力してください")
    end
    
    it "記録が半角数字でなければ登録できない" do
      @record.count = '２０'
      @record.valid?
      expect(@record.errors.full_messages).to including("記録は半角数字で入力してください")
    end

    it "ユーザーが紐付いてなければ登録できない" do
      @record.user = nil
      @record.valid?
      expect(@record.errors.full_messages).to including("Userを入力してください")
    end
    
    it "タスクが紐付いてなければ登録できない" do
      @record.task = nil
      @record.valid?
      expect(@record.errors.full_messages).to including("Taskを入力してください")
    end
  end


end

