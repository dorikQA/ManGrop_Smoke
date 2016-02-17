class RiskPerfomancePage
  def profile_icon
    $driver.find_element(:xpath, "//span[@id = 'UserProfileButton']")
  end
  def reset_button button
    $driver.find_element(:xpath, "//button[@type = 'button' and text() = '#{button}']")
  end
 def plus_workspace_button
     $driver.find_element(:xpath,"//a[@class = 'nav-tab' and text() = '+']")
 end
  def workspace_overlay create_newspace_overlay
    $driver.find_element(:xpath, "//span[@class = 'ui-dialog-title' and text() = '#{create_newspace_overlay}']")
  end

  def createspace_buttons button_name
   button = $driver.find_element(:xpath,"//span[@class = 'ui-button-text' and text() = '#{button_name}']")
  end

  def create_space_button
    $driver.find_element(:xpath,"//span[@class = 'ui-button-text' and text() = 'Create Space']")
  end
  def work_space_tab_name workspace_name
    workspaces = $driver.find_elements(:xpath,"//a[@class = 'nav-tab' and contains(text(), '#{workspace_name}')]")
    if workspaces.count > 0
      puts "Passed'#{workspace_name}' exists"
    else
      raise "BUG! '#{workspace_name}' is not exist"
    end
  end
  def active_work_space_tab workspace_name
  wsactives = $driver.find_elements(:xpath, "//li[@class = 'active']/a[contains(@title,'#{workspace_name}')]")
  if wsactives.count > 0
    puts "TC passed. '#{workspace_name}' was created and it's active"

  else raise "TC Failed. WS was not created or it's not active"
  end
  end
end
