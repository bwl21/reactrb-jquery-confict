class Clock < React::Component::Base
  after_mount do
    `window.setInterval(#{lambda { force_update! }}, 1000);`
  end

  def render
    "Clock:  #{Time.now}"
  end
end
