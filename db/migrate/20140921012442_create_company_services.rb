class CreateCompanyServices < ActiveRecord::Migration
  def change
    create_table :company_services do |t|
      t.references("company")
      t.string :login_name
      t.string :password
      t.references("user")
      t.timestamps
    end
  end
end
