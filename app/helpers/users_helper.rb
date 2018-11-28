module UsersHelper

  def gravatar_for(user, size="50x50")
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: user.name, class:"gravatar rounded", size: size )
  end

end
