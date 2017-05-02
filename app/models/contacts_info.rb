class ContactsInfo < ApplicationRecord

	#Contactsinfo has one user
	has_one :user

end
