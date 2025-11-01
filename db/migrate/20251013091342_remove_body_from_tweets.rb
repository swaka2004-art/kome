class RemoveBodyFromTweets < ActiveRecord::Migration[7.1]
  def change
    remove_column :tweets, :body, :text
  end
end
