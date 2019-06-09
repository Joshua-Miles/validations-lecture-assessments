class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.belongs_to :airline, foreign_key: true
      t.belongs_to :traveler, foreign_key: true
      t.timestamps
    end
  end
end
