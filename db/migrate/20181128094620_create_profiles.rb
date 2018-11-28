class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
    	t.integer :user_id
    	t.string :first_name
    	t.string :last_name
    	t.string :job_title
    	t.string :phoneno
    	t.string :contact_email
    	t.string :description
    	t.timestamps
    end
  end
end
