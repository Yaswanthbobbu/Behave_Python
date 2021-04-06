from behave import *
from selenium import webdriver

@given('launch chrome browser')
def launchbrowser(context):
    context.driver=webdriver.Chrome()


@when('Open Orange HRM homepage')
def openhomepage(context):
    context.driver.get("https://opensource-demo.orangehrmlive.com/")


@then('Verify that the logo present on page')
def verify(context):
    status=context.driver.find_element_by_xpath("//*[@id='divLogo']/img").is_displayed()
    assert status is True


@then('close browser')
def closebrowser(context):
    context.driver.close()

