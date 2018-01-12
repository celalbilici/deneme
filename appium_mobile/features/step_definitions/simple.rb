When(/^browserdan "([^"]*)" açılır$/) do |arg|
  # samsung a3 =R28J613N0QZ,  lenovo=HB0SVZ81
  desired_caps = {
      caps:  {
          platformName:  'Android',
          platformVersion: '7.0',
          deviceName: 'R28J613N0QZ',
          browserName: 'Chrome',
      }
  }
  @appium_driver =Appium::Driver.new(desired_caps ,  true)
  @selenium_driver=@appium_driver.start_driver
  Appium.promote_appium_methods Object
  @selenium_driver.get("http://www.google.com")
  # ::Appium::Core::TouchAction::COMPLEX_ACTIONS
  element=@selenium_driver.find_element(name: 'q')
  element.click
  element.send_keys 'ziraat bankası'
  element.send_keys :enter
  driver.quit


  # desired_caps = {
  #     caps:  {
  #         platformName:  'Android',
  #         platformVersion: '5.1',
  #         deviceName: 'Nexus_5_API_22_x86',
  #         browserName: 'Browser',
  #     }
  # }
  # @appium_driver =Appium::Driver.new(desired_caps ,  true)
  # @selenium_driver=@appium_driver.start_driver
  # Appium.promote_appium_methods Object
  # # Appium.promote_appium_methods RSpec::Core::ExampleGroup
  # # Appium.promote_appium_methods Minitest::Spec

  # require 'selenium-webdriver'
  #
  # @selenium_driver.get("http://www.google.com/")
  # sleep 3
  # #searchBox  id='lst_ib'
  # element=find_element(:id,'lst_ib')
  # sleep 3
  # element.click
  # sleep 2
  # element.send_keys 'ziraat bankası'
  # #search button id="tsbb"
  # element=find.element(:id, 'tsbb')
  # element.click
  # sleep 5
  # driver.quit

end

When(/^arama motoruna "([^"]*)" yazılıp tıklanır$/) do |arg|
  sleep 2
  # element=find_element(:class, 'before-login-button')
  # element.click

 #searchBox  id='lst_ib'
 element=find_element(:id,'lst_ib')
 element.click
 element.send_keys 'arg'
 #search button id="tsbb"
 element=find.element(:id, 'tsbb')
 element.click
 sleep 5

end

When(/^ziraatmobil apk sı açılır$/) do
  desired_caps = {
      caps:  {
          platformName:  'Android',
          platformVersion: '7.0',
          deviceName: 'R28J613N0QZ',
          appPackage: 'com.ziraat.ziraatmobil',
          app: 'C:\Users\LENOVO\Desktop\Ziraat Mobil_com.ziraat.ziraatmobil 1 1.apk'
      
      }
  }
 @driver = Appium::Driver.new(desired_caps ,  true)
  @driver.start_driver
  Appium.promote_appium_methods Object
end

When(/^havale işlemi greçekleşirilir$/) do

find_element(id: "login_button_image").click
find_element(id: "cet_login_txt_username").send_keys '44311003534'
find_element(id: "et_login_txt_password").send_keys ''
find_element(id: "b_login").click
find_element(id: "tv_right_text").click
find_element(id: "b_login").click
find_elements(id: "grid_item_label")[1].click
text('Vadesiz Hesabıma').click
text('Hesap No: 2487 - 46893619 - 5007').click
text('Hesap No: 2487 - 46893619 - 5006').click
find_element(id: "tv_payment_amount_hint").send_keys '1'
find_element(id: "et_transition_description").send_keys 'appium deneme'
find_element(id: "tv_next").click
 find_element(id: "bt_accept_send").click
find_element(id: "bt_back_to_index").click
sleep 2
#
# find_element(id: "login_button_image").click
#
# find_element(id: "login_button_image").click










end

When(/^hepsiburada apk sı açılır$/) do
  # HB0SVZ81   , R28J613N0QZ
  desired_caps = {
      caps:  {
          platformName:  'Android',
          platformVersion: '7.0',
          deviceName: 'R28J613N0QZ',
          appPackage: 'com.pozitron.hepsiburada',
          app: 'C:\Users\LENOVO\Desktop\Hepsiburada_com.pozitron.hepsiburada.apk'

      }
  }
  @driver = Appium::Driver.new(desired_caps ,  true)
  @driver.start_driver
  Appium.promote_appium_methods Object
end

When(/^"([^"]*)" aranıp sepete atılır$/) do |arg|
  find_element(id: "etLoginEmail").send_keys 'celalbilici11@gmail.com'
  find_element(id: "etLoginPassword").click
  find_element(id: "etLoginPassword").send_keys 'ATUlisfinpedHe7'
  find_element(id: "btnLoginLogin").click
  find_element(id: "button1").click
  Appium::TouchAction.new.tap(x: 0.99, y: 0.99, count: 1).perform
  sleep 1
  Appium::TouchAction.new.tap(x: 40, y: 50, count: 1).perform
  sleep 2
  element = find_element(accessibility_id: "Kampanya")
  Appium::TouchAction.new.swipe(element, ele = nil)
  # Appium::TouchAction.new.press(x: 500, y: 425).wait(15000).release
  # Appium::TouchAction.new.swipe({start_x: 500, start_y: 500, offset_x: -425, offset_y: 0, duration: 500})


  find_element(id: "tv_home_search").click
  find_element(id: "etACBSearchBox").send_keys arg
  find_element(id: "etACBSearchBox").click
  Appium::TouchAction.new.tap(x: 651 , y: 1223, count: 1).perform
  sleep 1
  # find_element(id: "etACBSearchBox").send_keys enter
  Appium::TouchAction.new.tap(x: 40 , y: 50, count: 1).perform
  sleep 1
  Appium::TouchAction.new.tap(x: 40 , y: 50, count: 1).perform
  sleep 1
 element = find_element(accessibility_id: "Kampanya")
  element.touch_action(:flick, axis: 'x', distance:200, duration:50 )

  # Appium.promote_appium_methods Object
  # find_elements(id: "tv_product_list_item_name")[0].click
  # text('Space Gray').click
  # text('Sepete Ekle').click
  # find_element(accessibility_id: "Sepetim").click
  # sleep 3
  # text('Alışverişi Tamamla').click





    # text('Apple iPhone 8 Plus 64 GB (Apple Türkiye Garantili)').click
  # sleep 1
  # text('Sepete Ekle').click
  # sleep 2



  # find_elements(id: "grid_item_label")[1].click
  # text('Vadesiz Hesabıma').click

end