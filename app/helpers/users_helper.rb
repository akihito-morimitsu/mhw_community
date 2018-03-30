module UsersHelper

  def gravatar_for(user, size = "48x48", css = "image_circle")
    gravatar_url = user.icon
    image_tag(gravatar_url, :size => size, :class => css)
  end
end