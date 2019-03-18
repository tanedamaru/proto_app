# README

## users table
|Column|Type|Options|
|------|----|-------|
|name|string|null false|
|email|string|null false, unique true|
|password|string|null false|

### Association
- has_many :blogs
- has_many :comments


## blogs table

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null false, foreign_key true|
|title|string|null false|
|text|text|null false|

### Association
- has_many :tags, through: :blogs_tags
- has_many :commnets, through: :blogs_comments
- belongs_to :users


## blogs_tags table
|Column|Type|Options|
|------|----|-------|
|blog_id|integer|null false,foreign_key|
|tag_id|integer|null false,foreign_key|

### Association
- belomgs_to :blogs
- belongs_to :tags


## tags table
|Column|Type|Options|
|------|----|-------|
|name|string|null false, unique true|

### Association
- has_many :blogs, through: :blogs_tags


## blogs_comments table
|Column|Type|Options|
|------|----|-------|
|blog_id|integer|null false,foreign_key|
|comments_id|integer|null false,foreign_key|

### Association
- belomgs_to :blogs
- belongs_to :comments


## comments table
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null false, foregin_key true|
|text|text|null false|

### Association
- has_many :blogs, through: :blogs_tags

