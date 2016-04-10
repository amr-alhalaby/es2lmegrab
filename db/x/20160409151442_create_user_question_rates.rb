class CreateUserQuestionRates < ActiveRecord::Migration
  def change
    create_table :user_question_rates do |t|

      t.timestamps null: false
    end
  end
end
