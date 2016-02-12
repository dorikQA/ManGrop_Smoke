Then /^Click "Profile" icon$/ do
  risk_perfomance_page.profile_icon.click
end
Then /^Tap "([^"]*)" button$/ do |button|
  risk_perfomance_page.reset_button(button).click

end