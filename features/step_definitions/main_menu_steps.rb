# ----- Main Menu Steps ----- #

# ----- Given ----- #
Given(/^I land on home screen$/) do
  # resource_id find method
  find_element(id: "action_search")
  find_element(id: "action_add_favorites")
end

# ----- When ----- #
When(/^I press on menu icon$/) do
  # content_desc find method
  find_element(accessibility_id: "Open navigation drawer").click
end

When(/^I press on My conversions button$/) do
  puts('My conversions button pressed')
end

# ----- Then ----- #
Then(/^I should see left side menu$/) do
  # text find method
  text("Unit Converter")
end

Then(/^I land on My conversions screen\.$/) do
  puts('Landed on My conversions screen')
end