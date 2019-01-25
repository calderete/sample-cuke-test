Given(/^A vistor navigates to leadership team member information$/) do
  @mail_chimp_ui.browser.element(text: "Our Story").click
  @mail_chimp_ui.browser.element(text: "Learn more about our leadership team").click
end

When(/^They copy the leadership team member info$/) do
  @names = @mail_chimp_ui.browser.elements(css: '[class^=\'h5\']')
  @titles = @mail_chimp_ui.browser.elements(css: '[class^=\'copy\']')
  @bios = @mail_chimp_ui.browser.elements(css: '[class^=\'normalize\']')
end

Then(/^It can be saved in a csv file and viewed as a spreadsheet$/) do
  CSV.new(@file_path)
  CSV.open(@file_path, "w") do |wr|
    wr << ["Name", "Title", "Bio"]
    @names.each_with_index { |name,index| wr << [name.text, @titles[index].text, @bios[index].text] }
  end
end
