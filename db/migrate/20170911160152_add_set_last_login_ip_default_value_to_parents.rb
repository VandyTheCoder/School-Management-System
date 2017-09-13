class AddSetLastLoginIpDefaultValueToParents < ActiveRecord::Migration[5.1]
  def up
    change_column :parents, :last_login_ip, :string, default: '127.0.0.1'
  end

  def down
    change_column :parents, :last_login_ip, :string, default: nil
  end
end
