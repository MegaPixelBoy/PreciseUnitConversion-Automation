require 'appium_lib'

def caps
{ caps: {
    deviceName: "Tutorial",
    platformName: "Android",
    app: File.join(File.dirname(__FILE__), 'PreciseUnitConversion.apk'),
    appPackage: 'com.ba.universalconverter',
    appActivity: 'MainConverterActivity',
    newCommandTimeout: '3600'
} }
end

Appium::Driver.new(caps, true)
# Make all Appium lib methods available inside our step definitions
Appium.promote_appium_methods Object
