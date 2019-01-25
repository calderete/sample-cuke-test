Given(/^A vistor navigates to leadership team member information$/) do
  @mail_chimp_ui.browser.element(text: "Our Story").click
  @mail_chimp_ui.browser.element(text: "Learn more about our leadership team").click
end

When(/^They copy the leadership team member info$/) do
  name = @mail_chimp_ui.browser.elements(css: '[class^=\'h5\']')
  title = @mail_chimp_ui.browser.elements(css: '[class^=\'copy\']')
  bio = @mail_chimp_ui.browser.elements(css: '[class^=\'normalize\']')

  CSV.new("#{Dir.pwd}/test_files/ltm_csv.csv")
  CSV.open("#{Dir.pwd}/test_files/ltm_csv.csv", "w") do |wr|
    wr << ["Name", "Title", "Bio"]
    name.each_with_index { |name,index| wr << [name.text, title[index].text, bio[index].text] }
  end

end
