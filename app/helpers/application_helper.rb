module ApplicationHelper

  def user_image_tag
    if current_user
      if current_user.photo
        cl_image_tag current_user.photo, height: 300, width: 400, crop: :fill, class: "avatar"
      elsif current_user.facebook_picture_url
        image_tag current_use.facebook_picture_url, class: "avatar"
      end
    else
      image_tag "https://www.materialist.com/static/new_store/images/avatar_placeholder.svg", class: "avatar"
    end
  end
end
