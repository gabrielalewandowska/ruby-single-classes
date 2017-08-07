require("minitest/autorun")
require_relative("./library_classes")

class TestLibrary < MiniTest::Test
  def setup
    @books =[
      {
        title: "Lord of the Rings",
        rental_details: {
          student_name: "John",
          date: "15/06/17"
        }
      },
      {
        title: "1984",
        rental_details: {
          student_name: "Mary",
          date: "07/08/17"
        }
      }
    ]
  end

  def test_list_all_books
    library = Library.new( "The Library", @books )
    assert_equal(@books, library.list_all_books)
  end

  def test_book_by_title
    library = Library.new( "The Library", @books )
    assert_equal(@books[1], library.book_by_title("1984"))
  end

  def test_books_rental_details
    library = Library.new( "The Library", @books )
    assert_equal(@books[0][:rental_details], library.books_rental_details("Lord of the Rings"))
  end

  def test_add_book
    library = Library.new( "The Library", @books )
    assert_equal(@books.push(
    {
      title: "Harry Potter",
      rental_details: {
        student_name: "",
        date: ""
        }
      }), library.add_book("Harry Potter"))
  end

  def test_change_rental_details
    library = Library.new( "The Library", @books )
    test = {
      title: "1984",
      rental_details: {
        student_name: "Mary",
        date: "01/09/17"
      }
    }
    changed_details = library.change_rental_details("1984", "Mary", "01/09/17")
    assert_equal(test, changed_details)
  end
end
