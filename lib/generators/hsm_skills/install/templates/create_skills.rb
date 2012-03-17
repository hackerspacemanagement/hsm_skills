class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string "name"
      t.text   "description"
      t.string "more_info_url"
      t.string "role_required_to_grant"

      t.timestamps
    end
  end
end

