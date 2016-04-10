class Reply < ActiveRecord::Base



    belongs_to :user, :class_name => 'User', :foreign_key => :owner_id
    belongs_to :reply, :class_name => 'Reply', :foreign_key => :parent_reply_id
    has_many :user_reply_rates, :class_name => 'UserReplyRate'
end
