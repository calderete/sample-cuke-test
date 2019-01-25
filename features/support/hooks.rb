Before("@team-member-scenario") do
  @url = "https://mailchimp.com"
  @mail_chimp_ui = Watir::Browser.new(:firefox)
  @mail_chimp_ui.goto(@url)
end

Before("@test-csv") do
  @file_path = "#{Dir.pwd}/test_files/test_csv.csv"
end

After("@team-member-scenario") do
  @mail_chimp_ui.browser.close
end

After("@test-csv") do
  File.delete(@file_path)
end
