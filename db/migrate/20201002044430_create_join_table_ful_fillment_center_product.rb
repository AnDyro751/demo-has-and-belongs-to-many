class CreateJoinTableFulFillmentCenterProduct < ActiveRecord::Migration[6.0]
  def change
    create_join_table :fulfillment_centers, :products do |t|
      # t.index [:fulfillment_center_id, :product_id]
      # t.index [:product_id, :fulfillment_center_id]
    end
  end
end
