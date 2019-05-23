def select_books_titles_and_years_in_first_series_order_by_year
  "select title, year from books where series_id = 1 order by year;"
end

def select_name_and_motto_of_char_with_longest_motto
  "select name, motto from characters where length(motto) = (select max(length(motto)) from characters);"
end


def select_value_and_count_of_most_prolific_species
  "select characters.species, count(characters.species) as cnt from series
  join characters on series.id = characters.series_id
  group by characters.species
  order by cnt DESC
  limit 1;"
end

def select_name_and_series_subgenres_of_authors
  "select authors.name, subgenres.name from series
   join authors on series.author_id = authors.id
   join subgenres on subgenres.id = series.subgenre_id"
end

def select_series_title_with_most_human_characters
  "SELECT series.title FROM series JOIN characters ON series.id = characters.series_id WHERE characters.species = 'human' GROUP BY series.title ORDER BY COUNT(characters.species) DESC LIMIT 1;"
   
end

def select_character_names_and_number_of_books_they_are_in
  "select characters.name, count(character_books.character_id) as cnt from characters
  join character_books on characters.id = character_books.character_id
  group by character_books.character_id order by cnt;"
end
