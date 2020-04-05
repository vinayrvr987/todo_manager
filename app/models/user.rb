class User < ActiveRecord::Base
  def to_pleasant_string1
    "#{id}. #{user_name} : #{user_email}  #{user_password}"
  end
end
