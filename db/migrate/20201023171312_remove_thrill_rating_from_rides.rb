class RemoveThrillRatingFromRides < ActiveRecord::Migration[5.2]
  def change
    remove_column :rides, :thrill_rating, :string
  end
end
