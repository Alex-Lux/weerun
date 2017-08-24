module ApplicationHelper

  def user_image_tag
    if current_user
      if current_user.photo?
        cl_image_tag current_user.photo, height: 300, width: 400, crop: :fill, class: "avatar dropdown-toggle", id: "navbar-wagon-menu", "data-toggle" => "dropdown"
      #elsif current_user.facebook_picture_url.present?
       # image_tag current_use.facebook_picture_url, class: "avatar"
      else
        image_tag "profile.jpg", class: "avatar dropdown-toggle", id: "navbar-wagon-menu", "data-toggle" => "dropdown"
      end
    else
      image_tag "profile.jpg", class: "avatar dropdown-toggle", id: "navbar-wagon-menu", "data-toggle" => "dropdown"
    end
  end
end
