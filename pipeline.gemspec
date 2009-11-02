Gem::Specification.new do |spec|
  spec.name    = 'pipeline'
  spec.version = '0.0.1'
  spec.date    = '2009-11-1'
  
  spec.summary = "Data import & export in Ruby"
  spec.description = <<-EOF
Pipeline provides a straightforward but powerful mechanism for moving 
data between databases using Ruby
EOF
  
  spec.author   = 'Adam Strickland'
  spec.email    = 'adam.strickland@gmail.com'
  spec.homepage = 'http://github.com/adamstrickland/pipeline'
  
  spec.add_dependency('fastercsv', '>= 1.5.0')
  spec.add_dependency('activesupport', '>= 2.3.4')
  spec.add_dependency('activerecord', '>= 2.3.4')
  
  # s.has_rdoc = true
  # s.rdoc_options = ['--main', 'README.rdoc']
  # s.rdoc_options << '--inline-source' << '--charset=UTF-8'
  # s.extra_rdoc_files = ['README.rdoc', 'LICENSE', 'CHANGELOG.rdoc']
  
  spec.files = FileList['lib/**/*.rb', 'bin/*', '[A-Z]*', 'test/**/*'].to_a
  # s.test_files %w(test/pipeline_test.rb)
  spec.test_files = Dir.glob('test/*.rb')
end