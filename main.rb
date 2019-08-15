
class Git
  def initialize
    menu
  end

  def menu
    puts "\n1) Enter git command"
    puts "2) Exit"
    print "> "
    choice = gets.to_i
    case choice
    when 1
      puts "\nEnter git command:"
      print "> "
      puts_git(gets.strip)
      menu
    when 2
      exit
    else
      puts "\nInvalid Input"
      sleep(2)
      print `clear`
      menu
    end
  end

  def puts_git(cmd)
    puts `git #{cmd} -h`
  end
end

Git.new