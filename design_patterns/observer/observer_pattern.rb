#Define module
module Subject
  def initialize
    @observers=[]
  end
  
  def add_observer(observer)
    @observers << observer 
  end
  
  def delete_observer(observer)
    @observers.delete(observer)
  end
  
  def notify_observers
    @observers.each do |observer|
      observer.update(self)
    end
  end
end

#JobSeekers wants to be notify when there is a new job
class JobBoard
  include Subject
  attr_reader :jobs
 
  def initialize
    super()
    @jobs = []
  end
  
  def add_job(job)
    @jobs << job
    notify_observers
  end
end

#JobSeeker
class JobSeeker
  def initialize
    super()
  end
  
  def register(job_board)
    job_board.add_observer(self)
  end
  
  def unregister(job_board)
    job_board.delete_observer(self)
  end
  
  
  def update(job_board)
    puts "New job: " + job_board.jobs.last
  end
end

job_board = JobBoard.new

job_seeker = JobSeeker.new
job_seeker.register(job_board)

#jobs
job_board.add_job("software engineer")
job_board.add_job("DBA")
#found a job, i dont want to get notified with more jobs
job_seeker.unregister(job_board)

job_board.add_job("Manager")


