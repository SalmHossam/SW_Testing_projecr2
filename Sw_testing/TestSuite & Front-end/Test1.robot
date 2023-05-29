*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}            file:///C:/Users/user/Desktop/Assignment%203/Software-Testing-Assi3-Frontend/todo.html
${TODO}           TODO1
${DESCRIP}        This is my first todo list
${TODOpath}       Xpath://*[@id="todo"]
${delete_button}    Xpath://*[@id="row-1"]/td[5]/button
${Submit}         Xpath://*[@id="todo-form"]/button
${BROWSER}        gc

*** Test Cases ***
TC1
    OpenBrowser    ${CURDIR}${/}todo.html    ${BROWSER}
    Input Text    ${TODOpath}    ${TODO}
    Sleep    0.3
    Input Text    Xpath://*[@id="desc"]    ${DESCRIP}
    Click Button    ${Submit}
    Element Text Should Be    Xpath://*[@id="row-1"]/td[2]    ${TODO}
    Clear Element Text    ${TODOpath}

TC2
    Open Browser    ${CURDIR}${/}todo.html    ${BROWSER}
    Input Text    ${TODOpath}    ${TODO}
    Sleep    0.3
    Input Text    Xpath://*[@id="desc"]    ${DESCRIP}
    Click Button    ${Submit}
    Click Button    ${delete_button}
    Element Should Not Be Visible    Xpath://*[@id="row-1"]

TC3
    Open Browser    ${CURDIR}${/}todo.html    ${BROWSER}
    Input Text    ${TODOpath}    ${TODO}
    Sleep    0.3
    Input Text    Xpath://*[@id="desc"]    ${DESCRIP}
    Click Button    ${Submit}
    Click Element    Xpath://*[@id="checkbox-1"]
    Element Should Be Enabled    Xpath://*[@id="checkbox-1"]

T4
    Open Browser    ${CURDIR}${/}todo.html    ${BROWSER}
    Input Text    ${TODOpath}    ${TODO}
    Sleep    0.3
    Input Text    Xpath://*[@id="desc"]    ${DESCRIP}
    Click Button    ${Submit}
    Input Text    ${TODOpath}    ${TODO}
    Sleep    0.3
    Input Text    Xpath://*[@id="desc"]    ${DESCRIP}
    Click Button    ${Submit}
    Input Text    ${TODOpath}    ${TODO}
    Sleep    0.3
    Input Text    Xpath://*[@id="desc"]    ${DESCRIP}
    Click Button    ${Submit}
    Click Button    Xpath:/html/body/div/div/div[2]/button[1]

T5
    Open Browser    ${CURDIR}${/}todo.html    ${BROWSER}
    Input Text    ${TODOpath}    ${TODO}
    Sleep    0.3
    Input Text    Xpath://*[@id="desc"]    ${DESCRIP}
    Click Button    ${Submit}
    Click Element    Xpath://*[@id="checkbox-1"]
    Element Should Be Enabled    Xpath://*[@id="checkbox-1"]
    Input Text    ${TODOpath}    ${TODO}
    Sleep    0.3
    Input Text    Xpath://*[@id="desc"]    ${DESCRIP}
    Click Button    ${Submit}
    Click Element    Xpath://*[@id="checkbox-2"]
    Element Should Be Enabled    Xpath://*[@id="checkbox-2"]
    Input Text    ${TODOpath}    ${TODO}
    Sleep    0.3
    Input Text    Xpath://*[@id="desc"]    ${DESCRIP}
    Click Button    ${Submit}
    Click Button    Xpath:/html/body/div/div/div[2]/button[2]
