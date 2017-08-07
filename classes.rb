#PART A

class Student
  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def name
    return @name
  end

  def cohort
    return @cohort
  end

  def set_name(name)
    @name = name
  end

  def set_cohort(cohort)
    @cohort = cohort
  end

  def talk(words)
    return words
  end

  def favourite_language(language)
    return "My favourite language is " + language
  end
end

#PART B

class Team
  def initialize(team_name, players, coach, points)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = points
  end

  attr_accessor(:team_name, :players, :coach, :points)

  def add_player(new_player)
    @players.push(new_player)
  end

  def check_player(name)
    for player in @players
      return player == name
    end
  end

def match_result(points)
  @points += points
end

  # def team_name
  #     return @team_name
  # end
  #
  # def players
  #     return @players
  # end
  #
  # def coach
  #   return @coach
  # end
  #
  # def set_coach(new_coach)
  #   @coach = new_coach
  # end
end
