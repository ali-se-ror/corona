class Corona::CLI
  @@muted = "\e[1;31m"
  @@grn = "\e[1;32m"
  @@blu = "\e[1;34m"
  @@mag = "\e[1;35m"
  @@cyn = "\e[1;36m"
  @@white = "\e[0m"

  def call
    puts "\n#{@@grn}Welcome to Eden!#{@@white}\n"
    @input = ""
    until @input == "exit"
      get_states
      list_states
      get_user_state
      what_next
    end
    goodbye
  end

  def get_states
    @states = Corona::State.states
  end

  def list_states
    puts 'Choose a month to see events.'
    @states.each.with_index(1) do |month, index|
      puts "#{month[2]}: #{month[0]}"
    end
  end

  def get_user_state
    chosen_month = gets.strip
    show_state_test_viral(chosen_month) if valid_input(chosen_month)
  end

  def valid_input(input)
    codes = @states.map { |code| code[2] }
    codes.include?(input)
  end

  def show_state_test_viral(chosen_month)
    state = Corona::State.get_state_url(chosen_month)
    url = "https://covidtracking.com#{state[1]}/tests-viral"
    puts url
    rows = Corona::Scraper.scrap_table(url)
    puts "#{@@grn}Data For #{state[0]} state is following#{@@white}"
    rows.each_with_index do |row, index|
      current = row
      previous = rows[index + 1]
      puts ("#{current.keys.last} on #{@@blu} #{current.values.first} #{@@white} =  #{@@grn} #{current.values.last.tr(",", "").to_i - previous.values.last.tr(",", "").to_i} #{@@white}") if previous
    end
  end

  def what_next
    puts "#{@@blu}Are you done? Type 'exit' to exit or hit any key to see another state tests#{@@white}"
    @input = gets.strip
  end

  def goodbye
    puts "Program Ended"
  end
end