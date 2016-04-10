class CreateUserReplayRates < ActiveRecord::Migration
  def change
    create_table :user_replay_rates do |t|

      t.timestamps null: false
    end
  end
end
