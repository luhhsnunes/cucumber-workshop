Before("@product") do
  @homepage = 'https://ror-e.herokuapp.com/'
  page.visit @homepage
end

Before("@account") do
  @homepage = 'https://lojaexemplod.lojablindada.com/'
  page.visit @homepage
end

After do
  page.execute_script "window.close();"
end