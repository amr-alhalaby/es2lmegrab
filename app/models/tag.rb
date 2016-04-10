class Tag < ActiveRecord::Base



    has_many :question_tags, :class_name => 'QuestionTag'
end
