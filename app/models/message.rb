class Message < ActiveRecord::Base
  belongs_to :user
  validates :content, presence: true

  def user_name
    if user
      user.name
    else
      "Anonymous"
    end
  end

  def user_id
    if user
      user.id
    else
      "anonymous"
    end
  end
end
