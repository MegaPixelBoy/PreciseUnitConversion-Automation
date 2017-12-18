# ----- Custom Conversions Steps ----- #

# ----- Given ----- #

# ----- When ----- #

When(/^I press on New Unit button$/) do
  find_element(id: "btn_new_custom_unit").click
end

When(/^I press on OK button on Custom Conversions screen$/) do
  find_element(id: "btn_custom_conversion_details_ok").click
end

# ----- Then ----- #

Then(/^I press on Create your first conversion button$/) do
  find_element(id: "btn_new_custom_conversion").click
end

Then(/^I type "([^"]*)" as a custom conversion name$/) do |name|
  find_element(id: "edit_custom_conversion_category_name").send_keys(name)
end

Then(/^I type "([^"]*)" as unit name$/) do |unit_name|
  find_element(id: "edit_custom_conversion_unit_dtls_name").send_keys(unit_name)
end

Then(/^I type "([^"]*)" as unit symbol$/) do |unit_symbol|
  find_element(id: "edit_custom_conversion_unit_dtls_symbol").send_keys(unit_symbol)
end

Then(/^I type "([^"]*)" as unit value$/) do |unit_value|
  find_element(id: "edit_custom_conversion_unit_dtls_value").send_keys(unit_value)
end

Then(/^I press submit checkmark on Custom Conversions screen$/) do
  find_element(id: "action_confirm_custom_unit").click
end

Then(/^I verify "([^"]*)" added to Custom conversions list$/) do |conversion_name|
  text(conversion_name)
end

# ----- And ----- #
