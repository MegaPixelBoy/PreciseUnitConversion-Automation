# ----- Home Screen Steps ----- #

# ----- Given ----- #

# ----- When ----- #

When(/^I press on Clear button$/) do
  puts('Clear Button pressed')
end

When(/^I type "([^"]*)" on application keyboard$/) do |target|
  digits = target.split("")

  digits.each do |num|
    find_element(id: "keypad").find_element(xpath: "//android.widget.Button[@text='#{num}']").click
  end
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
  button_state = find_element(id: "btn_show_all").enabled?

  if state == 'enabled'
    fail("Expected to be enabled") if button_state != true
  elsif state == 'disabled'
    fail("Expected to be disabled") if button_state != false
  end
end

Then(/^I should see result as "([^"]*)"$/) do |result|
  actual_value = find_element(id: "target_value").text

  if actual_value = !result
    fail("Expected value is #{result}, actual value is #{actual_value}")
  end
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

Then(/^I select "([^"]*)" from left unit picker$/) do |value|
  find_elements(id: "select_unit_spinner")[0].click
  find_in_list(value)
end

Then(/^I select "([^"]*)" from right unit picker$/) do |value|
  find_elements(id: "select_unit_spinner")[1].click
  find_in_list(value)
end

Then(/^I select "([^"]*)" from menu$/) do |value|
  text(value).click
end

# ----- And ----- #

And(/^I verify "([^"]*)" added to Favorite conversions list$/) do |unit_type|
  item_text = find_element(id: "favorites_item_hint").text
  fail("Cannot find #{unit_type} in Favorite list") if unit_type != item_text
end

And(/^I type "([^"]*)" in search field$/) do |text|
  # Find element by id and write text on it
  find_element(id: "search_src_text").send_keys(text)
end

And(/^I press return button on soft keyboard$/) do
  # Tap in a part of the screen
  Appium::TouchAction.new.tap(x:0.99, y:0.99, count:1).perform
end
