# -*- coding: utf-8 -*-
# Configures your navigation
SimpleNavigation::Configuration.run do |navigation|
  navigation.items do |primary|
    primary.item :cars, 'Cars', cars_path
    primary.item :parts, 'Parts', parts_path
    primary.item :makes, 'Makes', makes_path
  end
end
