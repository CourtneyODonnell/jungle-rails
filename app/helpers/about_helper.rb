module AboutHelper
  def about_page?
    controller_name == 'about'
  end
end