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
end
