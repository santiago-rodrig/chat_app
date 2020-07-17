module UsersHelper
  def render_delete_button(user)
    delete_button = link_to(
      'Delete account',
      @user,
      method: :delete,
      data: { confirm: 'Are you sure?' },
      class: 'negative ui button'
    )

    if current_user == user
      return delete_button.html_safe
    end

    nil
  end
end
