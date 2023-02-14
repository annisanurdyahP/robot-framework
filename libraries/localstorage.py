from selenium import webdriver

wd = webdriver.chrome()
wd.get("http://localhost")
wd.execute_s