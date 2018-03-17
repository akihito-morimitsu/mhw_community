module UsersHelper

  def gravatar_for(user, size = "48x48")
    gravatar_url = user.icon
    image_tag(gravatar_url, :size => size)
  end
end