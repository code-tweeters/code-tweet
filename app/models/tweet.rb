class Tweet < ActiveRecord::Base

  def find_user_byID
    User.find_by_id self.user_id 
  end
  
end
