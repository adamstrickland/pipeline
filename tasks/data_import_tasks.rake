# desc "Explaining what the task does"
# task :data_import do
#   # Task goes here
# end
require 'fastercsv'
require 'active_support'
require File.join(File.dirname(__FILE__), '..', 'lib', 'data_import')

namespace :data do
  namespace :import do
    namespace :delimited do 
      task :tab, :dir do |task, args|
        options = { :delimiter => "\t" }
        # options = options.merge({ :verbose => true })
        # options = options.merge({ :dry_run => true })
        DataImport::Importer.import_delimited(args.dir || File.join(File.dirname(__FILE__), "..", "..", "..", "..", "db", "import"), options)
      end
      
      task :comma, :dir do |task, args|
        puts "Not implemented yet!!!"
      end
    end
    
    namespace :fixed_width do
    end
  end
end