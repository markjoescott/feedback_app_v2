class Answer < ActiveRecord::Base

belongs_to :questionnaire
has_many :respondents

end
