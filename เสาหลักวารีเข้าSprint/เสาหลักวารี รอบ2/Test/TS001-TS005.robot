*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${HOMEPAGE}     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/index.php
${DETAIL01}     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/detail.php?ItemTypeName=%E0%B8%AD%E0%B8%B2%E0%B8%84%E0%B8%B2%E0%B8%A3%E0%B8%96%E0%B8%B2%E0%B8%A7%E0%B8%A3
${DETAIL02}     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/detail.php?ItemTypeName=%E0%B8%AD%E0%B8%B2%E0%B8%84%E0%B8%B2%E0%B8%A3%E0%B8%8A%E0%B8%B1%E0%B9%88%E0%B8%A7%E0%B8%84%E0%B8%A3%E0%B8%B2%E0%B8%A7/%E0%B9%82%E0%B8%A3%E0%B8%87%E0%B9%80%E0%B8%A3%E0%B8%B7%E0%B8%AD%E0%B8%99
${DETAIL03}     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/detail.php?ItemTypeName=%E0%B8%AA%E0%B8%B4%E0%B9%88%E0%B8%87%E0%B8%81%E0%B9%88%E0%B8%AD%E0%B8%AA%E0%B8%A3%E0%B9%89%E0%B8%B2%E0%B8%87
${DETAIL04}     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/detail.php?ItemTypeName=%E0%B8%84%E0%B8%A3%E0%B8%B8%E0%B8%A0%E0%B8%B1%E0%B8%93%E0%B8%91%E0%B9%8C%E0%B8%AA%E0%B8%B3%E0%B8%99%E0%B8%B1%E0%B8%81%E0%B8%87%E0%B8%B2%E0%B8%99
${DETAIL05}     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/detail.php?ItemTypeName=%E0%B8%84%E0%B8%A3%E0%B8%B8%E0%B8%A0%E0%B8%B1%E0%B8%93%E0%B8%91%E0%B9%8C%E0%B8%A2%E0%B8%B2%E0%B8%99%E0%B8%9E%E0%B8%B2%E0%B8%AB%E0%B8%99%E0%B8%B0%E0%B9%81%E0%B8%A5%E0%B8%B0%E0%B8%82%E0%B8%99%E0%B8%AA%E0%B9%88%E0%B8%87
${DETAIL06}     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/detail.php?ItemTypeName=%E0%B8%84%E0%B8%A3%E0%B8%B8%E0%B8%A0%E0%B8%B1%E0%B8%93%E0%B8%91%E0%B9%8C%E0%B9%84%E0%B8%9F%E0%B8%9F%E0%B9%89%E0%B8%B2%E0%B9%81%E0%B8%A5%E0%B8%B0%E0%B8%A7%E0%B8%B4%E0%B8%97%E0%B8%A2%E0%B8%B8
${DETAIL07}     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/detail.php?ItemTypeName=%E0%B8%84%E0%B8%A3%E0%B8%B8%E0%B8%A0%E0%B8%B1%E0%B8%93%E0%B8%91%E0%B9%8C%E0%B9%82%E0%B8%86%E0%B8%A9%E0%B8%93%E0%B8%B2%E0%B9%81%E0%B8%A5%E0%B8%B0%E0%B9%80%E0%B8%9C%E0%B8%A2%E0%B9%81%E0%B8%9E%E0%B8%A3%E0%B9%88
${DETAIL08}     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/detail.php?ItemTypeName=%E0%B8%84%E0%B8%A3%E0%B8%B8%E0%B8%A0%E0%B8%B1%E0%B8%93%E0%B8%91%E0%B9%8C%E0%B8%81%E0%B8%B2%E0%B8%A3%E0%B9%80%E0%B8%81%E0%B8%A9%E0%B8%95%E0%B8%A3
${DETAIL09}     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/detail.php?ItemTypeName=%E0%B8%84%E0%B8%A3%E0%B8%B8%E0%B8%A0%E0%B8%B1%E0%B8%93%E0%B8%91%E0%B9%8C%E0%B9%82%E0%B8%A3%E0%B8%87%E0%B8%87%E0%B8%B2%E0%B8%99
${DETAIL10}     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/detail.php?ItemTypeName=%E0%B8%84%E0%B8%A3%E0%B8%B8%E0%B8%A0%E0%B8%B1%E0%B8%93%E0%B8%91%E0%B9%8C%E0%B8%81%E0%B9%88%E0%B8%AD%E0%B8%AA%E0%B8%A3%E0%B9%89%E0%B8%B2%E0%B8%87
${DETAIL11}     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/detail.php?ItemTypeName=%E0%B8%84%E0%B8%A3%E0%B8%B8%E0%B8%A0%E0%B8%B1%E0%B8%93%E0%B8%91%E0%B9%8C%E0%B8%AA%E0%B8%B3%E0%B8%A3%E0%B8%A7%E0%B8%88
${DETAIL12}     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/detail.php?ItemTypeName=%E0%B8%84%E0%B8%A3%E0%B8%B8%E0%B8%A0%E0%B8%B1%E0%B8%93%E0%B8%91%E0%B9%8C%E0%B8%A7%E0%B8%B4%E0%B8%97%E0%B8%A2%E0%B8%B2%E0%B8%A8%E0%B8%B2%E0%B8%AA%E0%B8%95%E0%B8%A3%E0%B9%8C%E0%B8%81%E0%B8%B2%E0%B8%A3%E0%B9%81%E0%B8%9E%E0%B8%97%E0%B8%A2%E0%B9%8C
${DETAIL13}     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/detail.php?ItemTypeName=%E0%B8%84%E0%B8%A3%E0%B8%B8%E0%B8%A0%E0%B8%B1%E0%B8%93%E0%B8%91%E0%B9%8C%E0%B8%84%E0%B8%AD%E0%B8%A1%E0%B8%9E%E0%B8%B4%E0%B8%A7%E0%B9%80%E0%B8%95%E0%B8%AD%E0%B8%A3%E0%B9%8C
${DETAIL14}     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/detail.php?ItemTypeName=%E0%B8%84%E0%B8%A3%E0%B8%B8%E0%B8%A0%E0%B8%B1%E0%B8%93%E0%B8%91%E0%B9%8C%E0%B8%81%E0%B8%B2%E0%B8%A3%E0%B8%A8%E0%B8%B6%E0%B8%81%E0%B8%A9%E0%B8%B2
${DETAIL15}     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/detail.php?ItemTypeName=%E0%B8%84%E0%B8%A3%E0%B8%B8%E0%B8%A0%E0%B8%B1%E0%B8%93%E0%B8%91%E0%B9%8C%E0%B8%87%E0%B8%B2%E0%B8%99%E0%B8%9A%E0%B9%89%E0%B8%B2%E0%B8%99%E0%B8%87%E0%B8%B2%E0%B8%99%E0%B8%84%E0%B8%A3%E0%B8%B1%E0%B8%A7
${DETAIL16}     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/detail.php?ItemTypeName=%E0%B8%84%E0%B8%A3%E0%B8%B8%E0%B8%A0%E0%B8%B1%E0%B8%93%E0%B8%91%E0%B9%8C%E0%B8%81%E0%B8%B5%E0%B8%AC%E0%B8%B2
${DETAIL17}     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/detail.php?ItemTypeName=%E0%B8%84%E0%B8%A3%E0%B8%B8%E0%B8%A0%E0%B8%B1%E0%B8%93%E0%B8%91%E0%B9%8C%E0%B8%94%E0%B8%99%E0%B8%95%E0%B8%A3%E0%B8%B5%E0%B9%81%E0%B8%A5%E0%B8%B0%E0%B8%99%E0%B8%B2%E0%B8%8F%E0%B8%A8%E0%B8%B4%E0%B8%A5%E0%B8%9B%E0%B9%8C
${DETAIL18}     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/detail.php?ItemTypeName=%E0%B8%84%E0%B8%A3%E0%B8%B8%E0%B8%A0%E0%B8%B1%E0%B8%93%E0%B8%91%E0%B9%8C%E0%B8%AD%E0%B8%B2%E0%B8%A7%E0%B8%B8%E0%B8%98
${DETAIL19}     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/detail.php?ItemTypeName=%E0%B8%84%E0%B8%A3%E0%B8%B8%E0%B8%A0%E0%B8%B1%E0%B8%93%E0%B8%91%E0%B9%8C%E0%B8%AA%E0%B8%99%E0%B8%B2%E0%B8%A1
${DETAIL20}     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/detail.php?ItemTypeName=%E0%B8%AD%E0%B8%B7%E0%B9%88%E0%B8%99%E0%B9%86
${EDIT}     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/edit.php?ItemID=%E0%B8%A1%E0%B8%82-1300-23-01-001-00001/49
${ADDITEM}      http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/additem.php
${BROWSER}     Chrome
${DELAY}    0.3
${ID1}     มข-1300-01-035-001-00165/51
${ID2}     มข-02-09-13-00-20-023-0002/48(รด)
${ID3}     มข-1300-01-035-001-00168/51
${ID4}     มข-1300-01-035-001-00169/51
${ID5}     มข-1300-01-035-001-00170/51
${ID6}     มข-1300-01-035-001-00171/51
${ID7}     มข-1300-01-035-001-00172/51
${ID8}     มข-1300-23-01-001-00001/49
${ID9}     >^<
${ID10}     มข-0700-07-011-001-00063/49
${ID11}     5202070000008
${ID12}     5202700000009
${ID13}     5302070000038
${ID14}     มข-0700-07-018-001-00001/50
${ID15}     มข-0700-04-006-001-00001/50
${ID16}     มข-0700-07-015-001-00001/50
${ID17}     5302070000040
${Name}     HP compag dc 7900
${Name1}     >^<
${Name2}     Nikon Coolpix P1
${Detail}     HP   Core 2 Duo 3.0  ,  HD 250 Gb. ,  RAM 2 Gb. (CPU)
${Detail1}     >^<
${Detail2}     กล้องดิจิตอล 1 ชุด
${Location}     6204
${Location1}     >^<
${Location2}     6319
${Comment}     คพ.02-114/51
${Comment1}     >^<

*** Test Cases ***

TS001 Open home page
	 Set Selenium Speed      ${DELAY}
     open Browser      ${HOMEPAGE}      ${BROWSER}
Test Teardown    Close Browser

TS002 Show Detail
	 Set Selenium Speed      ${DELAY}
     open Browser      ${HOMEPAGE}      ${BROWSER}
TS002-1 Click Admin cs kku
	 Set Selenium Speed      ${DELAY}
	 Click Element    xpath=/html/body/div[1]/aside[1]/a/span
	 Location Should Be     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/index.php
TS002-2 Click navigator
	 Click Element    xpath=/html/body/div[1]/div[1]/table/tbody/tr[7]/td[2]/a[1]
	 Location Should Be    ${DETAIL06}
	 Click Element     xpath=/html/body/div[1]/div[1]/div[2]/table/tbody/tr[1]/td[7]/a
	 Click Element      xpath=/html/body/div[1]/div[1]/div[1]/div/div/div[2]/ol/li[2]/a
	 Location Should Be    ${DETAIL06}
	 Click Element     xpath=/html/body/div[1]/div[1]/div[1]/div/div/div[2]/ol/li[1]
	 Location Should Be     ${HOMEPAGE}
TS002-3 Permanent building
	 Click Element    xpath=//html/body/div[1]/div[1]/table/tbody/tr[2]/td[2]/a[1]
	 Location Should Be    ${DETAIL01} 
	 Go To     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/index.php
	 Location Should Be    ${HOMEPAGE}
TS002-4 Temporary building
	 Set Selenium Speed      ${DELAY}
	 Click Element    xpath=//html/body/div[1]/div[1]/table/tbody/tr[3]/td[2]/a[1]
	 Location Should Be    ${DETAIL02} 
	 Go To     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/index.php
	 Location Should Be    ${HOMEPAGE}
TS002-5 building
	 Set Selenium Speed      ${DELAY}
	 Click Element    xpath=/html/body/div[1]/div[1]/table/tbody/tr[4]/td[2]/a[1]
	 Location Should Be    ${DETAIL03} 
	 Go To     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/index.php
	 Location Should Be    ${HOMEPAGE}
TS002-6 Office equipment
	 Set Selenium Speed      ${DELAY}
	 Click Element    xpath=/html/body/div[1]/div[1]/table/tbody/tr[5]/td[2]/a[1]
	 Location Should Be    ${DETAIL04} 
	 Go To     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/index.php
	 Location Should Be    ${HOMEPAGE}
TS002-7 vehicles and transportation equipment
	 Set Selenium Speed      ${DELAY}
	 Click Element    xpath=/html/body/div[1]/div[1]/table/tbody/tr[6]/td[2]/a[1]
	 Location Should Be    ${DETAIL05} 	
	 Go To     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/index.php
	 Location Should Be    ${HOMEPAGE}
TS002-8 Electrical and radio equipment
	 Set Selenium Speed      ${DELAY}
	 Click Element    xpath=/html/body/div[1]/div[1]/table/tbody/tr[7]/td[2]/a[1]
	 Location Should Be    ${DETAIL06}
	 Go To     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/index.php
	 Location Should Be    ${HOMEPAGE}	 
TS002-9 Advertising and publishing equipment
	 Set Selenium Speed      ${DELAY}
	 Click Element    xpath=/html/body/div[1]/div[1]/table/tbody/tr[8]/td[2]/a[1]
	 Location Should Be    ${DETAIL07} 
	 Go To     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/index.php
	 Location Should Be    ${HOMEPAGE}	 
TS002-10 Agricultural equipment
	 Set Selenium Speed      ${DELAY}
	 Click Element    xpath=/html/body/div[1]/div[1]/table/tbody/tr[9]/td[2]/a[1]
	 Location Should Be    ${DETAIL08}
	 Go To     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/index.php
	 Location Should Be    ${HOMEPAGE}	 
TS002-11 Factory equipment
	 Set Selenium Speed      ${DELAY}
	 Click Element    xpath=/html/body/div[1]/div[1]/table/tbody/tr[10]/td[2]/a[1]
	 Location Should Be    ${DETAIL09} 
	 Go To     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/index.php
	 Location Should Be    ${HOMEPAGE}	 
TS002-12 Construction equipment
	 Set Selenium Speed      ${DELAY}
	 Click Element    xpath=/html/body/div[1]/div[1]/table/tbody/tr[11]/td[2]/a[1]
	 Location Should Be    ${DETAIL10} 	
	 Go To     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/index.php
	 Location Should Be    ${HOMEPAGE}
TS002-13 Surveying equipment
	 Set Selenium Speed      ${DELAY}
	 Click Element    xpath=/html/body/div[1]/div[1]/table/tbody/tr[12]/td[2]/a[1]
	 Location Should Be    ${DETAIL11} 	
	 Go To     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/index.php
	 Location Should Be    ${HOMEPAGE}
TS002-14 Medical science equipment
	 Set Selenium Speed      ${DELAY}
	 Click Element    xpath=/html/body/div[1]/div[1]/table/tbody/tr[13]/td[2]/a[1]
	 Location Should Be    ${DETAIL12} 	
	 Go To     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/index.php
	 Location Should Be    ${HOMEPAGE}
TS002-15 Computer accessories
	 Set Selenium Speed      ${DELAY}
	 Click Element    xpath=/html/body/div[1]/div[1]/table/tbody/tr[14]/td[2]/a[1]
	 Location Should Be    ${DETAIL13} 	
	 Go To     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/index.php
	 Location Should Be    ${HOMEPAGE}
TS002-16 Educational equipment
	 Set Selenium Speed      ${DELAY}
	 Click Element    xpath=/html/body/div[1]/div[1]/table/tbody/tr[15]/td[2]/a[1]
	 Location Should Be    ${DETAIL14} 
	 Go To     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/index.php
	 Location Should Be    ${HOMEPAGE}	 
TS002-17 Household equipment
	 Set Selenium Speed      ${DELAY}
	 Click Element    xpath=/html/body/div[1]/div[1]/table/tbody/tr[16]/td[2]/a[1]
	 Location Should Be    ${DETAIL15} 	
	 Go To     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/index.php
	 Location Should Be    ${HOMEPAGE}
TS002-18 Sports equipment
	 Set Selenium Speed      ${DELAY}
	 Click Element    xpath=/html/body/div[1]/div[1]/table/tbody/tr[17]/td[2]/a[1]
	 Location Should Be    ${DETAIL16}
	 Go To     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/index.php
	 Location Should Be    ${HOMEPAGE}
TS002-19 Musical and dance equipment
	 Set Selenium Speed      ${DELAY}
	 Click Element    xpath=/html/body/div[1]/div[1]/table/tbody/tr[18]/td[2]/a[1]
	 Location Should Be    ${DETAIL17} 	
	 Go To     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/index.php
	 Location Should Be    ${HOMEPAGE}
TS002-20 Weapon equipment
	 Set Selenium Speed      ${DELAY}
	 Click Element    xpath=/html/body/div[1]/div[1]/table/tbody/tr[19]/td[2]/a[1]
	 Location Should Be    ${DETAIL18} 	
	 Go To     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/index.php
	 Location Should Be    ${HOMEPAGE}
TS002-21 Field equipment
	 Set Selenium Speed      ${DELAY}
	 Click Element    xpath=/html/body/div[1]/div[1]/table/tbody/tr[20]/td[2]/a[1]
	 Location Should Be    ${DETAIL19} 
	 Go To     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/index.php
	 Location Should Be    ${HOMEPAGE}	 
TS002-22 Other
	 Set Selenium Speed      ${DELAY}
	 Click Element    xpath=/html/body/div[1]/div[1]/table/tbody/tr[21]/td[2]/a[1]
	 Location Should Be    ${DETAIL20}
Test Teardown    Close Browser

TS003 Edit
	 Set Selenium Speed      ${DELAY}
	 open Browser      ${HOMEPAGE}      ${BROWSER}
	 Click Element    xpath=/html/body/div[1]/div[1]/table/tbody/tr[14]/td[2]/a[1]
	 Location Should Be    ${DETAIL13} 
	 Click Element    xpath=/html/body/div[1]/div[1]/div[2]/table/tbody/tr[1]/td[7]/a
TS003-1 Valid information
	 Input Text    ID    ${ID1}
	 Input Text    Name    ${Name}
	 Input Text    Detail    ${Detail}
	 Input Text    Location    ${Location}
	 Input Text    Comment    ${Comment}
	 Select From List By Index    ItemTypeID    0
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     แก้ไขข้อมูลครุภัณฑ์สำเร็จ
	 Page Should Contain     ${ID1}
	 Click Element    xpath=/html/body/div[1]/div[1]/div[2]/table/tbody/tr[1]/td[7]/a
TS003-2 Repeated information
	 Input Text    ID    ${ID2}
	 Input Text    Name    ${Name}
	 Input Text    Detail    ${Detail}
	 Input Text    Location    ${Location}
	 Input Text    Comment    ${Comment}
	 Select From List By Index    ItemTypeID    0
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     หมายเลขครุภัณฑ์มีการใช้ไปแล้ว
TS003-3 Invalid cancel
	 Input Text    ID    ${ID1}
	 Input Text    Name    ${Name}
	 Input Text    Detail    ${Detail}
	 Input Text    Location    ${Location}
	 Input Text    Comment    ${Comment}
	 Select From List By Index    ItemTypeID    0
     Click Button     btn-submit   
	 Handle Alert     dismiss
	 Page Should Not Contain     ${ID1}
TS003-4 Invalid ID
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[1]/div/input
	 Input Text    Name    ${Name}
	 Input Text    Detail    ${Detail}
	 Input Text    Location    ${Location}
	 Input Text    Comment    ${Comment}
	 Select From List By Index    ItemTypeID    0
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาใส่หมายเลขครุภัณฑ์
TS003-5 Invalid Name
	 Input Text    ID    ${ID1}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[2]/div/input
	 Input Text    Detail    ${Detail}
	 Input Text    Location    ${Location}
	 Input Text    Comment    ${Comment}
	 Select From List By Index    ItemTypeID    0
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาใส่ชื่อครุภัณฑ์
TS003-6 Valid Detail
	 Input Text    ID    ${ID3}
	 Input Text    Name    ${Name}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[3]/div/textarea
	 Input Text    Location    ${Location}
	 Input Text    Comment    ${Comment}
	 Select From List By Index    ItemTypeID    0
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     แก้ไขข้อมูลครุภัณฑ์สำเร็จ
	 Page Should Contain     ${ID3}
	 Click Element    xpath=/html/body/div[1]/div[1]/div[2]/table/tbody/tr[1]/td[7]/a
TS003-7 Valid Location
	 Input Text    ID    ${ID4}
	 Input Text    Name    ${Name}
	 Input Text    Detail    ${Detail}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[4]/div/input
	 Input Text    Comment    ${Comment}
	 Select From List By Index    ItemTypeID    0
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     แก้ไขข้อมูลครุภัณฑ์สำเร็จ
	 Page Should Contain     ${ID4}
	 Click Element    xpath=/html/body/div[1]/div[1]/div[2]/table/tbody/tr[1]/td[7]/a
TS003-8 Valid comment
	 Input Text    ID    ${ID5}
	 Input Text    Name    ${Name}
	 Input Text    Detail    ${Detail}
	 Input Text    Location    ${Location}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[5]/div/input
	 Select From List By Index    ItemTypeID    0
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     แก้ไขข้อมูลครุภัณฑ์สำเร็จ
	 Page Should Contain     ${ID5}
	 Click Element    xpath=/html/body/div[1]/div[1]/div[2]/table/tbody/tr[1]/td[7]/a
TS003-9 Invalid Type
	 Input Text    ID    ${ID1}
	 Input Text    Name    ${Name}
	 Input Text    Detail    ${Detail}
	 Input Text    Location    ${Location}
	 Input Text    Comment    ${Comment}
	 Select From List By Index    ItemTypeID    1
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาเลือกประเภทครุภัณฑ์
TS003-10 Invalid ID&Name
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[1]/div/input
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[2]/div/input
	 Input Text    Detail    ${Detail}
	 Input Text    Location    ${Location}
	 Input Text    Comment    ${Comment}
	 Select From List By Index    ItemTypeID    0
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาใส่หมายเลขครุภัณฑ์
TS003-11 Invalid ID&Detail
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[1]/div/input
	 Input Text    Name    ${Name}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[3]/div/textarea 
	 Input Text    Location    ${Location}
	 Input Text    Comment    ${Comment}
	 Select From List By Index    ItemTypeID    0
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาใส่หมายเลขครุภัณฑ์
TS003-12 Invalid ID&Location
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[1]/div/input
	 Input Text    Name    ${Name}
	 Input Text    Detail    ${Detail}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[4]/div/input
	 Input Text    Comment    ${Comment}
	 Select From List By Index    ItemTypeID    0
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาใส่หมายเลขครุภัณฑ์
TS003-13 Invalid ID&Comment
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[1]/div/input
	 Input Text    Name    ${Name}
	 Input Text    Detail    ${Detail}
	 Input Text    Location    ${Location}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[5]/div/input
	 Select From List By Index    ItemTypeID    0
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาใส่หมายเลขครุภัณฑ์
TS003-14 Invalid ID&Type
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[1]/div/input
	 Input Text    Name    ${Name}
	 Input Text    Detail    ${Detail}
	 Input Text    Location    ${Location}
	 Input Text    Comment    ${Comment}
	 Select From List By Index    ItemTypeID    1
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาใส่หมายเลขครุภัณฑ์
TS003-15 Invalid Name&Detail
	 Input Text    ID    ${ID1}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[2]/div/input
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[3]/div/textarea 
	 Input Text    Location    ${Location}
	 Input Text    Comment    ${Comment}
	 Select From List By Index    ItemTypeID    0
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาใส่ชื่อครุภัณฑ์   
TS003-16 Invalid Name&Location
	 Input Text    ID    ${ID1}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[2]/div/input
	 Input Text    Detail    ${Detail}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[4]/div/input
	 Input Text    Comment    ${Comment}
	 Select From List By Index    ItemTypeID    0
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาใส่ชื่อครุภัณฑ์
TS003-17 Invalid Name&Comment
	 Input Text    ID    ${ID1}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[2]/div/input
	 Input Text    Detail    ${Detail}
	 Input Text    Location    ${Location}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[5]/div/input
	 Select From List By Index    ItemTypeID    0
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาใส่ชื่อครุภัณฑ์
TS003-18 Invalid Name&Type
	 Input Text    ID    ${ID1}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[2]/div/input
	 Input Text    Detail    ${Detail}
	 Input Text    Location    ${Location}
	 Input Text    Comment    ${Comment}
	 Select From List By Index    ItemTypeID    1
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาใส่ชื่อครุภัณฑ์
TS003-19 Valid Detail&Location
	 Input Text    ID    ${ID6}
	 Input Text    Name    ${Name}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[3]/div/textarea 
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[4]/div/input
	 Input Text    Comment    ${Comment}
	 Select From List By Index    ItemTypeID    0
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     แก้ไขข้อมูลครุภัณฑ์สำเร็จ
	 Page Should Contain     ${ID6}
	 Click Element    xpath=/html/body/div[1]/div[1]/div[2]/table/tbody/tr[1]/td[7]/a
TS003-20 Valid Detail&Comment
	 Input Text    ID    ${ID7}
	 Input Text    Name    ${Name}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[3]/div/textarea 
	 Input Text    Location    ${Location}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[5]/div/input
	 Select From List By Index    ItemTypeID    0
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     แก้ไขข้อมูลครุภัณฑ์สำเร็จ
	 Page Should Contain     ${ID7}
	 Click Element    xpath=/html/body/div[1]/div[1]/div[2]/table/tbody/tr[1]/td[7]/a
TS003-21 Invalid Detail&Type
	 Input Text    ID    ${ID1}
	 Input Text    Name    ${Name}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[3]/div/textarea 
	 Input Text    Location    ${Location}
	 Input Text    Comment    ${Comment}
	 Select From List By Index    ItemTypeID    1
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาเลือกประเภทครุภัณฑ์
TS003-22 Valid Location&Comment
	 Input Text    ID    ${ID8}
	 Input Text    Name    ${Name}
	 Input Text    Detail    ${Detail}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[4]/div/input
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[5]/div/input
	 Select From List By Index    ItemTypeID    0
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     แก้ไขข้อมูลครุภัณฑ์สำเร็จ
	 Page Should Contain     ${ID8}
	 Click Element    xpath=/html/body/div[1]/div[1]/div[2]/table/tbody/tr[1]/td[7]/a
TS003-23 Invalid Location&Type
	 Input Text    ID    ${ID1}
	 Input Text    Name    ${Name}
	 Input Text    Detail    ${Detail}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[4]/div/input
	 Input Text    Comment    ${Comment}
	 Select From List By Index    ItemTypeID    1
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาเลือกประเภทครุภัณฑ์
TS003-24 Invalid Comment&Type
	 Input Text    ID    ${ID1}
	 Input Text    Name    ${Name}
	 Input Text    Detail    ${Detail}
	 Input Text    Location    ${Location}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[5]/div/input
	 Select From List By Index    ItemTypeID    1
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาเลือกประเภทครุภัณฑ์
TS003-25 Invalid ID&Name&Detail
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[1]/div/input
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[2]/div/input
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[3]/div/textarea
	 Input Text    Location    ${Location}
	 Input Text    Comment    ${Comment}
	 Select From List By Index    ItemTypeID    0
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาใส่หมายเลขครุภัณฑ์
TS003-26 Invalid ID&Name&Location
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[1]/div/input
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[2]/div/input
	 Input Text    Detail    ${Detail}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[4]/div/input
	 Input Text    Comment    ${Comment}
	 Select From List By Index    ItemTypeID    0
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาใส่หมายเลขครุภัณฑ์
TS003-27 Invalid ID&Name&Comment
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[1]/div/input
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[2]/div/input
	 Input Text    Detail    ${Detail}
	 Input Text    Location    ${Location}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[5]/div/input
	 Select From List By Index    ItemTypeID    0
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาใส่หมายเลขครุภัณฑ์
TS003-28 Invalid ID&Name&Type
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[1]/div/input
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[2]/div/input
	 Input Text    Detail    ${Detail}
	 Input Text    Location    ${Location}
	 Input Text    Comment    ${Comment}
	 Select From List By Index    ItemTypeID    1
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาใส่หมายเลขครุภัณฑ์
TS003-29 Invalid ID&Detail&Location
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[1]/div/input
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[3]/div/textarea
	 Input Text    Detail    ${Detail}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[4]/div/input
	 Input Text    Comment    ${Comment}
	 Select From List By Index    ItemTypeID    0
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาใส่หมายเลขครุภัณฑ์
TS003-30 Invalid ID&Detail&Comment
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[1]/div/input
	 Input Text    Name    ${Name}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[3]/div/textarea
	 Input Text    Location    ${Location}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[5]/div/input
	 Select From List By Index    ItemTypeID    0
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาใส่หมายเลขครุภัณฑ์
TS003-31 Invalid ID&Detail&Type
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[1]/div/input
	 Input Text    Name    ${Name}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[3]/div/textarea
	 Input Text    Location    ${Location}
	 Input Text    Comment    ${Comment}
	 Select From List By Index    ItemTypeID    1
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาใส่หมายเลขครุภัณฑ์
TS003-32 Invalid ID&Location&Comment
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[1]/div/input
	 Input Text    Name    ${Name}
	 Input Text    Detail    ${Detail}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[4]/div/input
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[5]/div/input
	 Select From List By Index    ItemTypeID    0
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาใส่หมายเลขครุภัณฑ์ 
TS003-33 Invalid ID&Location&Type
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[1]/div/input
	 Input Text    Name    ${Name}
	 Input Text    Detail    ${Detail}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[4]/div/input
	 Input Text    Comment    ${Comment}
	 Select From List By Index    ItemTypeID    1
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาใส่หมายเลขครุภัณฑ์
TS003-34 Invalid ID&Comment&Type
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[1]/div/input
	 Input Text    Name    ${Name}
	 Input Text    Detail    ${Detail}
	 Input Text    Location    ${Location}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[5]/div/input
	 Select From List By Index    ItemTypeID    1
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาใส่หมายเลขครุภัณฑ์
TS003-35 Invalid ID&Name&Detail&Location
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[1]/div/input
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[2]/div/input
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[3]/div/textarea
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[4]/div/input
	 Input Text    Comment    ${Comment}
	 Select From List By Index    ItemTypeID    0
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาใส่หมายเลขครุภัณฑ์
TS003-36 Invalid ID&Name&Detail&Comment
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[1]/div/input
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[2]/div/input
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[3]/div/textarea
	 Input Text    Location    ${Location}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[5]/div/input
	 Select From List By Index    ItemTypeID    0
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาใส่หมายเลขครุภัณฑ์
TS003-37 Invalid ID&Name&Detail&Type
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[1]/div/input
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[2]/div/input
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[3]/div/textarea
	 Input Text    Location    ${Location}
	 Input Text    Comment    ${Comment}
	 Select From List By Index    ItemTypeID    1
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาใส่หมายเลขครุภัณฑ์
TS003-38 Invalid All
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[1]/div/input
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[2]/div/input
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[3]/div/textarea
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[4]/div/input
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[5]/div/input
	 Select From List By Index    ItemTypeID    0
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาใส่หมายเลขครุภัณฑ์
TS003-39 Special characters information
	 Input Text    ID    ${ID9}
	 Input Text    Name    ${Name1}
	 Input Text    Detail    ${Detail1}
	 Input Text    Location    ${Location1}
	 Input Text    Comment    ${Comment1}
	 Select From List By Index    ItemTypeID    0
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกเป็นภาษาอังกฤษตัวพิมพ์เล็กหรือตัวพิมพ์ใหญ่ ภาษาไทย หรือ สัญลักษณ์ . - _ ()/
Test Teardown    Close Browser

TS004 Add
	 Set Selenium Speed      ${DELAY}
	 open Browser      ${HOMEPAGE}      ${BROWSER}
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
	 Location Should Be    ${ADDITEM} 
TS004-1 Valid information
	 Input Text    ID    ${ID10}
	 Input Text    Name    ${Name2}
	 Input Text    Detail    ${Detail2}
	 Input Text    Location    ${Location2}
	 Input Text    Comment    ${Comment}
	 Select From List By Index    ItemTypeID    7
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     เพิ่มข้อมูลครุภัณฑ์สำเร็จ
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-2 Repeated information
	 Input Text    ID    ${ID11}
	 Input Text    Name    ${Name2}
	 Input Text    Detail    ${Detail2}
	 Input Text    Location    ${Location2}
	 Input Text    Comment    ${Comment}
	 Select From List By Index    ItemTypeID    7
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     หมายเลขครุภัณฑ์มีการใช้ไปแล้ว
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-3 Invalid cancel
	 Input Text    ID    ${ID10}
	 Input Text    Name    ${Name2}
	 Input Text    Detail    ${Detail2}
	 Input Text    Location    ${Location2}
	 Input Text    Comment    ${Comment}
	 Select From List By Index    ItemTypeID    7
     Click Button     btn-submit   
	 Handle Alert     dismiss
	 Location Should Be    ${ADDITEM} 
TS004-4 Invalid ID
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[1]/div/input
	 Input Text    Name    ${Name2}
	 Input Text    Detail    ${Detail2}
	 Input Text    Location    ${Location2}
	 Input Text    Comment    ${Comment}
	 Select From List By Index    ItemTypeID    7
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาใส่หมายเลขครุภัณฑ์
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-5 Invalid Name
	 Input Text    ID    ${ID10}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[2]/div/input
	 Input Text    Detail    ${Detail2}
	 Input Text    Location    ${Location2}
	 Input Text    Comment    ${Comment}
	 Select From List By Index    ItemTypeID    7
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาใส่ชื่อครุภัณฑ์
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-6 Valid Detail
	 Input Text    ID    ${ID12}
	 Input Text    Name    ${Name}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[3]/div/textarea
	 Input Text    Location    ${Location2}
	 Input Text    Comment    ${Comment}
	 Select From List By Index    ItemTypeID    7
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     เพิ่มข้อมูลครุภัณฑ์สำเร็จ
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-7 Valid Location
	 Input Text    ID    ${ID13}
	 Input Text    Name    ${Name2}
	 Input Text    Detail    ${Detail2}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[4]/div/input
	 Input Text    Comment    ${Comment}
	 Select From List By Index    ItemTypeID    7
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     เพิ่มข้อมูลครุภัณฑ์สำเร็จ
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-8 Valid comment
	 Input Text    ID    ${ID14}
	 Input Text    Name    ${Name2}
	 Input Text    Detail    ${Detail2}
	 Input Text    Location    ${Location2}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[5]/div/input
	 Select From List By Index    ItemTypeID    7
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     เพิ่มข้อมูลครุภัณฑ์สำเร็จ
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-9 Invalid Type
	 Input Text    ID    ${ID10}
	 Input Text    Name    ${Name2}
	 Input Text    Detail    ${Detail2}
	 Input Text    Location    ${Location2}
	 Input Text    Comment    ${Comment}
	 Select From List By Index    ItemTypeID    0
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาเลือกประเภทครุภัณฑ์
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-10 Invalid ID&Name
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[1]/div/input
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[2]/div/input
	 Input Text    Detail    ${Detail2}
	 Input Text    Location    ${Location2}
	 Input Text    Comment    ${Comment}
	 Select From List By Index    ItemTypeID    7
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาใส่หมายเลขครุภัณฑ์
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-11 Invalid ID&Detail
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[1]/div/input
	 Input Text    Name    ${Name2}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[3]/div/textarea 
	 Input Text    Location    ${Location2}
	 Input Text    Comment    ${Comment}
	 Select From List By Index    ItemTypeID    7
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาใส่หมายเลขครุภัณฑ์
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-12 Invalid ID&Location
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[1]/div/input
	 Input Text    Name    ${Name2}
	 Input Text    Detail    ${Detail2}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[4]/div/input
	 Input Text    Comment    ${Comment}
	 Select From List By Index    ItemTypeID    7
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาใส่หมายเลขครุภัณฑ์
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-13 Invalid ID&Comment
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[1]/div/input
	 Input Text    Name    ${Name2}
	 Input Text    Detail    ${Detail2}
	 Input Text    Location    ${Location2}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[5]/div/input
	 Select From List By Index    ItemTypeID    7
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาใส่หมายเลขครุภัณฑ์
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-14 Invalid ID&Type
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[1]/div/input
	 Input Text    Name    ${Name2}
	 Input Text    Detail    ${Detail2}
	 Input Text    Location    ${Location2}
	 Input Text    Comment    ${Comment}
	 Select From List By Index    ItemTypeID    0
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาใส่หมายเลขครุภัณฑ์
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-15 Invalid Name&Detail
	 Input Text    ID    ${ID10}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[2]/div/input
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[3]/div/textarea 
	 Input Text    Location    ${Location2}
	 Input Text    Comment    ${Comment}
	 Select From List By Index    ItemTypeID    7
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาใส่ชื่อครุภัณฑ์
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-16 Invalid Name&Location
	 Input Text    ID    ${ID10}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[2]/div/input
	 Input Text    Detail    ${Detail2}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[4]/div/input
	 Input Text    Comment    ${Comment}
	 Select From List By Index    ItemTypeID    7
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาใส่ชื่อครุภัณฑ์
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-17 Invalid Name&Comment
	 Input Text    ID    ${ID10}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[2]/div/input
	 Input Text    Detail    ${Detail2}
	 Input Text    Location    ${Location2}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[5]/div/input
	 Select From List By Index    ItemTypeID    7
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาใส่ชื่อครุภัณฑ์
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-18 Invalid Name&Type
	 Input Text    ID    ${ID10}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[2]/div/input
	 Input Text    Detail    ${Detail2}
	 Input Text    Location    ${Location2}
	 Input Text    Comment    ${Comment}
	 Select From List By Index    ItemTypeID    0
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาใส่ชื่อครุภัณฑ์
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-19 Valid Detail&Location
	 Input Text    ID    ${ID15}
	 Input Text    Name    ${Name2}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[3]/div/textarea 
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[4]/div/input
	 Input Text    Comment    ${Comment}
	 Select From List By Index    ItemTypeID    7
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     เพิ่มข้อมูลครุภัณฑ์สำเร็จ
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-20 Valid Detail&Comment
	 Input Text    ID    ${ID16}
	 Input Text    Name    ${Name2}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[3]/div/textarea 
	 Input Text    Location    ${Location2}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[5]/div/input
	 Select From List By Index    ItemTypeID    7
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     เพิ่มข้อมูลครุภัณฑ์สำเร็จ
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-21 Invalid Detail&Type
	 Input Text    ID    ${ID10}
	 Input Text    Name    ${Name2}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[3]/div/textarea 
	 Input Text    Location    ${Location2}
	 Input Text    Comment    ${Comment}
	 Select From List By Index    ItemTypeID    0
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาเลือกประเภทครุภัณฑ์
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-22 Valid Location&Comment
	 Input Text    ID    ${ID17}
	 Input Text    Name    ${Name2}
	 Input Text    Detail    ${Detail2}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[4]/div/input
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[5]/div/input
	 Select From List By Index    ItemTypeID    7
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     เพิ่มข้อมูลครุภัณฑ์สำเร็จ
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-23 Invalid Location&Type
	 Input Text    ID    ${ID10}
	 Input Text    Name    ${Name2}
	 Input Text    Detail    ${Detail2}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[4]/div/input
	 Input Text    Comment    ${Comment}
	 Select From List By Index    ItemTypeID    0
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาเลือกประเภทครุภัณฑ์
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-24 Invalid Comment&Type
	 Input Text    ID    ${ID10}
	 Input Text    Name    ${Name2}
	 Input Text    Detail    ${Detail2}
	 Input Text    Location    ${Location2}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[5]/div/input
	 Select From List By Index    ItemTypeID    0
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาเลือกประเภทครุภัณฑ์
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-25 Invalid ID&Name&Detail
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[1]/div/input
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[2]/div/input
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[3]/div/textarea
	 Input Text    Location    ${Location2}
	 Input Text    Comment    ${Comment}
	 Select From List By Index    ItemTypeID    7
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาใส่หมายเลขครุภัณฑ์
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-26 Invalid ID&Name&Location
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[1]/div/input
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[2]/div/input
	 Input Text    Detail    ${Detail2}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[4]/div/input
	 Input Text    Comment    ${Comment}
	 Select From List By Index    ItemTypeID    7
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาใส่หมายเลขครุภัณฑ์
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-27 Invalid ID&Name&Comment
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[1]/div/input
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[2]/div/input
	 Input Text    Detail    ${Detail2}
	 Input Text    Location    ${Location2}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[5]/div/input
	 Select From List By Index    ItemTypeID    7
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาใส่หมายเลขครุภัณฑ์
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-28 Invalid ID&Name&Type
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[1]/div/input
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[2]/div/input
	 Input Text    Detail    ${Detail2}
	 Input Text    Location    ${Location2}
	 Input Text    Comment    ${Comment}
	 Select From List By Index    ItemTypeID    0
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาใส่หมายเลขครุภัณฑ์
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-29 Invalid ID&Detail&Location
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[1]/div/input
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[3]/div/textarea
	 Input Text    Detail    ${Detail2}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[4]/div/input
	 Input Text    Comment    ${Comment}
	 Select From List By Index    ItemTypeID    7
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาใส่หมายเลขครุภัณฑ์
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-30 Invalid ID&Detail&Comment
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[1]/div/input
	 Input Text    Name    ${Name2}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[3]/div/textarea
	 Input Text    Location    ${Location2}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[5]/div/input
	 Select From List By Index    ItemTypeID    7
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาใส่หมายเลขครุภัณฑ์
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-31 Invalid ID&Detail&Type
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[1]/div/input
	 Input Text    Name    ${Name2}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[3]/div/textarea
	 Input Text    Location    ${Location2}
	 Input Text    Comment    ${Comment}
	 Select From List By Index    ItemTypeID    0
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาใส่หมายเลขครุภัณฑ์
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-32 Invalid ID&Location&Comment
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[1]/div/input
	 Input Text    Name    ${Name2}
	 Input Text    Detail    ${Detail2}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[4]/div/input
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[5]/div/input
	 Select From List By Index    ItemTypeID    7
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาใส่หมายเลขครุภัณฑ์
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-33 Invalid ID&Location&Type
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[1]/div/input
	 Input Text    Name    ${Name2}
	 Input Text    Detail    ${Detail2}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[4]/div/input
	 Input Text    Comment    ${Comment}
	 Select From List By Index    ItemTypeID    0
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาใส่หมายเลขครุภัณฑ์
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-34 Invalid ID&Comment&Type
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[1]/div/input
	 Input Text    Name    ${Name2}
	 Input Text    Detail    ${Detail2}
	 Input Text    Location    ${Location2}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[5]/div/input
	 Select From List By Index    ItemTypeID    0
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาใส่หมายเลขครุภัณฑ์
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-35 Invalid ID&Name&Detail&Location
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[1]/div/input
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[2]/div/input
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[3]/div/textarea
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[4]/div/input
	 Input Text    Comment    ${Comment}
	 Select From List By Index    ItemTypeID    7
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาใส่หมายเลขครุภัณฑ์
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-36 Invalid ID&Name&Detail&Comment
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[1]/div/input
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[2]/div/input
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[3]/div/textarea
	 Input Text    Location    ${Location2}
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[5]/div/input
	 Select From List By Index    ItemTypeID    7
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาใส่หมายเลขครุภัณฑ์
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-37 Invalid ID&Name&Detail&Type
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[1]/div/input
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[2]/div/input
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[3]/div/textarea
	 Input Text    Location    ${Location2}
	 Input Text    Comment    ${Comment}
	 Select From List By Index    ItemTypeID    0
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาใส่หมายเลขครุภัณฑ์
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-38 Invalid All
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[1]/div/input
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[2]/div/input
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[3]/div/textarea
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[4]/div/input
	 Clear Element Text     xpath=/html/body/div[1]/div[1]/div[3]/div/div/form/div[5]/div/input
	 Select From List By Index    ItemTypeID    0
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาใส่หมายเลขครุภัณฑ์
	 Click Element    xpath=/html/body/div[1]/aside[1]/div/div[4]/div/div/nav/ul/li/ul/li[2]/a
TS004-39 Special characters information
	 Input Text    ID    ${ID9}
	 Input Text    Name    ${Name1}
	 Input Text    Detail    ${Detail1}
	 Input Text    Location    ${Location1}
	 Input Text    Comment    ${Comment1}
	 Select From List By Index    ItemTypeID    7
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกเป็นภาษาอังกฤษตัวพิมพ์เล็กหรือตัวพิมพ์ใหญ่ ภาษาไทย หรือ สัญลักษณ์ . - _ ()/
Test Teardown    Close Browser

TS005 Delete 
	 Set Selenium Speed      ${DELAY}
	 open Browser      ${HOMEPAGE}      ${BROWSER}
	 Click Element    xpath=/html/body/div[1]/div[1]/table/tbody/tr[5]/td[2]/a[1]
	 Location Should Be     ${DETAIL04}
TS005-1 Invalid Delete
	 Set Selenium Speed      ${DELAY}
	 Click Element    xpath=/html/body/div[1]/div[1]/div[2]/table/tbody/tr[1]/td[8]/a
	 Handle Alert     dismiss
	 Page Should Contain     5202040000012
TS005-2 Valid Delete
	 Set Selenium Speed      ${DELAY}
	 Click Element    xpath=/html/body/div[1]/div[1]/div[2]/table/tbody/tr[1]/td[8]/a
	 Handle Alert     accept
	 Page Should Not Contain      5202040000012
Test Teardown    Close Browser





























































