module UsersHelper

  def gravatar_for(user, size = "48x48")
    gravatar_url = "http://www.paper-glasses.com/api/twipi/#{user.name}/normal"
    image_tag(gravatar_url, :size => size)
  end
end