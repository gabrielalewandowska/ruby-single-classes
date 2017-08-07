class Library

  attr_accessor(:name, :books)

  def initialize(name, books)
    @name = name
    @books = books
  end

  def list_all_books
    return @books
  end

  def book_by_title(title)
    for item in @books
      return item if item[:title] == title
    end
  end

  def books_rental_details(title)
    for item in @books
      return item[:rental_details] if item[:title] == title
    end
  end

  def add_book(title)
    @books.push@books.push(
    {
      title: title,
      rental_details: {
        student_name: "",
        date: ""
        }
      })
  end

  def change_rental_details(title, student_name, date)
    for item in @books
      if item[:title] == title
        item[:rental_details][:student_name] = student_name
        item[:rental_details][:date] = date
      end
    end
    return item
  end

end
