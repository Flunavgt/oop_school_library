# require_relative './person'
# require './teacher'

# fede = Person.new(49, 'fede')
# may = Person.new(42, 'may')
# luis = Person.new(28, 'luis')

# booka = Book.new('Erik Story', 'Erik S.')
# bookb = Book.new('Blue whale', 'The fisherman')
# bookc = Book.new('Blue whale returns', 'The fisherman')

# first = Rental.new('2022-10-12', booka, fede)
# second = Rental.new('2022-10-12', bookb, may)
# third = Rental.new('2022-08-10', bookc, luis)
# fourth = Rental.new('2022-08-12', bookb, fede)

# puts(fede.rentals.map { |rental| rental.book.title })
# puts(may.rentals.map { |rental| rental.book.title })
# puts(booka.rentals.map { |rental| rental.person.name })
# puts(bookb.rentals.map { |rental| rental.person.name })

# # Placed for linters purposes
# puts first
# puts second
# puts third
# puts fourth
