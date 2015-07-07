Before("@product") do
  page.visit 'https://ror-e.herokuapp.com'
end

After do
  page.execute_script "window.close();"
end