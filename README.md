<<<<<<< HEAD
T&C Jastip - Vercel Ready

Versi ini sudah tanpa PHP dan tanpa backend/server.
File utama: index.html

Deploy ke Vercel:
1. Upload folder/project ini ke GitHub.
2. Import repository tersebut di Vercel.
3. Framework Preset: Other.
4. Build Command: kosongkan.
5. Output Directory: kosongkan.
6. Deploy.

Catatan:
- Form mengirim detail pesanan langsung ke WhatsApp admin.
- Nomor WhatsApp admin disimpan di JavaScript pada index.html.
=======
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
>>>>>>> 88d701c19af6ecd045173d9fa294d571c54fe094
