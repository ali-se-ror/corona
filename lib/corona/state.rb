class Corona::State
  @@states = [["Alabama", "/data/state/alabama", "AL"], ["Alaska", "/data/state/alaska", "AK"], ["Arizona", "/data/state/arizona", "AZ"], ["Arkansas", "/data/state/arkansas", "AR"], ["California", "/data/state/california", "CA"], ["Colorado", "/data/state/colorado", "CO"], ["Connecticut", "/data/state/connecticut", "CT"], ["Delaware", "/data/state/delaware", "DE"], ["District of Columbia", "/data/state/district-of-columbia", "DC"], ["Florida", "/data/state/florida", "FL"], ["Georgia", "/data/state/georgia", "GA"], ["Guam", "/data/state/guam", "GU"], ["Hawaii", "/data/state/hawaii", "HI"], ["Idaho", "/data/state/idaho", "ID"], ["Illinois", "/data/state/illinois", "IL"], ["Indiana", "/data/state/indiana", "IN"], ["Iowa", "/data/state/iowa", "IA"], ["Kansas", "/data/state/kansas", "KS"], ["Kentucky", "/data/state/kentucky", "KY"], ["Louisiana", "/data/state/louisiana", "LA"], ["Maine", "/data/state/maine", "ME"], ["Maryland", "/data/state/maryland", "MD"], ["Massachusetts", "/data/state/massachusetts", "MA"], ["Michigan", "/data/state/michigan", "MI"], ["Minnesota", "/data/state/minnesota", "MN"], ["Mississippi", "/data/state/mississippi", "MS"], ["Missouri", "/data/state/missouri", "MO"], ["Montana", "/data/state/montana", "MT"], ["Nebraska", "/data/state/nebraska", "NE"], ["Nevada", "/data/state/nevada", "NV"], ["New Hampshire", "/data/state/new-hampshire", "NH"], ["New Jersey", "/data/state/new-jersey", "NJ"], ["New Mexico", "/data/state/new-mexico", "NM"], ["New York", "/data/state/new-york", "NY"], ["North Carolina", "/data/state/north-carolina", "NC"], ["North Dakota", "/data/state/north-dakota", "ND"], ["Northern Mariana Islands", "/data/state/northern-mariana-islands", "MP"], ["Ohio", "/data/state/ohio", "OH"], ["Oklahoma", "/data/state/oklahoma", "OK"], ["Oregon", "/data/state/oregon", "OR"], ["Pennsylvania", "/data/state/pennsylvania", "PA"], ["Puerto Rico", "/data/state/puerto-rico", "PR"], ["Rhode Island", "/data/state/rhode-island", "RI"], ["South Carolina", "/data/state/south-carolina", "SC"], ["South Dakota", "/data/state/south-dakota", "SD"], ["Tennessee", "/data/state/tennessee", "TN"], ["Texas", "/data/state/texas", "TX"], ["US Virgin Islands", "/data/state/us-virgin-islands", "VI"], ["Utah", "/data/state/utah", "UT"], ["Vermont", "/data/state/vermont", "VT"], ["Virginia", "/data/state/virginia", "VA"], ["Washington", "/data/state/washington", "WA"], ["West Virginia", "/data/state/west-virginia", "WV"], ["Wisconsin", "/data/state/wisconsin", "WI"], ["Wyoming", "/data/state/wyoming", "WY"]]

  def self.states
    @@states
  end

  def self.codes
    @@states.map { |code| code }
  end

  def self.get_state_url(code)
    @@states.each do |state|
      return state if state[2] == code
    end
    return nil
  end
end
