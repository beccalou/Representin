class CreatePhrases < ActiveRecord::Migration
  def change
    create_table :phrases do |t|
    	t.body :text
      t.references :user, index: true
    end
  end
end
