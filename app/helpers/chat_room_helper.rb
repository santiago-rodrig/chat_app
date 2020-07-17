module ChatRoomHelper
  def gravatar_for(user, html_options={})
    md5_digest = Digest::MD5.hexdigest(user.email)
    uri = "https://www.gravatar.com/avatar/#{md5_digest}"
    image_tag(uri, html_options).html_safe
  end
end
