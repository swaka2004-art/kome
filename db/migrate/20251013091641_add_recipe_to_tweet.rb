class AddRecipeToTweet < ActiveRecord::Migration[7.1]
  def change
    add_column :tweets, :recipe, :string
  end
end
