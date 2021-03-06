class AddOrderIdToSolidusSubscriptionsInstallmentDetails < ActiveRecord::Migration
  def change
    add_reference :solidus_subscriptions_installment_details, :order, index: true
    add_foreign_key :solidus_subscriptions_installment_details, :spree_orders, column: :order_id
  end
end
