Feature: display list of movies filtered by rating
 
  I want to see movies matching only certain x ratings

Background: movies have been added to database

  Given the following movies exist:
  | title                        | rating | release_date |
  | when 2001: A Space Odyssey   | G      | 6-Apr-1968   |
  | Raiders of the Lost Ark      | PG     | 12-Apr-1968  |

  And  I am on the RottenPotatoes home page
  
Scenario: restrict to movies with 'G'
  Given I check the following ratings: G
  And I uncheck the following ratings: PG,PG-13,R,NC-17
  When I press "Refresh"
  Then I should see the following ratings: G
  And I should not see the following ratings: PG, R, NC-17

Scenario: no ratings selected
  # see assignment
  Given I uncheck the following ratings: G,PG,PG-13,R,NC-17
  When I press "Refresh"
  Then I should see no movies

Scenario: all ratings selected
  # see assignment
  Given I check the following ratings: G,PG,PG-13,R,NC-17
  When I press "Refresh"
  Then I should see all of the movies
