require 'observer'

#Subject or Observable
#Achieve Observable pattern by composition using modules
class JobBoard
  include Observable 
  attr_reader :jobs
 
  def initialize
    super
    @jobs = []
  end
  
  def add_job(job)
    @jobs << job
    changed #Must be called in order to notify change flag
    notify_observers(self)
  end
  
  def last_job
    @jobs.last
  end
end

#Observer
class JobSeeker
  attr_accessor :name
  
  def initialize(name)
    @name= name
  end
  
  #Implements update loosy coupled
  def update(observable)
    puts "#{name} - New job: " + observable.last_job if observable.is_a?(JobBoard)
  end
  
end

#create objects
job_board = JobBoard.new
job_seeker = JobSeeker.new('Bob')
job_seeker2 = JobSeeker.new('Alice')

#add observers
job_board.add_observer(job_seeker)
job_board.add_observer(job_seeker2)

#jobs
job_board.add_job("software engineer")
job_board.add_job("DBA")

#Alice found a job, remove from observers
job_board.delete_observer(job_seeker2)

job_board.add_job("Manager")


