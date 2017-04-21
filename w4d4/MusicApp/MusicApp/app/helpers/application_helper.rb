module ApplicationHelper

  def logout_button
    button_to "Log Out", sessions_url, method: :delete
  end

  def login_button
    button_to "Log In", new_sessions_url, method: :get
    # html = "<form action=\"#{new_sessions_url}\" method=\"GET\">"
    # html += "<input type=\"submit\" value=\"Log In\">"
    # html += "#{other}"
    # html+= "</form>"
    # html.html_safe
  end

  def auth_token
    "<input type=\"hidden\" name=\"authenticity_token\" value=\"#{form_authenticity_token}\">".html_safe
  end

end
