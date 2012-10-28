Feature: display list of movies sorted by different criteria
 
  I want to see movies sorted by title or release date

Background: movies have been added to database
  
  Given the following movies exist:
  | title    | rating   | release_date |
  | film name| x rating | date of film |	


  And I am on the RottenPotatoes home page

Scenario: sort movies alphabetically
  Given I am on the RottenPotatoes home page
  When I press "title_header" as Movie title
  Then I should see "2001: A Space Odyssey"

Scenario: sort movies in increasing order of release date
  Given I am on the RottenPotatoes home page
  And I follow "release_date_header" as Release Date
  Then I should see "Chocolat" before "Amelie"
