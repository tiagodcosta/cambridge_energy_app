require 'faker'

tip_data = [
  { text: 'Learn how to estimate what it costs to operate your appliances and how much energy they consume.'},
  { text: 'Replacing your conventional power strips with advanced power strips can help reduce the electricity wasted when electronics are idle, without your having to change the way you normally use your devices.'},
  { text: 'Close your exterior doors and windows tightly when the AC is on. Save even more by turning off kitchen and bath exhaust fans.'},
  { text: 'Open interior doors so that cooled air flows freely throughout your home.'},
  { text: 'Decorate for a cooler home by hanging light-colored curtains that allow light to enter a room while blocking some of the sun’s rays, and light-colored paint to reflect heat.'},
  { text: 'Install more ceiling fans. Because the breeze of a fan can make you feel three to four degrees cooler, you can raise that thermostat and still stay comfortable'},
  { text: 'Install a programmable thermostat to adjust your temperature during the day.'},
  { text: 'Raise the temperature on your thermostat by a few degrees to save on your cooling costs.'},
  { text: 'Insulate your walls with injected foam insulation to help you save energy by keeping hot outside air from seeping through porous block walls – check with your local building supply company for details.'},
  { text: 'Replace standard bulbs with LEDs. They are much more energy-efficient than regular bulbs.'},
  { text: 'Use motion-detector lights for all your outdoor lighting – they’re convenient and efficient.'},
  { text: 'Select light-colored or opaque lamp shades. Place lamps in corners so they reflect light from two walls.'},
  { text: 'Replace your five most-used light fixtures and/or bulbs with ENERGY STAR® products. If every American did so, we would save about $8 billion per year in energy costs.'},
  { text: 'Pull the plug on that second fridge located in the hot garage or utility room. '},
  { text: 'Repair refrigerator door seals if you feel cold air around the closed door or if moisture is collecting.'},
  { text: 'Keep your freezer full – it uses less energy than an empty one. For maximum savings, consider filling your freezer with gallon containers of water.'},
  { text: "Wash and dry several loads at once, so that your dryer isn't completely cooled down when it heats up for the next load."},
  { text: 'Hang dress clothing to air dry on portable laundry racks; they will also look better.'},
  { text: 'Clean the dryer lint filter before every load to keep your dryer running efficiently.'},
  { text: 'Eliminate "hot spots" in your home by using High-performance windows, solar window screens and qualified window films.'},
  { text: 'Consider high-performance windows before you replace your AC system. They’re so efficient that they may help reduce the size and cost needed for a AC system.'},
  { text: 'Avoid energy vampires. Even when they’re turned off, home electronics in “standby” mode use energy to power features like clock displays.'},
  { text: 'Unplug battery chargers when the batteries are fully charged or the chargers are not in use. Many chargers draw power continuously, even when the device is not plugged into the charger.'},
  { text: 'Plug electronics into a power strip, then turn the strip off when not in use to save in energy costs.'},
  { text: 'Grill out more often during the summer. Using the oven in the heat of summer forces your AC to work harder, which raises your energy bill.'},
  { text: 'Wash only full loads and use cold water'},
  { text: 'Keep water below 120 degrees'},
  { text: 'Fill dishwasher before running and turn off heated drying'},
  { text: 'Install low-flow fixtures on your shower and faucets'},
  { text: 'Insulate hot water pipes'},
  { text: 'Keep AC 78 degrees or higher'},
  { text: 'Replace your old light bulbs with LEDs'},
  { text: 'Consider going solar'},
  { text: 'Hang your clothing to dry'},
  { text: 'Upgrade to a new energy efficient refrigerator'},
  { text: 'Keeps the heat to 68 degrees or lower when home and 55-60 degrees when away sleeping.'},
  { text: 'Check for and plug air leaks'},
  { text: 'Install and replace insulation, including the attic and air ducts'},
  { text: 'Upgrade your furnace and replace oil with gas'},
  { text: "You can save 1-2\% on heating costs for every degree you turn down the thermostat."},
  { text: "Shut down your computer when you are not using it, on Windows, select 'Power Saver'. On Mac, select 'Energy Saver'."},
  { text: "Turn off your monitor instead of allowing the screensaver to take you through the galactic order."},
  { text: "Use the vent fan for 20 minutes immediately following you shower. Keeping the A/C off and going au natural feels good on your skin and is better for your energy usage."},
  { text: "Turn off 'heat dry' following your dish washing. Allowing those dishes to air dry will save you 15\% on your dishwasher energy costs."},
  { text: "Install solar powered lights in your garden to get give your plants a glow and to save energy and money on artificial lights."},
  { text: "Get more people to sign up to the challenge to increase the impact you are creating!"},
]

tips ||= tip_data.map { |tip| Tip.create(tip) }
