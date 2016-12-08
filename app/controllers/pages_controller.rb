class PagesController < ApplicationController

  before_filter :set_question_count


  def splash
    if params[:body] || params[:email]

      if params[:body].blank?
        @success_msg = 'Please enter a question'
        return render
      end
      if params[:email].blank?
        @success_msg = "Please enter your email. We'll let you know if your question reaches the top 10."
        return render
      end

      if Question.find_by_body(params[:body])
        @success_msg = "That question has already been asked :-)"
        return render
      end

      @question = Question.new(params.permit(:body, :email))
      if @question.save
        @success_msg = "Thanks! We'll let you know when the top 10 questions have been chosen."
        params.delete :body
        params.delete :email
        set_question_count # We've just added a question so refresh the count
      else
        @success_msg = @question.errors.full_messages[0]
      end
    end
  end


  def mission
  end


  private


  def set_question_count
    @questions_count = [Question.count, 100].min
  end

end
