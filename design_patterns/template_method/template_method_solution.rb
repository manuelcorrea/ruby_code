#This class need to not only do HTML but Text and other formats....
class Report
  def initialize
    @title = 'Montly report'
    @text = ['things are going', 'really well']
  end
  
  def output_report
    header
    body
  end
  
  def header
    raise 'called abstract method header'
  end
  
  def body
    raise 'called abstract method body'
  end
end

class HTMLReport < Report
  def initialize
    super
  end
  
  def header
     puts '<html>'
     puts '<head>'
     puts '<title>'+@title+'</title>'
     puts '</head>'
  end
  
  def body
    puts '<body>'
    @text.each do |line|
      puts "  <p>#{line}</p>"
    end
    puts '</body>'
    puts '</html>'
  end
end

class TextReport < Report
  def initialize
    super
  end
  
  def header
    puts @title
  end
  
  def body
    @text.each do |line|
      puts line
    end
  end
end

class ReportFactory
  def self.get_report(type)
    if type == 'html'
      return HTMLReport.new
    elsif type == 'text'
      return TextReport.new
    end
    
  end
end

report = ReportFactory.get_report('html')
report.output_report
