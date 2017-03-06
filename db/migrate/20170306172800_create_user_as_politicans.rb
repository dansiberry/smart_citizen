class CreateUserAsPoliticans < ActiveRecord::Migration[5.0]
  def change
    create_table :user_as_politicans do |t|
      t.boolean :elected
      t.string :political_party
      t.string :office
      t.string :bio
      t.string :responsabilities
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
