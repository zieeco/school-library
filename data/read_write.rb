def read_person
  if File.exist?('./data/people.json')

    persons = JSON.parse(File.read('./data/people.json'))
    persons.map do |person|
      if person['occupation'] == 'Teacher'
        Teacher.new(person['age'], person['specialization'], person['name'])
      else
        Student.new(person['age'], person['classroom'], person['name'], person['parent_permission'])
      end
    end
  else
    []
  end
end

def read_book
  if File.exist?('./data/book.json')

    books = JSON.parse(File.read('./data/book.json'))
    books.map do |book|
      Book.new(book['title'], book['author'])
    end
  else
    []
  end
end

def read_rentals
  if File.exist?('./data/rental.json')
    rental = JSON.parse(File.read('./data/rentals.json'))
    rental.map do |item|
      Rental.new(item['date'], @books[item['book_index']], @persons[item['person_index']])
    end
  else
    []
  end
end
