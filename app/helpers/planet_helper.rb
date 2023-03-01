module PlanetHelper
  def planet_helper(planet)
    'planets/' + planet.name.to_s + '.jpg'
  end
end
