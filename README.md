# FS Mesajlaşma

[İmzalı APK — 34.32 düzeltme 2](https://github.com/ysedatt25-source/FS-Mesajlasma/releases/download/v34.32-dev.1/FS-Mesajlasma-34.32-duzeltme2-imzali.apk)

Ekran görüntüsü engeli kaldırıldı. Hesap şifresi en az 6 karakter; hesap makinesi PIN’i en az 6 rakam. Android versionCode 2, aynı yayın sertifikası.

Kayıtta yanlışlıkla yerel APK arayüzüne API isteği gönderilmesi önlendi. Sunucu adresi sağlık kontrolünden geçmeden kaydedilmez. Eksik sunucu ve ağ hataları açıklanır.

[Kaynak paketi](https://github.com/ysedatt25-source/FS-Mesajlasma/releases/download/v34.32-dev.1/FS-source-34.32-ci.2.zip) · [Emoji varlıkları](https://github.com/ysedatt25-source/FS-Mesajlasma/releases/download/v34.32-dev.1/FS-emoji-assets-34.32.zip) · [CircleCI](https://app.circleci.com/pipelines/github/ysedatt25-source/FS-Mesajlasma)

Yerel doğrulama: 32 sunucu testi, 12 bağlantı/kriptografi testi ve 13 DOM akışı geçti. Altı karakterli şifreyle kayıt/giriş test edildi. APK imzası doğrulandı. Fiziksel Android cihaz testi yapılmadı.

**Canlı API sunucusu kurulmadı.** Bu dosya geliştirme sürümüdür; internet üzerinden kayıt, mesajlaşma ve arama için sürekli çalışan güncel HTTPS API/TURN sunucusu gerekir. GitHub indirme ve CircleCI derleme hizmetidir. 404 düzeltmesi bu sunucuyu kurmaz.

CI kaynak ve emoji paketlerini SHA-256 ile doğrular, testleri çalıştırır ve imzasız Android APK üretir. İmzalama mevcut özel anahtarla ayrı güvenli adımda yapılır; özel anahtar depoda bulunmaz.
