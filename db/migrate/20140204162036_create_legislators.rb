class CreateLegislators < ActiveRecord::Migration
  def change
    create_table :legislators do |t|
      t.references :user, index: true
    end
  end
end
