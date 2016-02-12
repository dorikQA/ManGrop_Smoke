class RiskPerfomancePage
  def profile_icon
    $driver.find_element(:xpath, "//span[@id = 'UserProfileButton']")
  end
  def reset_button button
    $driver.find_element(:xpath, "//button[@type = 'button' and text() = '#{button}']")
  end


end