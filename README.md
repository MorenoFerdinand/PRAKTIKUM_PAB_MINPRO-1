# Aplikasi Manajemen Pengajuan Beasiswa

Aplikasi **Manajemen Pengajuan Beasiswa** adalah platform berbasis mobile yang dikembangkan menggunakan framework **Flutter**. Aplikasi ini dirancang untuk memudahkan manajemen data beasiswa melalui antarmuka yang bersih, intuitif, dan responsif.

---

## Deskripsi Aplikasi
Aplikasi ini berfungsi sebagai alat bantu administrasi untuk mencatat dan mengelola daftar beasiswa. Fokus utama aplikasi adalah pada **hierarki informasi**, di mana pengguna dapat melihat data beasiswa yang dikelompokkan berdasarkan penyelenggaranya. Dengan sistem manajemen data yang dinamis, aplikasi ini sangat cocok digunakan untuk memantau berbagai program bantuan pendidikan.

---

## Fitur Utama
Aplikasi ini telah saya buat dengan fungsi manajemen data lengkap (CRUD) + nilai tambah (Navigasi antar halaman):

* **Create (Tambah Data)**: Menambahkan entri beasiswa baru melalui formulir input.
* **Read (Tampilkan Data)**: Penyajian data secara hierarkis pada setiap kartu beasiswa dengan urutan:
    1.  **Nama Beasiswa** (Header)
    2.  **Instansi Penyelenggara** (Title)
    3.  **Persyaratan Utama** (Description)
* **Update (Ubah Data)**: Memperbarui informasi yang sudah ada secara langsung dengan fitur *passing data* antar halaman.
* **Delete (Hapus Data)**: Menghapus data dari daftar secara *real-time* dengan manajemen State.

#### Nilai Tambah

* **Multi-Page Navigation**: Pemisahan halaman yang jelas antara Daftar Utama (Home) dan Formulir (Form) menggunakan `Navigator`.

## Widget yang Digunakan
Aplikasi ini dibuat menggunakan berbagai widget fundamental Flutter untuk memastikan performa dan tampilan yang optimal:

| Jenis Widget | Fungsi |
| :--- | :--- |
| **Scaffold** | Struktur dasar halaman aplikasi (AppBar, Body, FloatingActionButton). |
| **ListView.builder** | Merender daftar beasiswa secara dinamis dan efisien. |
| **TextField** | Digunakan untuk 3 input utama: Nama, Penyelenggara, dan Syarat. |
| **Card & ListTile** | Membungkus informasi beasiswa agar terstruktur dan rapi. |
| **Column & Row** | Mengatur tata letak vertikal (Penyelenggara > Nama > Syarat) dan horizontal. |
| **ElevatedButton** | Tombol utama untuk memproses penyimpanan data pada form. |
| **StatefulWidget** | Mengelola perubahan data agar tampilan diperbarui secara otomatis. |

#### Nilai Tambah

| Jenis Widget | Fungsi |
| :--- | :--- |
| **Navigator** | Menangani perpindahan halaman (Multi-page Navigation). |

---

## Struktur Project
```text
lib/
├── models/
│   └── scholarship.dart
├── screen/
│   ├── home_screen.dart
│   └── form_screen.dart
├── widgets/
│   └── scholarship_card.dart
└── main.dart
```

## Lampiran
##### Tampilan awal, pada bagian bar atas berwarna biru, dan ada tulisan `Manajemen Beasiswa`, lalu dibagian tengah layar putih ada tulisan `Belum ada data beasiswa.`dikarenakan data masih kosong, dan juga terlihat pada pojok kanan bawah yang bertanda `+` untuk input data.
<img width="1920" height="1080" alt="Screenshot (482)" src="https://github.com/user-attachments/assets/3bf3e83d-5bcb-4fd8-8abb-4f7a3069085a" />

##### Tampilan Create, ketika ingin membuat pengajuan beasiswa, tombol/button navigasi bar bertuliskan `Simpan Pengajuan`.
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/7d042058-d3e3-4794-97e3-03fb3129ffcb" />

##### Tampilan Read, ketika sudah mengisi form beasiswa akan terlihat semua data-data yang telah di isi.
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/bcb993c0-a99d-49be-9914-5ee2e30ca303" />

##### Tampilan Delete, ketika ingin menghapus data beasiswa, maka data tersebut langsung akan terhapus.

###### Before:
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/be18f740-e260-4f2d-9f75-992d6f8b94e0" />

###### After:
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/2bc1c8ac-d118-4c23-b41c-6775ab28a246" />

#### Nilai Tambah
##### Tampilan Update, ketika ingin merubah data beasiswa, tombol/button navigasi bar bertulisakan `Simpan Perubahan`.
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/1098fa59-c3a3-4b11-b8a9-49e98e88cb41" />
