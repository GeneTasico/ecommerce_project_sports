class AddDeviseToAdminUsers < ActiveRecord::Migration[8.0]
  def self.up
    change_table :admin_users do |t|
      # Add email column if it doesn't already exist
      unless column_exists?(:admin_users, :email)
        t.string :email, null: false, default: ""
      end

      # Add encrypted_password column if it doesn't already exist
      unless column_exists?(:admin_users, :encrypted_password)
        t.string :encrypted_password, null: false, default: ""
      end

      # Add other Devise-related fields
      unless column_exists?(:admin_users, :reset_password_token)
        t.string :reset_password_token
      end

      unless column_exists?(:admin_users, :reset_password_sent_at)
        t.datetime :reset_password_sent_at
      end

      unless column_exists?(:admin_users, :remember_created_at)
        t.datetime :remember_created_at
      end
    end

    # Add indexes if they don't already exist
    add_index :admin_users, :email, unique: true unless index_exists?(:admin_users, :email)
    add_index :admin_users, :reset_password_token, unique: true unless index_exists?(:admin_users, :reset_password_token)
  end

  def self.down
    # Reverse the changes in a safe manner
    remove_index :admin_users, :email if index_exists?(:admin_users, :email)
    remove_index :admin_users, :reset_password_token if index_exists?(:admin_users, :reset_password_token)

    # Remove columns if they exist
    remove_column :admin_users, :email if column_exists?(:admin_users, :email)
    remove_column :admin_users, :encrypted_password if column_exists?(:admin_users, :encrypted_password)
    remove_column :admin_users, :reset_password_token if column_exists?(:admin_users, :reset_password_token)
    remove_column :admin_users, :reset_password_sent_at if column_exists?(:admin_users, :reset_password_sent_at)
    remove_column :admin_users, :remember_created_at if column_exists?(:admin_users, :remember_created_at)
  end
end
