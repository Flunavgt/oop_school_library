require_relative './person'

fede = Person.new(49, 'fede')
may = Person.new(42, 'may')
luis = Person.new(28, 'luis')

booka = Book.new('Erik Story', 'Erik S.')
bookb = Book.new('Blue whale', 'The fisherman')
bookc = Book.new('Blue whale returns', 'The fisherman')

rental1 = Rental.new('2022-10-12', booka, fede)
rental2 = Rental.new('2022-10-12', bookb, may)
rental3 = Rental.new('2022-08-10', bookc, luis)
rental4 = Rental.new('2022-08-12', bookb, fede)

puts(fede.rentals.map { |rental| rental.book.title })
puts(may.rentals.map { |rental| rental.book.title })
puts(booka.rentals.map { |rental| rental.person.name })
puts(bookb.rentals.map { |rental| rental.person.name })
