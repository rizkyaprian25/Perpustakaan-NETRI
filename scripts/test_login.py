import urllib.request
import urllib.parse
import http.cookiejar
import re

def test_login(username, password):
    cj = http.cookiejar.CookieJar()
    opener = urllib.request.build_opener(urllib.request.HTTPCookieProcessor(cj))

    resp = opener.open('http://localhost:8080/index.php?p=login')
    html = resp.read().decode('utf-8', errors='ignore')

    csrf_match = re.search(r'name="(_csrf_token_[^"]+)"\s+value="([^"]+)"', html)
    if not csrf_match:
        print(f'[{username}] CSRF token not found!')
        return False

    csrf_name, csrf_val = csrf_match.group(1), csrf_match.group(2)

    data = urllib.parse.urlencode({
        'userName': username,
        'passWord': password,
        'logMeIn': 'Login',
        csrf_name: csrf_val
    }).encode('utf-8')

    req = urllib.request.Request('http://localhost:8080/index.php?p=login', data=data)
    resp2 = opener.open(req)
    cookie_names = [c.name for c in cj]

    success = 'admin' in resp2.geturl() or 'admin_logged_in' in cookie_names
    print(f'Login [{username}] -> Code: {resp2.getcode()}, URL: {resp2.geturl()}, Cookies: {cookie_names} => {"BERHASIL (OK)" if success else "GAGAL"}')
    return success

print("=== PENGUJIAN OTENTIKASI ADMIN & EMAIL ===")
test_login('admin', 'admin')
test_login('superadmin@admin.com', 'admin')
