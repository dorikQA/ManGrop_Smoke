Then /^Click "Profile" icon$/ do
  risk_perfomance_page.profile_icon.click
end
Then (/^Tap "([^"]*)" button$/) do |button|
  risk_perfomance_page.reset_button(button).click

end
Then /^Tap on "plus" button$/ do
  risk_perfomance_page.plus_workspace_button.click
end
Then /^Verify "([^"]*)" overlay opens$/ do |create_newspace_overlay|
  risk_perfomance_page.workspace_overlay create_newspace_overlay
  if  risk_perfomance_page.workspace_overlay(create_newspace_overlay).displayed?
  puts "'#{create_newspace_overlay}' was opened."
  else
    fail "BUG! '#{create_newspace_overlay}' was not opened"
  end
end

Then (/^Tap "([^"]*)" button on the "Create a new space" overlay$/) do |button_name|
  risk_perfomance_page.createspace_buttons(button_name).click
end

Then /^"([^"]*)" overlay should be closed$/ do |create_newspace_overlay|
  if risk_perfomance_page.workspace_overlay(create_newspace_overlay).displayed?
      fail "BUG! '#{create_newspace_overlay}' still displayed"
   end
end
Then /^Tap on "Create Space" button$/ do
  risk_perfomance_page.create_space_button.click
end
Then /^"([^"]*)" tab should exists$/ do |workspace_name|
  risk_perfomance_page.work_space_tab_name workspace_name

end
Then /^Just created "([^"]*)" tab should be active$/ do |workspace_name|
  risk_perfomance_page.active_work_space_tab workspace_name
end