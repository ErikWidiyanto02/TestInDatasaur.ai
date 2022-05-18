from time import time
from selenium.common.exceptions import *
import time
from Object import Aliases


class run():
    Obj = Aliases()
    Obj.driver.maximize_window()
    Obj.driver.switch_to.window(Obj.driver.current_window_handle)
    time.sleep(2)
    Obj.driver.get(Obj.url)
    time.sleep(3)
    x = Obj.driver.find_element_by_xpath(Obj.founder).text
    time.sleep(3)
    Obj.driver.execute_script("window.scrollTo(200, 400)") 
    time.sleep(3)
    assert "Elon Musk" in x
    
run()
