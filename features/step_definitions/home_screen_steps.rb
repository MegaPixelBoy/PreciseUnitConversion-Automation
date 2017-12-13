# ----- Home Screen Steps ----- #

# ----- Given ----- #

# ----- When ----- #

When(/^I press on Clear button$/) do
  puts('Clear Button pressed')
end

When(/^I type "([^"]*)" to target text field$/) do |target|
  puts("Target is #{target}")
end

# ----- Then ----- #
#
Then(/^Left unit picker value should be "([^"]*)"$/) do |unit|
  puts("Left unit picker value is #{unit}")
end

Then(/^Right unit picker value should be "([^"]*)"$/) do |unit|
  puts("Right unit picker value is #{unit}")
end

Then(/^Show All button should be (enabled|disabled)$/) do |state|
  if state == 'enabled'
    puts('Show All button enabled')
  elsif state == 'disabled'
    puts('Show All button disabled')
  end
end

Then(/^I should see result as "([^"]*)"$/) do |result|
  puts("Result is #{result}")
end

Then(/^I press on favorites icon$/) do
  find_element(id: "action_add_favorites").click
end

Then(/^I press on Favorite conversions$/) do
  text("Favorite conversions").click
end

# ----- And ----- #

And(/^I verify "([^"]*)" added to Favorite conversions list$/) do |unit_type|
  text(unit_type)
end