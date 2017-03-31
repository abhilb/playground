#! /usr/env/python
from bs4 import BeautifulSoup as bs
import urllib.request


def main():
    print("Extract the names of all the halcon operators from the mvtec website")
    
    with urllib.request.urlopen('http://www.mvtec.com/doc/halcon/13/en/index_by_name.html') as response:
        page = response.read()
        soup = bs(page)
        soup.prettify()
        
        for anchor in soup.findAll('a', href=True):
            print(anchor['href'])


if __name__ == '__main__':
    main()
    


