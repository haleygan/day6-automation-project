*** Settings ***
Library  SeleniumLibrary
Resource    common.robot

*** Variable ***
${login_btn}    dt_login_button
${email_field}  name=email
${pw_field}     //*[@type="password"]
${login_oauth_btn}      //*[text()="Log in"]
${deriv_accounts}   //*[@id="dt_core_account-info_acc-info"]
${demo_tab}     //*[@id="dt_core_account-switcher_demo-tab"]
${virtual_account}      //*[@id="dt_VRTC4795335"]
${asset_menu}       //*[@id="trade"]/div/div[1]/div/div/div[1]/div[1]/div/div[1]
${volatility_10_1s}     //*[@id="trade"]/div/div[1]/div/div/div[1]/div[1]/div/div[2]/div/div/div[2]/div[2]/div/div[2]/div[1]/div[2]
${volatility_50}    //*[@id="trade"]/div/div[1]/div/div/div[1]/div[1]/div/div[2]/div/div/div[2]/div[2]/div/div[2]/div[1]/div[7]
${header_preloader}  //*[@id="dt_core_header_acc-info-preloader"]
${synthetic_indices}    //*[@id="trade"]/div/div[1]/div/div/div[1]/div[1]/div/div[2]/div/div/div[1]/div[2]/div/div[2]
${forex}    //*[@id="trade"]/div/div[1]/div/div/div[1]/div[1]/div/div[2]/div/div/div[1]/div[2]/div/div[3]
${AUD_USD}  //*[@id="trade"]/div/div[1]/div/div/div[1]/div[1]/div/div[2]/div/div/div[2]/div[2]/div/div[3]/div[1]/div[3]
${chart_loader}     chart-container__loader
${trade_types_btn}     //*[@id="dt_contract_dropdown"]
${rise_or_fall_btn}     //*[@id="dt_contract_dropdown"]/div[2]/div/div/div[2]/div[2]/div/div[2]/div[2]
${high_or_low_btn}      //*[@id="dt_contract_high_low_item"]
${multipliers_btn}      //*[@id="dt_contract_dropdown"]/div[2]/div/div/div[2]/div[2]/div/div[1]/div[2]
${expand_btn}    //*[@id="dt_simple_toggle"]
${duration_tab}     //*[@id="dc_duration_toggle_item"]
${days_value_input}     //*[@id="dt_advanced_duration_datepicker"]/div/div[1]/input
${tick_btn}     //*[@id="dc_t_toggle_item"]
#${slider_value}     //*[@id="dt_duration_range_input"]
${stake_text_container}     //*[@id="trade_container"]/div[4]/div/fieldset[2]/div[1]
${stake_input}  //*[@id="dt_amount_input"]
${multipliers_list}  //*[@id="dropdown-display"]
${x20}      //*[@id="20"]
${x40}      //*[@id="40"]
${x60}      //*[@id="60"]
${x100}     //*[@id="100"]
${x200}      //*[@id="200"]
${stake_btn}    //*[@id="dc_stake_toggle_item"]
${payout_btn}   //*[@id="dc_payout_toggle_item"]
${barrier_input}    //*[@id="dt_barrier_1_input"]
${value_input}  //*[@id="dt_amount_input"]
${take_profit_checkbox}     //*[@id="trade_container"]/div[4]/div/fieldset[3]/div/label
${stop_loss_checkbox}       //*[@id="trade_container"]/div[4]/div/fieldset[4]/div/label
${deal_cancellation_checkbox}       //*[@id="trade_container"]/div[4]/div/fieldset[5]/div/label
${buy_call_btn}     //*[@id="dt_purchase_call_button"]
${buy_put_btn}       //*[@id="dt_purchase_put_button"]
${buy_multup_btn}     //*[@id="dt_purchase_multup_button"]
${buy_multdown_btn}     //*[@id="dt_purchase_multdown_button"]
${absolute_barrier_pop_up}      //*[@id="trade_container"]/div[4]/div/div/fieldset[2]/div/div[2]/div[2]/div[1]/div/div
${+btn}     //*[@id="dt_amount_input_add"]
${-btn}     //*[@id="dt_amount_input_sub"]
${deal_cancel_list}     //*[@id="trade_container"]/div[4]/div/fieldset[5]/div[2]/div
${5min}     //*[@id="5m"]
${10min}    //*[@id="10m"]
${15min}     //*[@id="15m"]
${30min}     //*[@id="30m"]
${60min}     //*[@id="60m"]
${deal_cancel_price}        //*[@id="dt_purchase_multup_price"]/div/div[2]/span

*** Test Cases ***
Open Deriv
    Login   ${my_email}     ${my_pw}

Switch Virtual
   SwitchVirtualAccount

Buy Rise Contract
   BuyRiseContract

Buy Lower Contract
    BuyLowerContract

Check Relative Barrier Error
    CheckRBE

Check Multiplier Contract Parameter
    CheckMCP