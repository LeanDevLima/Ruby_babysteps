require 'os'

def my_OS
    if OS.windows?
        "Windows"
    elsif OS.linux?
        "Linux"
    elsif OS.mac?
        "Mac"
    else
        "I did not identify the Operating System"
    end
end
        
    puts "My PC is #{OS.bits} bits, has #{OS.cpu_count} colors and the operating system is #{my_OS}"