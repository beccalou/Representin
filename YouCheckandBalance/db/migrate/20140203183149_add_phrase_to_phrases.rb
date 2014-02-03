class AddPhraseToPhrases < ActiveRecord::Migration
  def change
    add_column :phrases, :phrase, :text
  end
end
