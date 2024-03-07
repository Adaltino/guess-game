class GuessGame
  attr_reader :number, :win

  def initialize
    @number = Random.rand(100)
    @win = false
  end

  def try_to_guess(number = 0)
    if number == @number
      @win = true
      'Você acertou!'
    elsif number > @number
      'O número informado é muito alto...'
    else
      'O número informado é muito baixo...'
    end
  end
end

game = GuessGame.new

until game.win
  print 'Digite um número: '
  number = gets.chomp.to_i
  puts game.try_to_guess(number)
end
