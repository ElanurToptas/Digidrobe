# My DigiDrobe 👗📱

My DigiDrobe, kullanıcıya özel dijital gardırop deneyimi sunmayı hedefleyen bir Flutter mobil uygulamasıdır.  
Uygulama, onboarding sürecinde kullanıcıdan alınan bilgileri yönetir ve kişiselleştirilmiş bir ana sayfa ve profil deneyimi sunar.

---

## 🚀 Özellikler

### Landing Screen
- Video arka planlı karşılama ekranı
- Apple / Google / Misafir ile devam et (UI)

### Onboarding (2 Adım)
- Kullanıcı adı
- Cinsiyet
- Doğum tarihi
- Adım bazlı ilerleme göstergesi

### Paywall Ekranı
- UI odaklı
- Ödeme entegrasyonu yok

### Anasayfa
- Editör önerileri
- Yapay zeka öneri alanı (UI)
- Yatay ürün listeleri
- Modüler widget yapısı

### Profil Ekranı
- Kullanıcı bilgilerini görüntüleme

### Profil Düzenleme Ekranı
- Kullanıcı adı düzenleme
- Cinsiyet düzenleme
- Doğum tarihi düzenleme

### İşlem / Aksiyon Ekranı
- Kullanıcı etkileşimine yönelik aksiyon alanı (UI)

---

## 🧠 Kullanılan Teknolojiler

- Flutter
- Material 3
- Provider (State Management)
- GoRouter (Navigation)
- Firebase (Opsiyonel)

---

## 🗂️ State Management

Kullanıcı bilgileri Provider kullanılarak yönetilmektedir.

```dart
class UserModel {
  final String name;
  final String gen;
  final DateTime date;

  UserModel({
    required this.name,
    required this.gen,
    required this.date,
  });
}
```
Onboarding ekranında girilen bilgiler UserProvider aracılığıyla saklanır
Kullanıcı bilgileri uygulama genelinde tek bir state üzerinden yönetilir
Profil ve Profil Düzenleme ekranlarında bu veriler okunur ve güncellenir
Firebase kullanılmadan lokal state yapısı ile çalışır

## 🔀 Navigasyon Yapısı

Navigasyon yapısı GoRouter kullanılarak oluşturulmuştur.
- /               → Landing Screen
- /onboarding1    → Onboarding Adım 1
- /onboarding2    → Onboarding Adım 2
- /paywall        → Paywall Ekranı
- /home           → Anasayfa
- /profile        → Profil Ekranı
- /edit-profile   → Profil Düzenleme Ekranı

Sayfalar arası geçişler context.go() ile sağlanmaktadır
Bottom Navigation Bar üzerinden ana sayfalar arasında geçiş yapılır

## 🔥 Firebase Durumu

Firebase projesi oluşturulmuştur
firebase_options.dart dosyası projeye eklenmiştir
Billing gereksinimi nedeniyle aktif Firestore kullanımı kapatılmıştır
Firebase entegrasyonu opsiyonel olarak hazır durumdadır
İleride kullanıcı verilerinin backend’e taşınmasına uygundur

## 👩‍💻 Geliştirici

Elanur Toptaş
Flutter & Frontend Developer


