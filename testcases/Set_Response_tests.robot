*** Settings ***
Library    RequestsLibrary


*** Variables ***
${base_url}  http://localhost:1234
${path}     test
${state}    test

*** Test Cases ***
Set_Response
    Create Session  set_response_session  ${base_url}
    ${response}=  GET On Session  set_response_session  /set_response
    Log To Console  ${response.status_code}
    Log To Console  ${response.content}

    #validations
    ${status_code}=  Convert To String        ${response.status_code}
    Should Be Equal  ${status_code}  200

    ${body}=  Convert To String    ${response.content}





