#!/usr/bin/env ruby
flag = ARGV[0]
package = ARGV[1]
if flag == "-S"
    system "git clone https://aur.archlinux.org/#{package} pkg"
    Dir.chdir("pkg") do
        system "makepkg -si"
    end
    system "rm -rf pkg"
elsif flag == "-R"
    system "sudo pacman -R #{package}"
end