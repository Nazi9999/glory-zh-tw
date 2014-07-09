# -*- encoding : utf-8 -*-
class Setting < Settingslogic
  source "#{Rails.root}/config/y"
  namespace Rails.env
end
