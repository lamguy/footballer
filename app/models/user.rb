class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook, :twitter]

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :facebook_avatar, :facebook_link, :provider, :uid, :firstname, :lastname, :phone, :address, :city, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body

  def self.find_for_facebook_oauth(auth, signed_in_resource=nil)
	  user = User.where(:provider => auth.provider, :uid => auth.uid).first
	  unless user
	    user = User.create(  firstname:auth.info.first_name,
	    					 lastname:auth.info.last_name,
	    					 facebook_avatar:auth.info.image,
	    					 facebook_link:auth.extra.raw_info.link,
	                         provider:auth.provider,
	                         uid:auth.uid,
	                         email:auth.info.email,
	                         password:Devise.friendly_token[0,20]
	                         )
	    user.send_reset_password_instructions
	  end
	  user
  end

  def self.find_for_twitter_oauth(auth, signed_in_resource=nil)
  	  user = User.where(:provider => auth.provider, :uid => auth.uid).first

  	  unless user
  	  	fullname = auth.info.name.split(' ')
  	  	firstname, lastname = fullname[0], fullname[1]
  	  	user = User.create(  firstname:firstname,
	    					 lastname:lastname,
	    					 facebook_avatar:auth.info.image,
	    					 facebook_link:auth.extra.raw_info.link,
	                         provider:auth.provider,
	                         uid:auth.uid,
	                         password:Devise.friendly_token[0,20]
	                         )
	    user.send_reset_password_instructions
  	  end
  	  user
  end

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end

end
