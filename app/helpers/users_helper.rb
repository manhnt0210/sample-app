module UsersHelper
  def gravatar_for user, size: Settings.size_of_gravatar
    gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end

  def load_relationship id
    current_user.active_relationships.find_by followed_id: id
  end
end
