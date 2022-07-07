class OCTOPUS < Oxidized::Model
  comment '# '
  prompt /\w*[$0-9>]/
  expect /-- more --/ do |data, re|
    send ' '
    data.sub re, ''
  end

  cmd 'config show'

  cfg :ssh do
    exec true
    pre_logout do
      send 'quit\n'
    end
  end

end
