# For Mikrotik SWOS
class SWOS < Oxidized::Model
  # For Mikrotik SWOS

  cmd '/backup.swb'
  cfg :digesthttp do
    @username = @node.auth[:username]
    @password = @node.auth[:password]
    @secure = false
  end
end
