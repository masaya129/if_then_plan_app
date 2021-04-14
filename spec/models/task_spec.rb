require 'rails_helper'

RSpec.describe '習慣化タスク登録機能', type: :model do
  before do
    user = FactoryBot.create(:user)
    @task = FactoryBot.build(:task, user_id: user.id)
  end

  context "登録できるとき" do
    it "タスクとタイトルと単位と目標があれば登録できる" do
      expect(@task).to be_valid
    end
  end


  context "登録できないとき" do
    it "ifタスクが空だと登録できない" do
      @task.if_task = ''
      @task.valid?
      expect(@task.errors.full_messages).to including("ifタスクを入力してください")
    end
    
    it "thenタスクが空だと登録できない" do
      @task.then_task = ''
      @task.valid?
      expect(@task.errors.full_messages).to including("thenタスクを入力してください")
    end
    
    it "タイトルが空だと登録できない" do
      @task.title = ''
      @task.valid?
      expect(@task.errors.full_messages).to including("習慣化タスクのタイトルを入力してください")
    end
    
    it "単位(unit)が空だと登録できない" do
      @task.unit = ''
      @task.valid?
      expect(@task.errors.full_messages).to including("習慣化タスクの記録単位を入力してください")
    end
    
    it "目標が空だと登録できない" do
      @task.month_goal = ''
      @task.valid?
      expect(@task.errors.full_messages).to including("習慣化タスクの目標記録数値を入力してください")
    end
    
    it "目標が半角数字でなければ登録できない" do
      @task.month_goal = '３０'
      @task.valid?
      expect(@task.errors.full_messages).to including("習慣化タスクの目標記録数値習慣化タスクの目標記録数値は半角数字で入力してください")
    end

     it "ユーザーが紐付いてなければ登録できない" do
      @task.user = nil
      @task.valid?
      expect(@task.errors.full_messages).to including("Userを入力してください")
    end
  end
end
