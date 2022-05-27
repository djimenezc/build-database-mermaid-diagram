erDiagram

  Artist {
    INTEGER ArtistId
    NVARCHAR Name
  }

  Employee {
    INTEGER EmployeeId
    NVARCHAR LastName
    NVARCHAR FirstName
    NVARCHAR Title
    INTEGER ReportsTo
    DATETIME BirthDate
    DATETIME HireDate
    NVARCHAR Address
    NVARCHAR City
    NVARCHAR State
    NVARCHAR Country
    NVARCHAR PostalCode
    NVARCHAR Phone
    NVARCHAR Fax
    NVARCHAR Email
  }

  Genre {
    INTEGER GenreId
    NVARCHAR Name
  }

  MediaType {
    INTEGER MediaTypeId
    NVARCHAR Name
  }

  Playlist {
    INTEGER PlaylistId
    NVARCHAR Name
  }

  Album {
    INTEGER AlbumId
    NVARCHAR Title
    INTEGER ArtistId
  }

  Customer {
    INTEGER CustomerId
    NVARCHAR FirstName
    NVARCHAR LastName
    NVARCHAR Company
    NVARCHAR Address
    NVARCHAR City
    NVARCHAR State
    NVARCHAR Country
    NVARCHAR PostalCode
    NVARCHAR Phone
    NVARCHAR Fax
    NVARCHAR Email
    INTEGER SupportRepId
  }

  Invoice {
    INTEGER InvoiceId
    INTEGER CustomerId
    DATETIME InvoiceDate
    NVARCHAR BillingAddress
    NVARCHAR BillingCity
    NVARCHAR BillingState
    NVARCHAR BillingCountry
    NVARCHAR BillingPostalCode
    NUMERIC Total
  }

  Track {
    INTEGER TrackId
    NVARCHAR Name
    INTEGER AlbumId
    INTEGER MediaTypeId
    INTEGER GenreId
    NVARCHAR Composer
    INTEGER Milliseconds
    INTEGER Bytes
    NUMERIC UnitPrice
  }

  InvoiceLine {
    INTEGER InvoiceLineId
    INTEGER InvoiceId
    INTEGER TrackId
    NUMERIC UnitPrice
    INTEGER Quantity
  }

  PlaylistTrack {
    INTEGER PlaylistId
    INTEGER TrackId
  }

  Artist ||--o{ Album : "foreign key"

  Employee ||--o{ Customer : "foreign key"
  Employee ||--o{ Employee : "foreign key"

  Genre ||--o{ Track : "foreign key"

  MediaType ||--o{ Track : "foreign key"

  Playlist ||--o{ PlaylistTrack : "foreign key"

  Album ||--o{ Track : "foreign key"

  Customer ||--o{ Invoice : "foreign key"

  Invoice ||--o{ InvoiceLine : "foreign key"

  Track ||--o{ InvoiceLine : "foreign key"
  Track ||--o{ PlaylistTrack : "foreign key"