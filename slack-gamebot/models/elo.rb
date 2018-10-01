module Elo
  DELTA_TAU = 0.94

  def self.team_elo(players)
    (players.sum(&:elo).to_f / players.count).round(2)
  end

  def self.calc_division(elo) {
      case elo
      when >= 1200 
        return 1 #Daimond
      when >= 1000
        return 2 #Platinum
      when >= 800
        return 3 #Gold
      when >= 600
        return 4 #Silver
      when >= 400
        return 5 #Bronze
      else
        return 6 #Wood
      end
  }

  def self.match_points(division_diff) {
    case division_diff
      when -5
        return 200
      when -4
        return 150
      when -3
        return 100
      when -2
        return 85
      when -1
        return 75
      when 0
        return 65
      when 1
        return 50
      when 2
        return 40
      when 3
        return 30
      when 4
        return 25
      when 5
        return 20
    end    
  }
   
end
