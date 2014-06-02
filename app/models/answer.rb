class Answer < ActiveRecord::Base

validates(:answer_1, { :presence => true})
validates(:answer_2, { :presence => true})
validates(:answer_3, { :presence => true})
validates(:answer_4, { :presence => true})
validates(:answer_5, { :presence => true})

belongs_to :questionnaire
has_many :respondents

end
