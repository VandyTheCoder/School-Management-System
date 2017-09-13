class AddSetLastLoginIpDefaultValueToTeachers < ActiveRecord::Migration[5.1]
  def up
    change_column :teachers, :last_login_ip, :string, default: '127.0.0.1'
  end

  def down
    change_column :teachers, :last_login_ip, :string, default: nil
  end
end
