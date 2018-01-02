# ----- Home Screen Steps ----- #

# ----- Given ----- #

# ----- When ----- #

When(/^I press on Clear button$/) do
  puts('Clear Button pressed')
end

When(/^I type "([^"]*)" to target text field$/) do |target|
  puts("Target is #{target}")
end

When(/^I press on search icon$/) do
  find_element(id: "action_search").click
end

# ----- Then ----- #

Then(/^Left unit picker value should be "([^"]*)"$/) do |unit|
  array_of_elements = find_elements(id: "select_unit_spinner")
  actual_picker_text = array_of_elements[0].text

  if actual_picker_text != unit
    fail("Expected left unit picker value is #{unit}, actual value is #{actual_picker_text}")
  end
end

Then(/^Right unit picker value should be "([^"]*)"$/) do |unit|
  array_of_elements = find_elements(id: "select_unit_spinner")
  actual_picker_text = array_of_elements[1].text

  if actual_picker_text != unit
    fail("Expected right unit picker value is #{unit}, actual value is #{actual_picker_text}")
  end
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
  # Find element by id and tap on it
  find_element(id: "action_add_favorites").click
end

Then(/^I press on Favorite conversions$/) do
  # Find element by text and tap on it
  text("Favorite conversions").click
end

Then(/^I see "([^"]*)" as a current unit converter$/) do |current_unit|
  # Locate element inside parent
  find_element(id: "action_bar").find_element(xpath: "//android.widget.TextView[@text='#{current_unit}']")
end

# ----- And ----- #

And(/^I verify "([^"]*)" added to Favorite conversions list$/) do |unit_type|
  text(unit_type)
end

And(/^I type "([^"]*)" in search field$/) do |text|
  # Find element by id and write text on it
  find_element(id: "search_src_text").send_keys(text)
end

And(/^I press return button on soft keyboard$/) do
  # Tap in a part of the screen
  Appium::TouchAction.new.tap(x:0.99, y:0.99, count:1).perform
end