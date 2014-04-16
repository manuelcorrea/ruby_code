#This class need to not only do HTML but Text and other formats....
class Report
  def initialize
    @title = 'MOntly report'
    @text = ['things are going', 'really well']
  end
  
  def output_report
    puts '<html>'
    puts '<head>'
    puts '<title>#{@title}</title>'
    puts '</head>'
    puts '<body>'
    @text.each do |line|
      puts "  <p>#{line}</p>"
    end
    puts '</body>'
    puts '</html>'
  end
end

report = Report.new
report.output_report
