class QuestionTag < ActiveRecord::Base



    belongs_to :tag, :class_name => 'Tag', :foreign_key => :TAG_id
    belongs_to :question, :class_name => 'Question', :foreign_key => :QUESTION_id
end
