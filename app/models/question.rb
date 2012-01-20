class Question < ActiveRecord::Base
  has_many :vote_record
  
  def self.open
    Question.find(:all, :conditions => ["start <= ? and end >= ?", Time.now, Time.now])
  end

  def self.open_questions_for(voter_id)
    open = Question.find(:all,
                         :conditions => ["start <= ? and end >= ?",
                                         Time.now, Time.now])
    if (votes_for_user = VoteRecord.find_all_by_voter_id voter_id) != nil
      done = Set.new
      votes_for_user.each { |v| done << v.question_id }
      open.delete_if { |q| done.include? q.id }
    end
    open
  end

end
# == Schema Information
#
# Table name: questions
#
#  id         :integer         not null, primary key
#  body       :text
#  start      :datetime
#  end        :datetime
#  created_at :datetime
#  updated_at :datetime
#

