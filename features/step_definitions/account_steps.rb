When(/^I choose to create a new account$/) do
  click_link('Minha Conta')
  click_button('Criar uma Conta')
end

When(/^I enter my '(.*?)'$/) do |details|
  splitted_details = details.split(',')

  fill_in('firstname', :with => 'John')
  fill_in('lastname', :with => 'John')
  fill_in('email_address', :with => splitted_details[0])
  fill_in('taxvat', :with => splitted_details[1])
  fill_in('password', :with => splitted_details[2])
  fill_in('confirmation', :with => splitted_details[3])
end

When(/^I submit my details$/) do
  click_button('Enviar')
end

Then(/^I see the '(.*?)'$/) do |message|
  expect(page).to have_content(message)
end
