
# comments
## Table Structure

- user_id
- vegetable_id
- review_id
- text
- created_at
- updated_at

## association
- has_one: review
- belongs_to: user
- belongs_to: vegetable

# favorites
## Table Tstracture
- user_id
- vegetable_id
- created_at
- updated_at

## Association
- belongs_to :user
- belongs_to :vegetable

# user

## Table Tstracture
- name
- phone_number
- created_at
- updated_at


## association
- has_many: vegetables
- has_many: comments
- has_many: favorites
- has_many: purchases

#vegetable

## Table Structure
- vegetable_id
- user_id
- description
- created_at
- updated_at

## association:
- belongs_to: user
- has_many: vegetable_images
- has_many: comments
- has_many: reviews

# vegetable_image

## Table Structure
- vegetable_id
- content
- status
- created_at
- updated_at

## association:
- belong_to: vegetable

# review
## Table Structure
- user_id
- vegetable_id
- comment_id
- general_rate
- taste_rate
- communication_rate
- visual_rate

## association
- belongs_to: vegetable
- belongs_to: user
- belongs_to: comment

# purchase
## Table Structure
- user_id
- vegetable_id
- created_at
- updated_at

## association:
- belongs_to: user
- belongs_to: vegetable


# tag
- 