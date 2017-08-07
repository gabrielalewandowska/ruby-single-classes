require("minitest/autorun")
require_relative("./classes")

#PART A
class TestStudent < MiniTest::Test

  def test_student_name
    student = Student.new("Gaby", 15)
    assert_equal("Gaby", student.name)
  end

  def test_student_name
    student = Student.new("Gaby", 15)
    assert_equal(15, student.cohort)
  end

  def test_set_name
    student = Student.new("Gaby", 15)
    student.set_name("Alice")
    assert_equal("Alice", student.name)
  end

  def test_set_cohort
    student = Student.new("Gaby", 15)
    student.set_cohort(14)
    assert_equal(14, student.cohort)
  end

  def test_talk
    student = Student.new("Gaby", 15)
    assert_equal("Hiya!", student.talk("Hiya!"))
  end

  def test_favourite_language
    student = Student.new("Gaby", 15)
    assert_equal("My favourite language is Ruby",student.favourite_language("Ruby"))
  end
end

#PART B

class TestTeam < MiniTest::Test

  def test_name
    team = Team.new("Manchester Rangers", ["James Smith", "Adam Spencer", "Angus McDonald"], "Sigfried von Thurn und Taxis", 0)
    assert_equal("Manchester Rangers", team.team_name)
  end

  def test_players
    team = Team.new("Manchester Rangers", ["James Smith", "Adam Spencer", "Angus McDonald"], "Sigfried von Thurn und Taxis", 0)
    assert_equal(["James Smith", "Adam Spencer", "Angus McDonald"], team.players)
  end

  def test_coach
    team = Team.new("Manchester Rangers", ["James Smith", "Adam Spencer", "Angus McDonald"], "Sigfried von Thurn und Taxis", 0)
    assert_equal("Sigfried von Thurn und Taxis", team.coach)
  end

  def test_set_coach
    team = Team.new("Manchester Rangers", ["James Smith", "Adam Spencer", "Angus McDonald"], "Sigfried von Thurn und Taxis", 0)
    team.coach = "Jack Robinson"
    # team.set_coach("Jack Robinson")
    assert_equal("Jack Robinson", team.coach)
  end

  def test_add_player
    team = Team.new("Manchester Rangers", ["James Smith", "Adam Spencer", "Angus McDonald"], "Sigfried von Thurn und Taxis", 0)
    team.add_player("Mark Hopkins")
    assert_equal(["James Smith", "Adam Spencer", "Angus McDonald", "Mark Hopkins"], team.players)
  end

  def test_player_name
    team = Team.new("Manchester Rangers", ["James Smith", "Adam Spencer", "Angus McDonald"], "Sigfried von Thurn und Taxis", 0)
    assert_equal(true, team.check_player("James Smith"))
  end

  def test_match_result
    team = Team.new("Manchester Rangers", ["James Smith", "Adam Spencer", "Angus McDonald"], "Sigfried von Thurn und Taxis", 0)
    assert_equal(10, team.match_result(10))
  end
end
