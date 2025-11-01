class AddCookingToTweets < ActiveRecord::Migration[7.1]
  def change
    add_column :tweets, :cooking, :string
  end
end
