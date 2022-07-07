# For Mikrotik SWOS
class SWOS < Oxidized::Model
  # For Mikrotik SWOS

  cmd '/backup.swb'
  cfg :digesthttp do
    @secure = false
  end
end
