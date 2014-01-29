module ApplicationHelper
  def admin_section?
    controller.class == AdminController || controller.class.parent == Admin
  end

  def nav_pages
    {
      'Home' => root_path,
      'Beer' => '/beer',
      'Who' => '/who'
    }
  end

  def admin_subnav_pages
    {
      'Beer' => admin_beers_path,
      'Beer Styles' => admin_beer_styles_path,
      'Beer Style Categories' => admin_beer_style_categories_path,
      'Posts' => admin_posts_path,
      'Users' => admin_users_path
    }
  end
end
