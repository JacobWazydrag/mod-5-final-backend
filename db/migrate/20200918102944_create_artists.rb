class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :email
      t.string :username
      t.string :password_digest
      t.string :profile_picture
      t.text :bio
      t.string :first_name
      t.string :last_name
      t.string :instagram_url
      t.string :facebook_url
      t.string :fav_color

      t.timestamps
    end
  end
end
