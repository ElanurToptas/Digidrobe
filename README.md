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

