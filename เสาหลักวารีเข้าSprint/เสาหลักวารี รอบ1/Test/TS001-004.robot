*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${HOMEPAGE}     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/index.php
${DETAILPHONE}     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/detail.php?ItemTypeName=Smartphone
${DETAILCOM}     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/detail.php?ItemTypeName=Computer
${DETAILTAB}     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/detail.php?ItemTypeName=Teblet
${DETAILDRONE}     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/detail.php?ItemTypeName=Drone
${DETAILNB}     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/detail.php?ItemTypeName=Notebook
${EDITITMEPHONE}     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/edit.php?ItemID=i001
${ADDITEM}     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/additem.php
${BROWSER}     Chrome
${DELAY}    0.3
${LOCATION}    SC06 ชั้น 3 ห้องสารบรรณ
${ID1}     N001
${ID2}     N002
${ID3}     N003

*** Test Cases ***
Go To homepage
	 Set Selenium Speed      ${DELAY}
     open Browser      ${HOMEPAGE}      ${BROWSER}
	 
TS001-1-PHONE
	 Click Element    xpath=/html/body/div[1]/div[1]/table/tbody/tr[2]/td[2]/a[1]
	 Location Should Be    ${DETAILPHONE} 
	 Go To     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/index.php
	 Location Should Be    ${HOMEPAGE}

TS001-2-COMPUTER
	 Set Selenium Speed      ${DELAY}
	 Click Element    xpath=/html/body/div[1]/div[1]/table/tbody/tr[3]/td[2]/a[1]
	 Location Should Be    ${DETAILCOM} 
	 Go To     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/index.php
	 Location Should Be    ${HOMEPAGE}

TS001-3-TABLET
	 Set Selenium Speed      ${DELAY}
	 Click Element    xpath=/html/body/div[1]/div[1]/table/tbody/tr[4]/td[2]/a[1]
	 Location Should Be    ${DETAILTAB} 
	 Go To     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/index.php
	 Location Should Be    ${HOMEPAGE}

TS001-4-DRONE
	 Set Selenium Speed      ${DELAY}
	 Click Element    xpath=/html/body/div[1]/div[1]/table/tbody/tr[5]/td[2]/a[1]
	 Location Should Be    ${DETAILDRONE} 
	 Go To     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/index.php
	 Location Should Be    ${HOMEPAGE}
	 
TS001-5-NOTEBOOK
	 Set Selenium Speed      ${DELAY}
	 Click Element    xpath=/html/body/div[1]/div[1]/table/tbody/tr[6]/td[2]/a[1]
	 Location Should Be    ${DETAILNB} 	 
Test Teardown    Close Browser

Click Edit
	 Set Selenium Speed      ${DELAY}
	 open Browser      ${HOMEPAGE}      ${BROWSER}	 
	 Click Element    xpath=/html/body/div[1]/div[1]/table/tbody/tr[2]/td[2]/a[1]
	 Location Should Be    ${DETAILPHONE} 

TS002-1-ReadytoUse
	 Click Element     xpath=/html/body/div[1]/div[1]/table/tbody/tr[1]/td[6]/a
	 Location Should Be     ${EDITITMEPHONE}
	 Input Text    Location     ${LOCATION}
	 Select From List By Index     Status     1
	 Click Button     btn-submit
	 Wait Until Page Contains     แก้ไขข้อมูลสำเร็จ
	 
TS002-2-NO-Location
	 Input Text    Location     ${EMPTY}
	 Select From List By Index     Status     1
	 Click Button     btn-submit
	 Wait Until Page Contains     กรุณาใส่ที่อยู่ครุภัณฑ์
	 
TS002-3-NO-Status
	 Input Text    Location     ${LOCATION}
	 Select From List By Index     Status     0
	 Click Button     btn-submit
	 Wait Until Page Contains     กรุณาเลือกสถานะครุภัณฑ์
	 
TS002-4-NO-LocationANDStatus
	 Input Text    Location     ${EMPTY}
	 Select From List By Index     Status     0
	 Click Button     btn-submit
	 Wait Until Page Contains     กรุณาใส่ที่อยู่ครุภัณฑ์
	 
TS002-5-Repair
	 Input Text    Location     ${LOCATION}
	 Select From List By Index     Status     2
	 Click Button     btn-submit
	 Wait Until Page Contains     แก้ไขข้อมูลสำเร็จ
	 
TS002-6-NO-Location
	 Input Text    Location     ${EMPTY}
	 Select From List By Index     Status     2
	 Click Button     btn-submit
	 Wait Until Page Contains     กรุณาใส่ที่อยู่ครุภัณฑ์
	 
TS002-7-Borrowed
	 Input Text    Location     ${LOCATION}
	 Select From List By Index     Status     3
	 Click Button     btn-submit
	 Wait Until Page Contains     แก้ไขข้อมูลสำเร็จ
	 
TS002-8-NO-Location
	 Input Text    Location     ${EMPTY}
	 Select From List By Index     Status     3
	 Click Button     btn-submit
	 Wait Until Page Contains     กรุณาใส่ที่อยู่ครุภัณฑ์
Test Teardown    Close Browser
	 
Click Delete
	 Set Selenium Speed      ${DELAY}
	 open Browser      ${HOMEPAGE}      ${BROWSER}
	 Click Element    xpath=/html/body/div[1]/div[1]/table/tbody/tr[6]/td[2]/a[1]
	 Location Should Be     ${DETAILNB}
TS003-1-OK
	 Set Selenium Speed      ${DELAY}
	 Click Element    xpath=/html/body/div[1]/div[1]/table/tbody/tr[1]/td[7]/a
	 Handle Alert     dismiss
	 Page Should Contain     c00122
TS003-2-Cancel
	 Set Selenium Speed      ${DELAY}
	 Click Element    xpath=/html/body/div[1]/div[1]/table/tbody/tr[1]/td[7]/a
	 Handle Alert     accept
	 Page Should Not Contain      c00122
Test Teardown    Close Browser

Click Add-item
	 Set Selenium Speed      ${DELAY}
	 open Browser      ${HOMEPAGE}      ${BROWSER}
	 Click Element    xpath=/html/body/div[1]/nav/ul/li/a
	 Set Selenium Speed      ${DELAY}
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
	 Location Should Be    ${ADDITEM} 
TS004-1-Success-Readytouse
	 Select From List By Index    ItemDetailID    1
	 Input Text    ItemID    ${ID1}
	 Input Text    Location    ${Location}
	 Select From List By Index    Status    1
     Click Button     btn-submit   
	 Wait Until Page Contains      ลงทะเบียนสำเร็จ
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-2-Duplicate
	 Select From List By Index    ItemDetailID    1
	 Input Text    ItemID    ${ID1}
	 Input Text    Location    ${Location}
	 Select From List By Index    Status    1
     Click Button     btn-submit   
	 Wait Until Page Contains      รหัสครุภัณฑ์มีการใช้ไปแล้ว
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-3-No-Name
	 Input Text    ItemID    ${ID1}
	 Input Text    Location    ${Location}
	 Select From List By Index    Status    1
     Click Button     btn-submit   
	 Wait Until Page Contains      กรุณาเลือกชื่อครุภัณฑ์
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-4-No-ID
	 Select From List By Index    ItemDetailID    1
	 Input Text    Location    ${Location}
	 Select From List By Index    Status    1
     Click Button     btn-submit   
	 Wait Until Page Contains      กรุณาใส่รหัสครุภัณฑ์
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-5-No-Location
	 Select From List By Index    ItemDetailID    1
	 Input Text    ItemID    ${ID1}
	 Select From List By Index    Status    1
     Click Button     btn-submit   
	 Wait Until Page Contains      กรุณาใส่ที่อยู่ครุภัณฑ์
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-6-No-Status
	 Select From List By Index    ItemDetailID    1
	 Input Text    ItemID    ${ID1}
	 Input Text    Location    ${Location}
     Click Button     btn-submit 
	 Wait Until Page Contains      กรุณาเลือกสถานะครุภัณฑ์
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-7-No-NameANDID
	 Input Text    Location    ${Location}
	 Select From List By Index    Status    1
     Click Button     btn-submit 
	 Wait Until Page Contains      กรุณาเลือกชื่อครุภัณฑ์
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-8-No-NameANDLocation
	 Input Text    ItemID    ${ID1}
	 Select From List By Index    Status    1
     Click Button     btn-submit 
	 Wait Until Page Contains      กรุณาเลือกชื่อครุภัณฑ์
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-9-No-NameANDStatus
	 Input Text    ItemID    ${ID1}
	 Input Text    Location    ${Location}
     Click Button     btn-submit   
	 Wait Until Page Contains      กรุณาเลือกชื่อครุภัณฑ์
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-10-No-IDANDLocation
	 Select From List By Index    ItemDetailID    1
	 Select From List By Index    Status    1
     Click Button     btn-submit   
	 Wait Until Page Contains      กรุณาใส่รหัสครุภัณฑ์
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-11-No-IDANDStatus
	 Select From List By Index    ItemDetailID    1
	 Input Text    Location    ${Location}
     Click Button     btn-submit   
	 Wait Until Page Contains      กรุณาใส่รหัสครุภัณฑ์
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-12-No-LocationANDStatus
	 Select From List By Index    ItemDetailID    1
	 Input Text    ItemID    ${ID1}
     Click Button     btn-submit   
	 Wait Until Page Contains      กรุณาใส่ที่อยู่ครุภัณฑ์
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-13-Nothing
     Click Button     btn-submit   
	 Wait Until Page Contains      กรุณาเลือกชื่อครุภัณฑ์
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-14-Success-Repair
	 Select From List By Index    ItemDetailID    1
	 Input Text    ItemID    ${ID2}
	 Input Text    Location    ${Location}
	 Select From List By Index    Status    2
     Click Button     btn-submit   
	 Wait Until Page Contains     ลงทะเบียนสำเร็จ
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-15-No-Name
	 Input Text    ItemID    ${ID2}
	 Input Text    Location    ${Location}
	 Select From List By Index    Status    2
     Click Button     btn-submit   
	 Wait Until Page Contains      กรุณาเลือกชื่อครุภัณฑ์
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-16-No-ID
	 Select From List By Index    ItemDetailID    1
	 Input Text    Location    ${Location}
	 Select From List By Index    Status    2
     Click Button     btn-submit   
	 Wait Until Page Contains      กรุณาใส่รหัสครุภัณฑ์
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-17-No-Location
	 Select From List By Index    ItemDetailID    1
	 Input Text    ItemID    ${ID2}
	 Select From List By Index    Status    2
     Click Button     btn-submit   
	 Wait Until Page Contains      กรุณาใส่ที่อยู่ครุภัณฑ์
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-18-No-NameANDID
	 Input Text    Location    ${Location}
	 Select From List By Index    Status    2
     Click Button     btn-submit   
	 Wait Until Page Contains      กรุณาเลือกชื่อครุภัณฑ์
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-19-No-NameANDLocation
	 Input Text    ItemID    ${ID2}
	 Select From List By Index    Status    2
     Click Button     btn-submit   
	 Wait Until Page Contains      กรุณาเลือกชื่อครุภัณฑ์
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-20-No-IDANDLocation
	 Select From List By Index    ItemDetailID    1
	 Select From List By Index    Status    1
     Click Button     btn-submit   
	 Wait Until Page Contains      กรุณาใส่รหัสครุภัณฑ์
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-21-Success-Borrowed
	 Select From List By Index    ItemDetailID    1
	 Input Text    ItemID    ${ID3}
	 Input Text    Location    ${Location}
	 Select From List By Index    Status    3
     Click Button     btn-submit   
	 Wait Until Page Contains      ลงทะเบียนสำเร็จ
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-22-No-Name
	 Input Text    ItemID    ${ID3}
	 Input Text    Location    ${Location}
	 Select From List By Index    Status    3
     Click Button     btn-submit   
	 Wait Until Page Contains      กรุณาเลือกชื่อครุภัณฑ์
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-23-No-ID
	 Select From List By Index    ItemDetailID    1
	 Input Text    Location    ${Location}
	 Select From List By Index    Status    3
     Click Button     btn-submit   
	 Wait Until Page Contains      กรุณาใส่รหัสครุภัณฑ์
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-24-No-Location
	 Select From List By Index    ItemDetailID    1
	 Input Text    ItemID    ${ID3}
	 Select From List By Index    Status    3
     Click Button     btn-submit  
	 Wait Until Page Contains      กรุณาใส่ที่อยู่ครุภัณฑ์
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-25-No-NameANDID
	 Input Text    Location    ${Location}
	 Select From List By Index    Status    3
     Click Button     btn-submit  
	 Wait Until Page Contains      กรุณาเลือกชื่อครุภัณฑ์
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-26-No-NameANDLocation
	 Input Text    ItemID    ${ID3}
	 Select From List By Index    Status    3
     Click Button     btn-submit  
	 Wait Until Page Contains      กรุณาเลือกชื่อครุภัณฑ์
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-27-No-IDANDLocation
	 Select From List By Index    ItemDetailID    1
	 Select From List By Index    Status    3
     Click Button     btn-submit  
	 Wait Until Page Contains      กรุณาใส่รหัสครุภัณฑ์
Test Teardown    Close Browser	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 

