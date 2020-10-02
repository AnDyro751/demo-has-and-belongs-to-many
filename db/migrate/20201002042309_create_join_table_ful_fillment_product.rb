class CreateJoinTableFulFillmentProduct < ActiveRecord::Migration[6.0]
  def change
    create_join_table :fulfillments, :products do |t|
      t.index [:fulfillment_id, :product_id]
      t.index [:product_id, :fulfillment_id]
    end
  end
end
