class VoteController < ApplicationController
  def index
  end
  
  def list
    @questions = Question.all
    @uname = params[:username] 
    pword  = params[:pword]
    voter_entry = @uname && Voter.find_by_username(@uname)
    if voter_entry == nil || voter_entry.password != pword
      # should post an error here
      render :action => "vote/index"  # redisplay login form
    else
      @questions = Question.open_questions_for(voter_entry.id)
    end
  end

  def record_votes
    uname = params[:username]
    if (voter = Voter.find_by_username(uname)) == nil
      flash[:login_error] = "User id #{uname} no longer valid - please log back in."
      render :action => "vote/index"
    else
      VoteRecord.record_votes(params[:question], voter)
    end
  end

end
