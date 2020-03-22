from pathlib import Path

urls = Path('scrapers.txt').read_text().split()
key = '/data.sqlite?key=' + Path('secrets.txt').read_text().split()[0]
urls = [x + key for x in urls]
Path('input.txt').write_text('\n'.join(urls))