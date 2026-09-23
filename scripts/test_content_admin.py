import urllib.request
import urllib.parse
import http.cookiejar
import re

cj = http.cookiejar.CookieJar()
opener = urllib.request.build_opener(urllib.request.HTTPCookieProcessor(cj))

# 1. Login sebagai admin
resp = opener.open('http://localhost:8080/index.php?p=login')
html = resp.read().decode('utf-8', errors='ignore')
csrf_match = re.search(r'name="(_csrf_token_[^"]+)"\s+value="([^"]+)"', html)

data = urllib.parse.urlencode({
    'userName': 'admin',
    'passWord': 'admin',
    'logMeIn': 'Login',
    csrf_match.group(1): csrf_match.group(2)
}).encode('utf-8')
opener.open(urllib.request.Request('http://localhost:8080/index.php?p=login', data=data))

# 2. Periksa halaman Daftar Konten
content_resp = opener.open('http://localhost:8080/admin/modules/system/content.php')
content_html = content_resp.read().decode('utf-8', errors='ignore')

print("=== PENGUJIAN HALAMAN DAFTAR KONTEN ===")
list_terms = [
    'Konten',
    'Daftar Konten',
    'Tambahkan Data Baru',
    'Informasi Perpustakaan',
    'Bantuan & Panduan Pencarian',
    'Selamat Datang di Halaman Administrasi',
    'Informasi Beranda'
]
for term in list_terms:
    found = term in content_html
    print(f'Istilah "{term}": {"DITEMUKAN (OK)" if found else "TIDAK DITEMUKAN"}')

# 3. Periksa formulir Tambah Konten Baru
detail_resp = opener.open('http://localhost:8080/admin/modules/system/content.php?action=detail')
detail_html = detail_resp.read().decode('utf-8', errors='ignore')

print("\n=== PENGUJIAN FORMULIR KONTEN ===")
form_terms = [
    'Judul Konten',
    'Penyetelan Konten',
    'Diterbitkan pada',
    'Ini Berita',
    'Konsep?',
    'Simpan'
]
for ft in form_terms:
    found = ft in detail_html
    print(f'Label Formulir "{ft}": {"DITEMUKAN (OK)" if found else "TIDAK DITEMUKAN"}')
