class UserReplyRate < ActiveRecord::Base



    belongs_to :user, :class_name => 'User', :foreign_key => :user_id
    belongs_to :reply, :class_name => 'Reply', :foreign_key => :reply_id
end
