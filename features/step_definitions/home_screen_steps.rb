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