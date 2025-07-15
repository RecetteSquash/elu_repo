*** Settings ***
Documentation    CasBDD1
Metadata         ID                           33307
Metadata         Automation priority          null
Metadata         Test case importance         Low
Resource         squash_resources.resource
Test Setup       Test Setup
Test Teardown    Test Teardown


*** Test Cases ***
CasBDD1
    [Documentation]    CasBDD1


*** Keywords ***
Test Setup
    [Documentation]    test setup
    ...                You can define the ${TEST_SETUP} variable with a keyword for setting up all your tests.
    ...                You can define the ${TEST_33307_SETUP} variable with a keyword for setting up this specific test.
    ...                If both are defined, ${TEST_33307_SETUP} will be run after ${TEST_SETUP}.

    ${TEST_SETUP_VALUE} =          Get Variable Value    ${TEST_SETUP}
    ${TEST_33307_SETUP_VALUE} =    Get Variable Value    ${TEST_33307_SETUP}
    IF    $TEST_SETUP_VALUE is not None
        Run Keyword    ${TEST_SETUP}
    END
    IF    $TEST_33307_SETUP_VALUE is not None
        Run Keyword    ${TEST_33307_SETUP}
    END

Test Teardown
    [Documentation]    test teardown
    ...                You can define the ${TEST_TEARDOWN} variable with a keyword for tearing down all your tests.
    ...                You can define the ${TEST_33307_TEARDOWN} variable with a keyword for tearing down this specific test.
    ...                If both are defined, ${TEST_TEARDOWN} will be run after ${TEST_33307_TEARDOWN}.

    ${TEST_33307_TEARDOWN_VALUE} =    Get Variable Value    ${TEST_33307_TEARDOWN}
    ${TEST_TEARDOWN_VALUE} =          Get Variable Value    ${TEST_TEARDOWN}
    IF    $TEST_33307_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_33307_TEARDOWN}
    END
    IF    $TEST_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_TEARDOWN}
    END
