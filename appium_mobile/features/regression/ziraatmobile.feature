#encoding: UTF-8
# language: tr


Özellik: ziraat mobile otomasyon

  Senaryo: ziraat hesap hareketleri test
    Diyelim ki ziraat mobil uygulaması android bir cihaz uzerinden acılmış olsun
      | platformName    | Android                                                               |
      | platformVersion | 5.0.2                                                                  |
      | deviceName      | SH3AFW905448                                                           |
      | appPackage      | com.ziraat.ziraatmobile.beta                                          |
      | app             | C:\Users\lenovo\Desktop\Ziraat Mobil_com.ziraat.ziraatmobile.beta.apk |
      | appActivity     | com.veripark.ziraatmobile.screens.splash.activities.SplashActivity    |
    Ve uygulama izni verilir ve "Giriş Yap" butonuna tıklanır
    Ve uygulamaya aşağıdaki bilgilerle giriş yapılır
      | customerNo | 56565656 |
      | password1  | 13579    |
      | password2  | 1234ab   |
    Ve menu ikonuna tıklanır
    Ve "Hesaplarım" sekmesine tıklanır
    Ve "Tüm Hesaplarım" sekmesine tıklanır
    Ve "KONAK - 5002" hesabı seçilir
    Ve "Hesap Hareketleri" ne tıklanır
    Ve "01 Haziran 2018" ile "01 Temmuz 2018" tarihleri arası filtrelenir
    Ve "1000" ile "2000" arası tutar filtrelenir
    Ve işlem tipi "Tümü" seçilir
    Ve "FİLTRELE" butonuna tıklanır
    Ve geri dönmek için "Yukarı git" butonuna tıklanır
    Ve geri dönmek için "Yukarı git" butonuna tıklanır
    Ve geri dönmek için "Yukarı git" butonuna tıklanır
    Ve geri dönmek için "Yukarı git" butonuna tıklanır

  Senaryo: ziraat virman
    Diyelim ki ziraat mobil uygulaması android bir cihaz uzerinden acılmış olsun
      | platformName    | Android                                                               |
      | platformVersion | 5.0.2                                                                 |
      | deviceName      | SH3AFW905448                                                          |
      | appPackage      | com.ziraat.ziraatmobile.beta                                          |
      | app             | C:\Users\lenovo\Desktop\Ziraat Mobil_com.ziraat.ziraatmobile.beta.apk |
      | appActivity     | com.veripark.ziraatmobile.screens.splash.activities.SplashActivity    |
    Ve uygulama izni verilir ve "Giriş Yap" butonuna tıklanır
    Ve uygulamaya aşağıdaki bilgilerle giriş yapılır
      | customerNo | 56565656 |
      | password1  | 13579    |
      | password2  | 1234ab   |
    Ve menu ikonuna tıklanır
    Ve "Para Transferleri" sekmesine tıklanır
    Ve "Hesaplarım Arası Transfer (Virman)" sekmesine tıklanır
    Ve "KONAK - 5002" hesabı seçilir
    Ve "KORDON - 5001" hesabı seçilir
    Ve aktarılacak tutar alanına "1500" yazılır
    Ve işlem onaylanır
    #Ve dekont için "cbilici@ziraatteknoloji.com" mail adresi seçilir









