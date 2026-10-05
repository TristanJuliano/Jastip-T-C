# T&C Jastip — Vercel + Supabase

## Isi folder
- `index.html` — halaman customer
- `admin.html` — halaman admin untuk buka/tutup website dan mengatur jadwal
- `config.js` — isi URL dan publishable/anon key Supabase
- `setup.sql` — tabel dan RLS Supabase

## Setup singkat
1. Buat project di Supabase.
2. Buka SQL Editor dan jalankan `setup.sql`.
3. Buat akun admin di Authentication > Users.
4. Isi `config.js` dengan Project URL dan publishable/anon key dari Supabase.
5. Upload semua file ke GitHub repository yang sudah terhubung ke Vercel.
6. Buka `/admin.html` untuk mengatur status website.

Jangan pernah memasukkan `service_role` key ke `config.js`.
