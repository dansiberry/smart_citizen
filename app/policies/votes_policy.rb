class VotePolicy < ApplicationPolicy
  def upvote
    true
  end

  def downvote
    true
  end
end
