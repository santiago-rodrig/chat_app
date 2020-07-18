module SessionsHelper
  def render_chatroom_link
    if current_user
      c_action = controller.action_name
      c_name = controller.controller_name
      if [c_name, c_action] == ['chat_room', 'index']
        return %(
          #{link_to 'Chat room', root_path, class: 'active item'}
        ).html_safe
      else
        return %(
          #{link_to 'Chat room', root_path, class: 'item'}
        ).html_safe
      end
    end

    nil
  end

  def render_session_links
    login_link = link_to 'Login', login_path, class: 'ui button'
    signup_link = link_to 'Sign up', signup_path, class: 'ui button'
    logout_link = link_to(
      'Logout',
      login_path,
      method: :delete,
      class: 'ui primary button'
    )
    unless current_user
      return %(
        <div class="item">
          #{login_link}
        </div>
        <div class="item">
          #{signup_link}
        </div>
      ).html_safe
    end

    %(
      #{render_account_dropdown}
      <div class="item">
        #{logout_link}
      </div>
    ).html_safe
  end

  private

  def render_account_dropdown
    profile_link = link_to 'Profile', current_user, class: 'item'
    edit_link = link_to 'Edit', edit_user_path(current_user), class: 'item'
    %(
      <div class="ui dropdown item">
        Account <i class="dropdown icon"></i>
        <div class="menu">
          #{profile_link}
          #{edit_link}
        </div>
      </div>
    )
  end
end

