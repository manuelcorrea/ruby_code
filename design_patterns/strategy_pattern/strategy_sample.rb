11#This class need to not only do HTML but Text and other formats....
class Report
  attr_reader :title, :text
  attr_accessor :formatter
  def initialize(formatter)
    @title = 'Montly report'
    @text = ['things are going', 'really well']
    @formatter = formatter
  end
  
  def output_report()
    formatter.output_report(self)
  end
  
  
end

class HTMLFormatter
  def output_report(report)
     puts '<html>'
    puts '<head>'
    puts "<title>#{report.title}</title>"
    puts '</head>'
    puts '<body>'
    report.text.each do |line|
      puts "  <p>#{line}</p>"
    end
    puts '</body>'
    puts '</html>'
  end
end

class TextFormatter
  def output_report(report)
    puts report.title
    report.text.each do |line|
      puts line
    end
  end
end

report = Report.new(HTMLFormatter.new)
report.output_report

puts
report.formatter= TextFormatter.new
report.output_report

