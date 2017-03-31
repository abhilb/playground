#! /usr/env/python
from bs4 import BeautifulSoup as bs
import urllib.request


def main():
    target_url = 'http://www.mvtec.com/doc/halcon/13/en/index_by_name.html' 
    with urllib.request.urlopen(target_url) as response:
        page = response.read()
        soup = bs(page, "html.parser")
        soup.prettify()
        
        for anchor in soup.findAll('a', href=True):
            if '.html' in anchor['href']:
                print(anchor['href'].replace('.html',''))


if __name__ == '__main__':
    main()
    


