Given(/^I am at the home page$/) do
  expect(page.current_url).to eq('https://ror-e.herokuapp.com/')
end

When(/^I choose to find clothes$/) do
  find(:xpath, "//a[@href='/products']").hover
  find(:xpath, "//a[@href='/products?product_type_id=1']").click
end

Then(/^I am redirected to the results page$/) do
  expect(page.current_url).to eq('https://ror-e.herokuapp.com/products?product_type_id=1')
end

Then(/^I see the following items:$/) do |table|
  within '#interesting_items' do
    table.raw.flatten.each do |item|
      expect(page).to have_content(item)
    end
  end
end