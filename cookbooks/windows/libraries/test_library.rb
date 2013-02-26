module TestModule

  def create_logs_folder_using_ruby
    puts 'creating logs_ruby folder'
    Dir.mkdir('\logs_ruby') unless File.exist?('\logs_ruby')
  end

  def create_logs_folder_using_ruby_block
    ruby_block 'create logs_ruby_block folder using ruby' do
      block { Dir.mkdir('\logs_ruby_block') unless File.exist?('\logs_ruby_block') }
    end
  end

  def create_logs_folder_using_block
    puts 'creating logs_block folder'
    execute 'Create logs_block folder' do
      command 'mkdir c:\logs_block'
      not_if { File.exist? 'c:\logs_block' }
    end
  end

end

class Chef
  class Recipe
    include TestModule
  end
end

class Chef
  class Resource
    include TestModule
  end
end

