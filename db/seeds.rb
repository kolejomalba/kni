Author.create!([
  {firstname: "Theo", surname: "van Basten"},
  {firstname: "Thea", surname: "van Breukelen"},
  {firstname: "Thelma", surname: "van Beethoven"},
  {firstname: "Tillo", surname: "van Eulenspegelen"}
])
Book.create!([
  {title: "First book", isbn13: 1234567891234, description: "First book they wrote.", coverimage: "", instock_total: 2, instock_now: 2, author_id: 1},
  {title: "Second book", isbn13: 1234567891235, description: "Second book it is.", coverimage: "", instock_total: 2, instock_now: 2, author_id: 2},
  {title: "Third book", isbn13: 1234567891236, description: "Third one.", coverimage: "", instock_total: 2, instock_now: 2, author_id: 3}
])

user1 = User.new(:name => "Alfie", :email => "test@test.test", :librarian => true, :phone => "657357436", :loan_id => nil)
user2 = User.new(:name => "Annie", :email => "btest@test.test", :librarian => true, :phone => "657357437", :loan_id => nil)
user3 = User.new(:name => "Aaron", :email => "ctest@test.test", :librarian => true, :phone => "657357438", :loan_id => nil)

loan1 = Loan.new(:date_loaned => "2019-06-10", :date_returned => nil, :confirmed => true, :book_id => 1, :user_id => nil)
loan2 = Loan.new(:date_loaned => "2019-06-12", :date_returned => nil, :confirmed => true, :book_id => 2, :user_id => nil)

#Loan.create!([{date_loaned: "2019-06-10", date_returned: nil, confirmed: true, book_id: 1, user_id: 1}])

user1.loan_id = 1
user3.loan_id = 2


user1.save
user2.save
user3.save

loan1.user_id = 1
loan2.user_id = 3

loan1.save
loan2.save