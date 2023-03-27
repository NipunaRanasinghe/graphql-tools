import ballerina/graphql;

public type SchemaDocs07Api service object {
    *graphql:Service;

    # Fetch all the books from database
	resource function get books() returns Book?[]?;
	# Fetch a book by its id
	# + id - The id of the book to fetch
    resource function get book(int id) returns Book?;
};

# It can be either a student or a teacher
public type Profile Student|Teacher;

# Represents a book written by an author
public service class Book {
    # The id of the book, unique identifier
	resource function get id() returns int {}
	# The title of the book
	resource function get title() returns string {}
}

service class Student {
    resource function get id() returns int {}
    resource function get name() returns string {}
}

service class Teacher {
    resource function get id() returns int {}
    resource function get name() returns string {}
}
