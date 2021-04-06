from behave import *
from selenium import webdriver

@given('launch my chrome browser')
def launchbrowser(context):
    context.driver=webdriver.Chrome()


@when('Open my Orange HRM homepage')
def openhrmlogin(context):
    context.driver.get("https://opensource-demo.orangehrmlive.com/")


@when('Enter credentials username  "{user}" and password "{pwd}"')
def step_impl(context,user,pwd):
    context.driver.find_element_by_id("txtUsername").send_keys(user)
    context.driver.find_element_by_id("txtPassword").send_keys(pwd)


@when('Click login button')
def step_impl(context):
    context.driver.find_element_by_id("btnLogin").click()


@then('user successfull login')
def step_impl(context):
    try:
        text=context.driver.find_element_by_xpath("//h1[contains(text(),'Dashboard')]").text
    except:
        context.driver.close()
        assert False, "Test Failed"

    if text == "Dashboard":
        context.driver.close()
        assert True, "Test Passed"







