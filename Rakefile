#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)
Rake.application.options.trace = true if %w(staging production).include?(Rails.env)
Stalltalk::Application.load_tasks
