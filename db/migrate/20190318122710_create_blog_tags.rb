class CreateBlogTags < ActiveRecord::Migration[5.2]
  def change
    create_table :blog_tags do |t|

      t.timestamps
    end
  end
end
