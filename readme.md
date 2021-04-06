Dependencies : 
Package : pip install behave 
          scoop install allure
          pip install allure-behave
plugin  : Gherkin
Folders : Features,Steps
cmd exc : behave ./Features
          behave -f allure_behave.formatter:AllureFormatter -o Reports/ Features (/single.feature)  {json format}
          allure serve Reports/
Advantages : 
All stakeholders are on the same page and collectively work towards making the product better 
Gherkin: every team member can participate in test creation,
more reusable and modular when compared to TDD tests as changes in the business or feature specification will lead to minimal changes 
BDD tests have an improved shelf-life in comparison to TDD


Disadvantages :
No parallel execution
Not straigtht forward in sharing steps for different feature files
                
