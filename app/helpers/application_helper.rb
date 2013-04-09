module ApplicationHelper

  # Check if object still exists in the database and display a link to it,
  # otherwise display a proper message about it.
  # This is used in activities that can refer to
  # objects which no longer exist, like removed posts.
  def link_to_trackable(object, object_type)
    if object
      link_to object_type.downcase, object
    else
      "a #{object_type.downcase} which does not exist anymore"
    end
  end

  def profile_photo(user, classname='comment-author-avatar left', type='square', size='40x40')

    if user.facebook_avatar.present?
      image_tag("http://graph.facebook.com/#{user.uid}/picture?type=#{type}", :alt => 'Awesome profile', :size => size, :class => "#{classname}")
    else
      gravatar_image_tag(user.email, 
        :alt => 'Github Default Gravatar', 
        :class => classname,
        :gravatar => { 
          :size => 40,
          :default => 'https://assets.github.com/images/gravatars/gravatar-140.png' 
          })
    end
  end
  
end
