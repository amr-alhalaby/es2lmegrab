class User < ActiveRecord::Base



    has_many :questions, :class_name => 'Question'
    has_many :replies, :class_name => 'Reply'
    has_many :user_question_rates, :class_name => 'UserQuestionRate'
    has_many :user_reply_rates, :class_name => 'UserReplyRate'
end
