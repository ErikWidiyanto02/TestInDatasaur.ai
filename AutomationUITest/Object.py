class Aliases():
    from selenium import webdriver
    driver = webdriver.Firefox(executable_path=r'C:\\Python310\\Lib\\site-packages\\selenium\\webdriver\\firefox\\geckodriver.exe')
    url = 'https://en.wikipedia.org/wiki/SpaceX'
    founder = '/html/body/div[3]/div[3]/div[5]/div[1]/table[1]/tbody/tr[7]/td/a'
