require 'rake'

VIMFILES_URL = "git://github.com/akitaonrails/vimfiles.git"

desc "Install dotfiles in user's home directory"
task :install do
  files = Dir["*"] - %w[README Rakefile]

  files.each do |file|
    install_file(file)
  end

  install_vimfiles
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

def install_vimfiles
  puts "installing vimfiles"
  system "git clone #{VIMFILES_URL} $HOME/.vim"
  system "cd $HOME/.vim/; git submodule update --init"
end
