# ----- Gestures Steps ----- #

# ----- Given ----- #

# ----- When ----- #

When(/^I swipe from left to right to open$/) do
  Appium::TouchAction.new.swipe(start_x: 0.01, start_y: 0.5, end_x: 0.8, end_y: 0.5, duration: 600).perform
end

When(/^I swipe from right to left to open$/) do
  Appium::TouchAction.new.swipe(start_x: 0.99, start_y: 0.5, end_x: 0.2, end_y: 0.5, duration: 600).perform

end

When(/^I swipe from left to right to close$/) do
  Appium::TouchAction.new.swipe(start_x: 0.2, start_y: 0.5, end_x: 0.99, end_y: 0.5, duration: 600).perform
end

When(/^I swipe from right to left to close$/) do
  Appium::TouchAction.new.swipe(start_x: 0.8, start_y: 0.5, end_x: 0.01, end_y: 0.5, duration: 600).perform
end

# ----- Then ----- #

# ----- And ----- #
