module ChatRoomHelper
  def gravatar_for(user, at_list=false)
    md5_digest = Digest::MD5.hexdigest(user.email)
    uri = "https://www.gravatar.com/avatar/#{md5_digest}"
    if at_list
      return image_tag(uri, class: 'ui avatar image').html_safe
    end
    image_tag(uri).html_safe
  end
end
