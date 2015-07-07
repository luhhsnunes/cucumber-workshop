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

When(/^I edit my '(.*?)' with '(.*?)'$/) do |information, value|
  fill_in(information, :with => value)
end


When(/^I (submit|save) my details$/) do |action|
  case action
    when 'submit'
      click_button('Enviar')
    when 'save'
      click_button('Salvar')
  end
end

Then(/^I see the '(.*?)'$/) do |message|
  expect(page).to have_content(message)
end


Given(/^I am logged in as a customer$/) do
  customer_login
end

Given(/^I am at customer account page$/) do
  expect(page.current_url).to eq(@homepage+'customer/account/')
end

When(/^I choose to edit my account details$/) do
  click_link('Editar')
end

Then(/^I am redirected to the edit account page$/) do
  expect(page.current_url).to eq(@homepage+'customer/account/edit/')
end

Then(/^I see following customer details available to edit:$/) do |table|
  within '.my-account' do
    table.raw.flatten.each do |detail|
      expect(page).to have_content(detail)
    end
  end
end

def customer_login
  visit @homepage+'/customer/account/login'
  fill_in('Endereço de email', :with => 'abacaxi@abacaxi.com')
  fill_in('Senha', :with => '123456')
  click_button('Entrar')
end
