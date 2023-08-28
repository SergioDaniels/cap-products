using {com.sergio as sergio} from '../db/schema';
using from './catalog.service';


extend sergio.Books with {
  authors: Association to many Books_Authors on authors.book = $self;
}

extend sergio.Authors with {
  books: Association to many Books_Authors on books.author = $self;
}

entity Books_Authors {
  book: Association to sergio.Books;
  author: Association to sergio.Authors;
}

extend service Z with {
  entity LinkEntity as projection on Books_Authors;
}