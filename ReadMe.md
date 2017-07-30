
# comments
##tablestracture

- user_idgjkglk
- vegetable_id
- review_id
- text
- created_at
- updated_at

## association
	has_one: review
	belongs_to: user
	belongs_to: vegetable

# favorites
## tablestracture
		 - user_id
		 - vegetable_id
		 - created_at
		 - updated_at

##association
	      - belongs_to :user
		  - belongs_to :vegetable

- #user
    ##tablestracture
		 name
	     phone_number

    ##association
    	- has_many: vegetables
		- has_many: comments
		- has_many: favorites
		- has_many: purchases

#vegetable
## tablestracture
		- vegetable_id
		- user_id
		- description
		- created_at
		- updated_at

##association:
		belongs_to: user
		has_many: vegetable_images
		has_many: comments
		has_many: reviews

- #vegetable_image
    ##tablestracture
		- vegetable_id
		- content
		- status
		- created_at
		- updated_at

	##association:
		belong_to: vegetable


- #review
    ##tablestracture
	     - user_id
	     - vegetable_id
	     - comment_id
	     - general_rate
	     - taste_rate
	     - communication_rate
	     - visual_rate

	##association
			belongs_to: vegetable
			belongs_to: user
			belongs_to: comment

#purchase
##tablestracture
		- user_id
		- vegetable_id
		- created_at
		- updated_at

##association:
		 belongs_to: user
		 belongs_to: vegetable


#tag
	-