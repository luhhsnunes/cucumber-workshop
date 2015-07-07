When(/^I (GET|POST|DELETE|PUT) on '(.*?)'$/) do |request, resource |
  case request
    when "GET"
      @response = @conn.get resource
  end
end

Then(/^I receive a list of concerts with the following details:$/) do |table|
  table.raw.flatten.each do |concert_detail|
    expect(@response.body).to have_content(concert_detail)
  end
end