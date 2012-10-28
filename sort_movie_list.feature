Feature: display list of movies sorted by different criteria
 
  I want to see movies sorted by title or release date

Background: movies have been added to database
  
  Given the following movies exist:
  | title                        | rating | release_date |
  | when 2001: A Space Odyssey   | G      | 6-Apr-1968   |
  | Raiders of the Lost Ark	 | PG	  | 12-Apr-1968  |


  And I am on the RottenPotatoes home page

Scenario: sort movies alphabetically
  Given I am on the RottenPotatoes home page
  And I check the following ratings: G,PG,PG-13,R,NC-17
  When I press "Refresh"
  And I follow "title_header"
  Then I should see "2001: A Space Odyssey" before "Raiders of the Lost Ark"
 
Scenario: sort movies in increasing order of release date
  Given I am on the RottenPotatoes home page
  And I check the following ratings: G,PG,PG-13,R,NC-17
  When I press "Refresh"
  And I follow "release_date_header"
  Then I should see "2001: A Space Odyssey" before "Raiders of the Lost Ark"
