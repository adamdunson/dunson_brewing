module ApplicationHelper
  def admin_section?
    controller.class == AdminController || controller.class.parent == Admin
  end

  def nav_pages
    nav = {
      'Home' => root_path,
      'Beer' => '/beer',
      'Who' => '/who'
    }
    nav['Admin'] = admin_path if user_signed_in?
    nav
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

  def markdown(content)
    @markdown ||= Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, space_after_headers: true, fenced_code_blocks: true)
    @markdown.render(content)
  end
end
