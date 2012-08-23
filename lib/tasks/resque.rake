require "resque/tasks"

task "resque:setup" => :environment

task "resque:restart" => :environment do
    Resque.workers.select{|worker| worker}.each(&:unregister_worker)
end