class Team

  # インスタンスが持つ変数（値）
  attr_accessor :name, :win, :lose, :draw

  # インスタンスを初期化するための、特別なメソッド
  def initialize(name, win, lose, draw)
    self.name = name
    self.win = win
    self.lose = lose
    self.draw = draw
  end

  # インスタンスが持つメソッド（処理）
  def calc_win_rate(win, lose)
    win_rate = win.to_f/ (win.to_f + lose.to_f)
    return win_rate.to_s
  end

  def show_team_result(name, win, lose, draw)
    puts "#{self.name}の2020年の成績は#{self.win}勝#{self.lose}敗#{self.draw}分、勝率は0.#{self.calc_win_rate(self.win, self.lose)}です。"
  end
end


# インスタンスの生成と、変数への代入
Team1 = Team.new("Giants", 67, 45, 8)
Team2 = Team.new("Tigers", 60, 53, 7)
Team3 = Team.new("Dragons", 60, 55, 5)
Team4 = Team.new("BayStars", 56, 58, 6)
Team5 = Team.new("Carp", 52, 56, 12)
Team6 = Team.new("Swallows", 41, 69, 10)

# インスタンスの使用
Team1.show_team_result(Team1.name, Team1.win, Team1.lose, Team1.draw)
Team2.show_team_result(Team2.name, Team2.win, Team2.lose, Team2.draw)
Team3.show_team_result(Team3.name, Team3.win, Team3.lose, Team3.draw)
Team4.show_team_result(Team4.name, Team4.win, Team4.lose, Team4.draw)
Team5.show_team_result(Team5.name, Team5.win, Team5.lose, Team5.draw)
Team6.show_team_result(Team6.name, Team6.win, Team6.lose, Team6.draw)