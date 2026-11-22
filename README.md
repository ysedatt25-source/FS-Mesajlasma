# FS Mesajlaşma

Android uygulaması için GitHub yayınları ve CircleCI test/derleme akışı.

- [İmzalı geliştirme APK](https://github.com/ysedatt25-source/FS-Mesajlasma/releases/download/v34.32-dev.1/FS-Mesajlasma-34.32-gelistirme.apk)
- [Kaynak kodu paketi](https://github.com/ysedatt25-source/FS-Mesajlasma/releases/download/v34.32-dev.1/FS-source-34.32-ci.1.zip)
- [Emoji varlıkları](https://github.com/ysedatt25-source/FS-Mesajlasma/releases/download/v34.32-dev.1/FS-emoji-assets-34.32.zip)
- [CircleCI sonuçları](https://app.circleci.com/pipelines/github/ysedatt25-source/FS-Mesajlasma)

Kaynak paketi sunucu, Android, web arayüzü, testler ve MariaDB uyarlamasını içerir. CircleCI kaynak ve emoji paketlerinin SHA-256 özetlerini doğrular, testleri çalıştırır ve imzasız APK derler. Özel imza anahtarı bu depoda bulunmaz. Yeni CI APK dosyası, yukarıdaki mevcut imzalı APK ile aynı dosya değildir.

Yerel son doğrulama: 30 Python testi, 7 kriptografi testi, 13 DOM akışı geçti. Fiziksel Android cihazı ve canlı iki cihaz aramaları doğrulanmadı.

**Geliştirme sürümüdür.** Canlı API, HTTPS ve TURN sunucusu kurulmadan kişiler arası internet mesajlaşması ve aramalar çalışmaz. GitHub ve CircleCI derleme/dağıtım için kullanılır; sürekli çalışan mesajlaşma sunucusu bu akışta yoktur.

Yerel kullanım: kaynak paketini açın; Python 3.12+, Node 22+, Java 21+ kullanın. `pip install -r server/requirements.txt`, `npm ci`, ardından `python tools/fetch_assets.py`, `python tools/setup_android.py`, `python tools/build_android.py` çalıştırın. İmzalama için kendi mevcut anahtarınızı `docs/BUILD.md` talimatlarına göre yalnız güvenli ortamda kullanın.
