module SessionsHelper
  def render_chatroom_link
    if current_user
      return %(
        #{link_to 'Chat room', root_path, class: 'item'}
      )
    end

    nil
  end

  def render_session_links
    login_link = link_to 'Login', login_path, class: 'ui button'
    signup_link = link_to 'Sign up', '#', class: 'ui button'
    logout_link = link_to(
      'Logout',
      '#',
      method: :delete,
      class: 'ui primary button'
    )
    unless current_user
      return %(
        <div class="right menu">
          <div class="item">
            #{login_link}
          </div>
          <div class="item">
            #{signup_link}
          </div>
        </div>
      ).html_safe
    end

    %(
      <div class="right menu">
        <div class="item">
          #{render_account_dropdown}
          #{logout_link}
        </div>
      </div>
    ).html_safe
  end

  private

  def render_account_dropdown
    profile_link = link_to 'Profile', '#', clas: 'item'
    edit_link = link_to 'Edit', '#', class: 'item'
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

