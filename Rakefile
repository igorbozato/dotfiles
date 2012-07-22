require 'rake'

desc "Install dotfiles in user's home directory"
task :install do
  files = Dir["*"] - %w[README Rakefile]

  files.each do |file|
    install_file(file)
  end
end

def install_file(file)
  if file == "zshrc"
    puts "copying ~/.#{file}"
    system %Q{cp "$PWD/#{file}" "$HOME/.#{file}"}
  else
    puts "linking ~/.#{file}"
    system %Q{ln -f -s "$PWD/#{file}" "$HOME/.#{file}"}
  end
end
