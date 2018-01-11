class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end



#need to make the html page for show, change that to the edit page. then take the login part of navigation,
# and make that /admin_login in the web browser by making a whole new page and route but not adding a path
# to it in the home page, just when i know to type it in!
