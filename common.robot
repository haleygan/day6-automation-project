*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary

*** Keyword ***
Login
    [arguments]     ${email}    ${pw}
     Open Browser    https://app.deriv.com   chrome
     maximize browser window
#	 Set window     1280    1028
     wait until page does not contain element    ${header_preloader}   60
	 wait until page contains element   ${login_btn}     15
	 Click Element   ${login_btn}
     wait until page contains element   ${email_field}      15
	 input text     ${email_field}      ${email}
	 input text     ${pw_field}      ${pw}
	 Click Element   ${login_oauth_btn}

SwitchVirtualAccount
    wait until page does not contain element   ${header_preloader}     60
    wait until page contains element    ${deriv_accounts}   60
    wait until element is visible   ${deriv_accounts}   60
    click element   ${deriv_accounts}
    wait until page contains element  ${demo_tab}     20
    click element  ${demo_tab}
    wait until page contains element   ${virtual_account}     20
    click element   ${virtual_account}

BuyRiseContract
    wait until page does not contain element   ${header_preloader}     60
    wait until page does not contain element    ${chart_loader}     60
    wait until page contains element    ${asset_menu}    60
    wait until element is visible   ${asset_menu}    60
    click element   ${asset_menu}
    wait until page contains element    ${synthetic_indices}    20
    wait until element is visible   ${synthetic_indices}    20
    click element   ${synthetic_indices}
    wait until page contains element    ${volatility_10_1s}     20
    wait until element is visible   ${volatility_10_1s}     20
    click element   ${volatility_10_1s}
    wait until page does not contain element   ${header_preloader}     60
    wait until page does not contain element    ${chart_loader}     60
    wait until page contains element    ${trade_types_btn}      60
    click element   ${trade_types_btn}
    wait until page contains element    ${rise_or_fall_btn}  20
    click element   ${rise_or_fall_btn}
    wait until page contains element    ${tick_btn}     20
    click element   ${tick_btn}
#    click element    ${slider_value}
    wait until page contains element    ${stake_btn}    20
    click element   ${stake_btn}
    press keys  ${value_input}  CTRL+A+BACKSPACE
    input text  ${value_input}  10
    wait until page contains element    ${buy_call_btn}     20
    wait until element is visible   ${buy_call_btn}   20
    wait until element is enabled   ${buy_call_btn}   20
    click element   ${buy_call_btn}

BuyLowerContract
    wait until page does not contain element   ${header_preloader}     60
    wait until page does not contain element    ${chart_loader}     60
    wait until page contains element    ${asset_menu}    60
    wait until element is visible   ${asset_menu}    60
    click element   ${asset_menu}
    wait until page contains element    ${forex}    20
    wait until element is visible   ${forex}    20
    wait until page contains element    ${AUD_USD}     20
    wait until element is visible   ${AUD_USD}     20
    click element   ${AUD_USD}
    wait until page does not contain element   ${header_preloader}     60
    wait until page does not contain element    ${chart_loader}     60
    wait until page contains element    ${trade_types_btn}      60
    click element   ${trade_types_btn}
    wait until page contains element    ${high_or_low_btn}   20
    click element   ${high_or_low_btn}
    wait until page contains element   ${expand_btn}   20
    click element   ${expand_btn}
    wait until page contains element   ${duration_tab}   20
    click element   ${duration_tab}
    press keys  ${days_value_input}  CTRL+A+BACKSPACE
    input text  ${days_value_input}  2
    wait until page contains element    ${payout_btn}    20
    click element   ${payout_btn}
    press keys  ${value_input}  CTRL+A+BACKSPACE
    input text  ${value_input}  15.50
    wait until page contains element    ${buy_put_btn}     60
    wait until element is visible   ${buy_put_btn}   20
    wait until element is enabled   ${buy_put_btn}   20
    click element   ${buy_put_btn}

CheckRBE
    wait until page does not contain element   ${header_preloader}     60
    wait until page does not contain element    ${chart_loader}     60
    wait until page contains element    ${asset_menu}    60
    wait until element is visible   ${asset_menu}    60
    click element   ${asset_menu}
    wait until page contains element    ${forex}    20
    wait until element is visible   ${forex}    20
    wait until page contains element    ${AUD_USD}     20
    wait until element is visible   ${AUD_USD}     20
    click element   ${AUD_USD}
    wait until page does not contain element   ${header_preloader}     60
    wait until page does not contain element    ${chart_loader}     60
    wait until page contains element    ${trade_types_btn}      60
    click element   ${trade_types_btn}
    wait until page contains element    ${high_or_low_btn}   20
    click element   ${high_or_low_btn}
    wait until page contains element   ${duration_tab}   20
    click element   ${duration_tab}
    press keys  ${days_value_input}  CTRL+A+BACKSPACE
    input text  ${days_value_input}  2
    press keys  ${barrier_input}  CTRL+A+BACKSPACE
    input text  ${barrier_input}  +0.5
    wait until page contains element    ${payout_btn}    20
    click element   ${payout_btn}
    press keys  ${value_input}  CTRL+A+BACKSPACE
    input text  ${value_input}  10
    wait until page contains element    ${absolute_barrier_pop_up}     20
    wait until page contains element    ${buy_put_btn}     20
    wait until element is visible   ${buy_put_btn}    20
    element should be disabled  ${buy_put_btn}

CheckMCP
    wait until page does not contain element   ${header_preloader}     60
    wait until page does not contain element    ${chart_loader}     60
    wait until page contains element    ${asset_menu}    60
    wait until element is visible   ${asset_menu}    60
    click element   ${asset_menu}
    wait until page contains element    ${synthetic_indices}    20
    wait until element is visible   ${synthetic_indices}    20
    click element   ${synthetic_indices}
    wait until page contains element    ${volatility_50}     20
    wait until element is visible   ${volatility_50}     20
    click element   ${volatility_50}
    wait until page does not contain element   ${header_preloader}     60
    wait until page does not contain element    ${chart_loader}     60
    wait until page contains element    ${trade_types_btn}      60
    click element   ${trade_types_btn}
    wait until page contains element    ${multipliers_btn}  20
    click element   ${multipliers_btn}

    # a. only stake and no payout option
    wait until page contains element    ${stake_text_container}     20
    wait until element is visible   ${stake_text_container}     20
    wait until page does not contain element    ${payout_btn}   20
    wait until element is not visible   ${payout_btn}   20

#    # b. check 'Take profit' will be unselected when 'Deal Cancellation' is selected
#    select checkbox     ${take_profit_checkbox}
#    select checkbox     ${deal_cancellation_checkbox}
#    sleep   3
#    checkbox should be selected     ${deal_cancellation_checkbox}
#    checkbox should be not selected     ${take_profit_checkbox}
#
#    # check 'Stop loss' will be unselected when 'Deal Cancellation' is selected
#    select checkbox     ${stop_loss_checkbox}
#    select checkbox     ${deal_cancellation_checkbox}
#    sleep   2
#    checkbox should be selected     ${deal_cancellation_checkbox}
#    checkbox should not be selected     ${stop_loss_checkbox}
#
#    # check both 'Take profit' and 'Stop loss' will be unselected when 'Deal Cancellation' is selected
#    select checkbox     ${take_profit_checkbox}
#    select checkbox     ${stop_loss_checkbox}
#    select checkbox     ${deal_cancellation_checkbox}
#    sleep   2
#    checkbox should be selected     ${deal_cancellation_checkbox}
#    checkbox should be not selected     ${take_profit_checkbox}
#    checkbox should not be selected     ${stop_loss_checkbox}

    # c. multiplier value selection
    wait until page contains element    ${multipliers_list}     20
    wait until element is visible   ${multipliers_list}     20
    click element       ${multipliers_list}
    sleep   1
    element should be visible   ${x20}
    element should be visible   ${x40}
    element should be visible   ${x60}
    element should be visible   ${x100}
    element should be visible   ${x200}

    # d. stake VS deal cancel fee
    press keys  ${stake_input}  CTRL+A+BACKSPACE
    input text  ${stake_input}  10
    sleep   2
    click element   ${deal_cancellation_checkbox}
    wait until page contains element    ${deal_cancel_price}
    ${cancel_text_10}=    get value   ${deal_cancel_price}
    return from keyword   ${cancel_text_10}
    sleep   2
    press keys  ${stake_input}  CTRL+A+BACKSPACE
    input text  ${stake_input}  100
    sleep   2
    ${cancel_text_100}=    get value   ${deal_cancel_price}
    return from keyword       ${cancel_text_100}
    should be true      ${cancel_text_100} > ${cancel_text_10}

    # e. max stake 2000USD
    press keys  ${stake_input}  CTRL+A+BACKSPACE
    input text  ${stake_input}  2001
    sleep   2
    element should be disabled  ${buy_multup_btn}
    element should be disabled  ${buy_multdown_btn}
    sleep   2
    press keys  ${stake_input}  CTRL+A+BACKSPACE
    input text  ${stake_input}  2000
    sleep   2
    element should be enabled  ${buy_multup_btn}
    element should be enabled  ${buy_multdown_btn}

    # f. min stake 1USD
    press keys  ${stake_input}  CTRL+A+BACKSPACE
    input text  ${stake_input}  1
    sleep   2
    element should be enabled  ${buy_multup_btn}
    element should be enabled  ${buy_multdown_btn}
    sleep   2
    press keys  ${stake_input}  CTRL+A+BACKSPACE
    input text  ${stake_input}  0.5
    sleep   2
    element should be disabled  ${buy_multup_btn}
    element should be disabled  ${buy_multdown_btn}

    # g. hit '+1', increase 1USD
    sleep   1
    press keys  ${stake_input}  CTRL+A+BACKSPACE
    input text  ${stake_input}  10
    click element   ${+btn}
    sleep   1
    element attribute value should be   ${stake_input}       value      11

    # H. hit '-1', decrease 1USD
    sleep   1
    click element   ${-btn}
    element attribute value should be   ${stake_input}       value      10

    # h. check deal cancellation list
    @{list}=      create list      ${5min}      ${10min}     ${15min}       ${30min}        ${60min}
    click element   ${deal_cancellation_checkbox}
    wait until page contains element        ${deal_cancel_list}     15
    click element   ${deal_cancel_list}
    sleep   1
    FOR     ${time}     IN      @{list}
            element should be visible       ${time}
            element should be enabled       ${time}
            ${time_text} =      get text       ${time}
            element text should be      ${time}     ${time_text}
    END