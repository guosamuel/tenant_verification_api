11/5/19
Goal: Let landlords create reviews for their tenants and be able to track how good/bad these tenants are so other landlords can decide whether or not to lease their places

Landlords
    -The primary user model
    -2 separate show pages ( 1 for the profile page, 1 for the tenants)
    -Edit their profile info
    -Sign up page, login page
    -The site will have a Navbar (top or side) allowing the landlord to navigate to the home page and the profile
    -Landlord index page (home page?) which includes the list of tenants. It shows the list of tenants that have been in contact with landlord
    -Landlords can update their tenants list, put the reviews on the tenants
    -After selecting one of the tenants, add a review (only if the tenant has rented from the landlord) and be able to edit it too
    -Editing a tenant's review will be a route ( /tenant/id/edit)
    -Attributes: username, email, name, password_digest (what they input to signup)

Tenants
    -Second model
    -2 show pages (1 for list of landlords they've been in contact with, 1 for their own profile page)
    -Sign up, login page
    -Attributes: username, password_digest, email, name
    -Be able to leave a review for the landlord they've rented from
----------------------------------------------
11/8/19
Group meeting:

Goal: Focus will be on Landords posting profiles and reviews for their prior tennants for other landlords to see and also review on.

Discussed migration tables and attribues
    -Final decision will be 4 tables: Lanlord, Review(join table), Tenant, and Address.
    -Attributes will be as follows:

    Landlord
        -username
        -email
        -first_name
        -last_name
        -password digest
    Review
        -tenant_id
        -landlord_id
        -comments
        -address
        -start_date
        -end_date
    Tenants
        -name
    Address
        -landlord_id
        -address_line_1
        -address_line_2
        -city
        -state
        -zipcode

Relationships
    Address  =belongs_to=>  Landlord  =has_many=>  Reviews  <=has_many=  Tenants

Next steps:
    Create migration tables
    Create models and relationships

Potential future add-ons:
    - Tenants will have a login
    -country attributes to address
----------------------------------------------
11/22/19
Group meeting:

Goal:Focus will be to start on validations for model classes, and API routes for backend.
Discussed validates and routes:

  Validations:
  
    Landlord validates :first_name, presence: true, :last_name, presence: true, :email, format: { with: URI::MailTo::EMAIL_REGEXP },:password, presence: true
    Addresses validates :street 1, presence: true, :city, presence: true, :state,presence: true, :postal, length: { in:5...9 } 
    Reviews validates :start_date, presence: true, :end_date, presence: true,:address, presence: true,:comment, presence: true
    Tenants validates :first_name, presence: true, :last_name, presence: true  
    
 Going to wait on writing method, until we need them. For example: Scope or Omniauth function
 
  Routes:
  
     Landlords: new action is signup, REST(GET, PUT, POST and DELETE)or show,create,update,and delete.
     Sessions: log in and log out. 
     Addresses: all RESTful routes, but five routes are under landlords.
     Reviews: REST(GET, PUT, POST and DELETE) routes, but new and edit route will be nested under tenants. 
     Tenants: REST(GET, PUT, POST and DELETE) routes but one index is nested under landlords, and one index is not nested under landlords. 
     
 Next step:
  Add controllers
