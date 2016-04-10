class Question < ActiveRecord::Base



    has_many :question_tags, :class_name => 'QuestionTag'
    belongs_to :user, :class_name => 'User', :foreign_key => :owner_id
    has_many :user_question_rates, :class_name => 'UserQuestionRate'
end
