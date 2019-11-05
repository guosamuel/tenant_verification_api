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