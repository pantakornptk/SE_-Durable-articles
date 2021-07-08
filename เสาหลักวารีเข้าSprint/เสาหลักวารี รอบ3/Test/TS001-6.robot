
*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${HOMEPAGE}     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/

${STATUSALL}     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/?ItemStatus=%E0%B8%97%E0%B8%B1%E0%B9%89%E0%B8%87%E0%B8%AB%E0%B8%A1%E0%B8%94
${STATUSBLANK}     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/?ItemStatus=%E0%B8%A7%E0%B9%88%E0%B8%B2%E0%B8%87
${STATUSLEND}     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/?ItemStatus=%E0%B8%96%E0%B8%B9%E0%B8%81%E0%B8%A2%E0%B8%B7%E0%B8%A1
${STATUSREPAIR}     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/?ItemStatus=%E0%B8%AA%E0%B9%88%E0%B8%87%E0%B8%8B%E0%B9%88%E0%B8%AD%E0%B8%A1
${STATUSDISCHARGE}     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/?ItemStatus=%E0%B8%9B%E0%B8%A5%E0%B8%94%E0%B8%9B%E0%B8%A3%E0%B8%B0%E0%B8%88%E0%B8%B3%E0%B8%81%E0%B8%B2%E0%B8%A3
${STATUSLENDINDXT}      http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/index.php?ItemStatus=%E0%B8%96%E0%B8%B9%E0%B8%81%E0%B8%A2%E0%B8%B7%E0%B8%A1
${LOCATIONITEM}      http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/edit.php?ItemID=%E0%B8%A1%E0%B8%82-1300-23-01-001-00001/49
${PERSONCHARGE}     เจ้าหน้าที่
${STARTDATE}     16/03/2020
${STARTDATE1}     วันที่16/03/2020
${ENDDATE}     23/03/2020 
${ENDDATE1}     วันที่23/03/2020   
${Personresponsible}     เจ้าหน้าที่ตึกSC06 
${BROWSER}     Chrome
${DELAY}    0.2
${ID1}     มข-1300-01-035-001-00165/51
${ID2}     มข-02-09-13-00-20-023-0002/48(รด)
${ID3}     มข-1300-01-035-001-00168/51
${ID4}     มข-1300-01-035-001-00169/51
${ID5}     มข-1300-01-035-001-00170/51
${ID6}     มข-1300-01-035-001-00171/51
${ID7}     มข-1300-01-035-001-00172/51
${ID8}     มข-1300-23-01-001-00001/49
${ID9}     >^<
${Name}     HP compag dc 7900
${Name1}     >^<
${Detail}     HP   Core 2 Duo 3.0  ,  HD 250 Gb. ,  RAM 2 Gb. (CPU)
${Detail1}     >^<
${Location}     6204
${Location1}     >^<
${LOCATION2}     ผศ.ดร. พุธษดี ศิริแสงตระกูล
${Comment}     คพ.02-114/51
${Comment1}     >^<

*** Test Cases ***
TS001 Open home page
	 Set Selenium Speed      ${DELAY}
     open Browser      ${HOMEPAGE}      ${BROWSER}
Test Teardown    Close Browser

TS002-1 Show status blank
	 Set Selenium Speed      ${DELAY}
     open Browser      ${HOMEPAGE}      ${BROWSER}
	 Select From List By Index    ItemStatus    1
	 Location Should Be     ${STATUSBLANK}

TS002-2 Show status lend
	 Set Selenium Speed      ${DELAY}
	 Select From List By Index    ItemStatus    2
	 Location Should Be     ${STATUSLEND}

TS002-3 Show status repair
	 Set Selenium Speed      ${DELAY}
	 Select From List By Index    ItemStatus    3
	 Location Should Be     ${STATUSREPAIR}

TS002-4 Show status discharge
	 Set Selenium Speed      ${DELAY}
	 Select From List By Index    ItemStatus    4
	 Location Should Be     ${STATUSDISCHARGE}	

TS002-5 Show status all
	 Set Selenium Speed      ${DELAY}
	 Select From List By Index    ItemStatus    1
	 Location Should Be     ${STATUSALL}	 
Test Teardown    Close Browser	 

TS003 Status Blank
	 Set Selenium Speed      ${DELAY}
	 open Browser      ${HOMEPAGE}      ${BROWSER}
	 Click Element    xpath=/html/body/div/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[8]/a
TS003-1 Valid information
	 Input Text    ID    ${ID1}
	 Input Text    Name    ${Name}
	 Input Text    Detail    ${Detail}
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    0
	 Input Text    Location    ${Location}
	 Input Text    Comment    ${Comment}
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     แก้ไขข้อมูลครุภัณฑ์สำเร็จ
	 Page Should Contain     ${ID1}
	 Location Should Be     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/index.php?ItemStatus=%E0%B8%A7%E0%B9%88%E0%B8%B2%E0%B8%87
	 Click Element    xpath=/html/body/div/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[8]/a
TS003-2 Repeated information
	 Input Text    ID    ${ID2}
	 Input Text    Name    ${Name}
	 Input Text    Detail    ${Detail}
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    0
	 Input Text    Location    ${Location}
	 Input Text    Comment    ${Comment}
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     หมายเลขครุภัณฑ์มีการใช้ไปแล้ว
	 Page Should Not Contain     ${ID2}
TS003-3 Invalid cancel
	 Input Text    ID    ${ID1}
	 Input Text    Name    ${Name}
	 Input Text    Detail    ${Detail}
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    0
	 Input Text    Location    ${Location}
	 Input Text    Comment    ${Comment}
     Click Button     btn-submit   
	 Handle Alert     dismiss
	 Page Should Not Contain     ${ID1}
TS003-4 Invalid ID
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[1]/div/input
	 Input Text    Name    ${Name}
	 Input Text    Detail    ${Detail}
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    0
	 Input Text    Location    ${Location}
	 Input Text    Comment    ${Comment}
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกหมายเลขครุภัณฑ์
	 Page Should Not Contain     ${ID1}
TS003-5 Invalid Name
	 Input Text    ID    ${ID1}
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[2]/div/input
	 Input Text    Detail    ${Detail}
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    0
	 Input Text    Location    ${Location}
	 Input Text    Comment    ${Comment}
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกชื่อครุภัณฑ์
	 Page Should Not Contain     ${ID1}
TS003-6 Valid Detail
	 Input Text    ID    ${ID3}
	 Input Text    Name    ${Name}
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[3]/div/textarea
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    0
	 Input Text    Location    ${Location}
	 Input Text    Comment    ${Comment}
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     แก้ไขข้อมูลครุภัณฑ์สำเร็จ
	 Page Should Contain     ${ID3}
	 Location Should Be     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/index.php?ItemStatus=%E0%B8%A7%E0%B9%88%E0%B8%B2%E0%B8%87
	 Click Element    xpath=/html/body/div/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[8]/a
TS003-7 Valid Location
	 Input Text    ID    ${ID4}
	 Input Text    Name    ${Name}
	 Input Text    Detail    ${Detail}
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    0
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[6]/div/input
	 Input Text    Comment    ${Comment}
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     แก้ไขข้อมูลครุภัณฑ์สำเร็จ
	 Page Should Contain     ${ID4}
	 Location Should Be     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/index.php?ItemStatus=%E0%B8%A7%E0%B9%88%E0%B8%B2%E0%B8%87
	 Click Element    xpath=/html/body/div/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[8]/a
TS003-8 Valid comment
	 Input Text    ID    ${ID5}
	 Input Text    Name    ${Name}
	 Input Text    Detail    ${Detail}
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    0
	 Input Text    Location    ${Location}
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[7]/div/input
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     แก้ไขข้อมูลครุภัณฑ์สำเร็จ
	 Page Should Contain     ${ID5}
	 Location Should Be     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/index.php?ItemStatus=%E0%B8%A7%E0%B9%88%E0%B8%B2%E0%B8%87
	 Click Element    xpath=/html/body/div/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[8]/a
TS003-9 Invalid Type
	 Input Text    ID    ${ID1}
	 Input Text    Name    ${Name}
	 Input Text    Detail    ${Detail}
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    1
	 Input Text    Location    ${Location}
	 Input Text    Comment    ${Comment}
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาเลือกประเภทครุภัณฑ์
	 Page Should Not Contain     ${ID1}
TS003-10 Invalid ID&Name
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[1]/div/input
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[2]/div/input
	 Input Text    Detail    ${Detail}
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    0
	 Input Text    Location    ${Location}
	 Input Text    Comment    ${Comment}
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกหมายเลขครุภัณฑ์
	 Page Should Not Contain     ${ID1}
TS003-11 Invalid ID&Detail
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[1]/div/input
	 Input Text    Name    ${Name}
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[3]/div/textarea
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    0
	 Input Text    Location    ${Location}
	 Input Text    Comment    ${Comment}
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกหมายเลขครุภัณฑ์
	 Page Should Not Contain     ${ID1}
TS003-12 Invalid ID&Location
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[1]/div/input
	 Input Text    Name    ${Name}
	 Input Text    Detail    ${Detail}
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    0
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[6]/div/input
	 Input Text    Comment    ${Comment}
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกหมายเลขครุภัณฑ์
	 Page Should Not Contain     ${ID1}
TS003-13 Invalid ID&Comment
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[1]/div/input
	 Input Text    Name    ${Name}
	 Input Text    Detail    ${Detail}
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    0
	 Input Text    Location    ${Location}
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[7]/div/input
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกหมายเลขครุภัณฑ์
	 Page Should Not Contain     ${ID1}
TS003-14 Invalid ID&Type
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[1]/div/input
	 Input Text    Name    ${Name}
	 Input Text    Detail    ${Detail}
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    1
	 Input Text    Location    ${Location}
	 Input Text    Comment    ${Comment}
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกหมายเลขครุภัณฑ์
	 Page Should Not Contain     ${ID1}
TS003-15 Invalid Name&Detail
	 Input Text    ID    ${ID1}
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[2]/div/input
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[3]/div/textarea
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    0
	 Input Text    Location    ${Location}
	 Input Text    Comment    ${Comment}
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกชื่อครุภัณฑ์   
	 Page Should Not Contain     ${ID1}
TS003-16 Invalid Name&Location
	 Input Text    ID    ${ID1}
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[2]/div/input
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    0
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[6]/div/input
	 Input Text    Comment    ${Comment}
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     
	 Page Should Not Contain     ${ID1}
TS003-17 Invalid Name&Comment
	 Input Text    ID    ${ID1}
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[2]/div/input
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    0
	 Input Text    Location    ${Location}
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[7]/div/input
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     
	 Page Should Not Contain     ${ID1}
TS003-18 Invalid Name&Type
	 Input Text    ID    ${ID1}
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[2]/div/input
	 Input Text    Detail    ${Detail}
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    1
	 Input Text    Location    ${Location}
	 Input Text    Comment    ${Comment}
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกชื่อครุภัณฑ์
	 Page Should Not Contain     ${ID1}
TS003-19 Valid Detail&Location
	 Input Text    ID    ${ID6}
	 Input Text    Name    ${Name}
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[3]/div/textarea
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    0
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[6]/div/input
	 Input Text    Comment    ${Comment}
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     แก้ไขข้อมูลครุภัณฑ์สำเร็จ
	 Page Should Contain     ${ID6}
	 Location Should Be     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/index.php?ItemStatus=%E0%B8%A7%E0%B9%88%E0%B8%B2%E0%B8%87
	 Click Element    xpath=/html/body/div/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[8]/a
TS003-20 Valid Detail&Comment
	 Input Text    ID    ${ID7}
	 Input Text    Name    ${Name}
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[3]/div/textarea
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    0
	 Input Text    Location    ${Location}
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[7]/div/input
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     แก้ไขข้อมูลครุภัณฑ์สำเร็จ
	 Page Should Contain     ${ID7}
	 Location Should Be     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/index.php?ItemStatus=%E0%B8%A7%E0%B9%88%E0%B8%B2%E0%B8%87
	 Click Element    xpath=/html/body/div/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[8]/a
TS003-21 Invalid Detail&Type
	 Input Text    ID    ${ID1}
	 Input Text    Name    ${Name}
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[3]/div/textarea
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    1
	 Input Text    Location    ${Location}
	 Input Text    Comment    ${Comment}
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาเลือกประเภทครุภัณฑ์
	 Page Should Not Contain     ${ID1}	 
TS003-22 Valid Location&Comment
	 Input Text    ID    ${ID8}
	 Input Text    Name    ${Name}
	 Input Text    Detail    ${Detail}
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    0
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[6]/div/input
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[7]/div/input
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     แก้ไขข้อมูลครุภัณฑ์สำเร็จ
	 Page Should Contain     ${ID8}
	 Location Should Be     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/index.php?ItemStatus=%E0%B8%A7%E0%B9%88%E0%B8%B2%E0%B8%87
	 Click Element    xpath=/html/body/div/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[8]/a
TS003-23 Invalid Location&Type
	 Input Text    ID    ${ID1}
	 Input Text    Name    ${Name}
	 Input Text    Detail    ${Detail}
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    1
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[6]/div/input
	 Input Text    Comment    ${Comment}
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาเลือกประเภทครุภัณฑ์
	 Page Should Not Contain     ${ID1}	 
TS003-24 Invalid Comment&Type
	 Input Text    ID    ${ID1}
	 Input Text    Name    ${Name}
	 Input Text    Detail    ${Detail}
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    1
	 Input Text    Location    ${Location}
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[7]/div/input
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาเลือกประเภทครุภัณฑ์
	 Page Should Not Contain     ${ID1}	 
TS003-25 Invalid ID&Name&Detail
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[1]/div/input
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[2]/div/input
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[3]/div/textarea
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    0
	 Input Text    Location    ${Location}
	 Input Text    Comment    ${Comment}
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกหมายเลขครุภัณฑ์
	 Page Should Not Contain     ${ID1}	 
TS003-26 Invalid ID&Name&Location
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[1]/div/input
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[2]/div/input
	 Input Text    Detail    ${Detail}
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    0
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[6]/div/input
	 Input Text    Comment    ${Comment}
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกหมายเลขครุภัณฑ์
	 Page Should Not Contain     ${ID1}	 
TS003-27 Invalid ID&Name&Comment
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[1]/div/input
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[2]/div/input
	 Input Text    Detail    ${Detail}
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    0
	 Input Text    Location    ${Location}
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[7]/div/input
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกหมายเลขครุภัณฑ์
	 Page Should Not Contain     ${ID1}	 
TS003-28 Invalid ID&Name&Type
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[1]/div/input
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[2]/div/input
	 Input Text    Detail    ${Detail}
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    1
	 Input Text    Location    ${Location}
	 Input Text    Comment    ${Comment}
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกหมายเลขครุภัณฑ์
	 Page Should Not Contain     ${ID1}	 
TS003-29 Invalid ID&Detail&Location
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[1]/div/input
	 Input Text    Name    ${Name}
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[3]/div/textarea
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    0
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[6]/div/input
	 Input Text    Comment    ${Comment}
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกหมายเลขครุภัณฑ์
	 Page Should Not Contain     ${ID1}	 
TS003-30 Invalid ID&Detail&Comment
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[1]/div/input
	 Input Text    Name    ${Name}
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[3]/div/textarea
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    0
	 Input Text    Location    ${Location}
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[7]/div/input
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกหมายเลขครุภัณฑ์
	 Page Should Not Contain     ${ID1}	 
TS003-31 Invalid ID&Detail&Type
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[1]/div/input
	 Input Text    Name    ${Name}
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[3]/div/textarea
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    1
	 Input Text    Location    ${Location}
	 Input Text    Comment    ${Comment}
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกหมายเลขครุภัณฑ์
	 Page Should Not Contain     ${ID1}	 
TS003-32 Invalid ID&Location&Comment
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[1]/div/input
	 Input Text    Name    ${Name}
	 Input Text    Detail    ${Detail}
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    0
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[6]/div/input
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[7]/div/input
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกหมายเลขครุภัณฑ์ 
	 Page Should Not Contain     ${ID1}	 
TS003-33 Invalid ID&Location&Type
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[1]/div/input
	 Input Text    Name    ${Name}
	 Input Text    Detail    ${Detail}
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    1
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[6]/div/input
	 Input Text    Comment    ${Comment}
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกหมายเลขครุภัณฑ์
	 Page Should Not Contain     ${ID1}	
TS003-34 Invalid ID&Comment&Type
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[1]/div/input
	 Input Text    Name    ${Name}
	 Input Text    Detail    ${Detail}
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    1
	 Input Text    Location    ${Location}
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[7]/div/input
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกหมายเลขครุภัณฑ์
	 Page Should Not Contain     ${ID1}	
TS003-35 Invalid ID&Name&Detail&Location
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[1]/div/input
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[2]/div/input
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[3]/div/textarea
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    0
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[6]/div/input
	 Input Text    Comment    ${Comment}
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกหมายเลขครุภัณฑ์
	 Page Should Not Contain     ${ID1}
TS003-35 Invalid ID&Name&Detail&Location
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[1]/div/input
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[2]/div/input
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[3]/div/textarea
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    0
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[6]/div/input
	 Input Text    Comment    ${Comment}
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกหมายเลขครุภัณฑ์
	 Page Should Not Contain     ${ID1}
TS003-37 Invalid ID&Name&Detail&Type
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[1]/div/input
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[2]/div/input
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[3]/div/textarea
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    1
	 Input Text    Location    ${Location}
	 Input Text    Comment    ${Comment}
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกหมายเลขครุภัณฑ์
	 Page Should Not Contain     ${ID1}
TS003-38 Invalid All
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[1]/div/input
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[2]/div/input
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[3]/div/textarea
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    1
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[6]/div/input
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[7]/div/input
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกหมายเลขครุภัณฑ์
	 Page Should Not Contain     ${ID1}
TS003-39 Special characters information
	 Input Text    ID    ${ID9}
	 Input Text    Name    ${Name1}
	 Input Text    Detail    ${Detail1}
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    0
	 Input Text    Location    ${Location1}
	 Input Text    Comment    ${Comment1}
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกเป็นภาษาอังกฤษตัวพิมพ์เล็กหรือตัวพิมพ์ใหญ่ ภาษาไทย หรือ สัญลักษณ์ . - _ ()/
Test Teardown    Close Browser

TS004 Status Discharge
	 Set Selenium Speed      ${DELAY}
	 open Browser      ${HOMEPAGE}      ${BROWSER}
	 Click Element    xpath=/html/body/div/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[8]/a
TS004-1 Valid information
	 Input Text    ID    ${ID1}
	 Input Text    Name    ${Name}
	 Input Text    Detail    ${Detail}
	 Select From List By Index    ItemStatus    3
	 Select From List By Index    ItemTypeID    0
	 Input Text    Location    ${Location}
	 Input Text    Comment    ${Comment}
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     แก้ไขข้อมูลครุภัณฑ์สำเร็จ
	 Page Should Contain     ${ID1}
	 Location Should Be     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/index.php?ItemStatus=%E0%B8%9B%E0%B8%A5%E0%B8%94%E0%B8%9B%E0%B8%A3%E0%B8%B0%E0%B8%88%E0%B8%B3%E0%B8%81%E0%B8%B2%E0%B8%A3
	 Click Element    xpath=/html/body/div/div/div/div/div/div/div[2]/table/tbody/tr/td[8]/a
TS004-2 Repeated information
	 Input Text    ID    ${ID2}
	 Input Text    Name    ${Name}
	 Input Text    Detail    ${Detail}
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    0
	 Input Text    Location    ${Location}
	 Input Text    Comment    ${Comment}
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     หมายเลขครุภัณฑ์มีการใช้ไปแล้ว
	 Page Should Not Contain     ${ID2}
TS004-3 Invalid cancel
	 Input Text    ID    ${ID1}
	 Input Text    Name    ${Name}
	 Input Text    Detail    ${Detail}
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    0
	 Input Text    Location    ${Location}
	 Input Text    Comment    ${Comment}
     Click Button     btn-submit   
	 Handle Alert     dismiss
	 Page Should Not Contain     ${ID1}
TS004-4 Invalid ID
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[1]/div/input
	 Input Text    Name    ${Name}
	 Input Text    Detail    ${Detail}
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    0
	 Input Text    Location    ${Location}
	 Input Text    Comment    ${Comment}
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกหมายเลขครุภัณฑ์
	 Page Should Not Contain     ${ID1}
TS004-5 Invalid Name
	 Input Text    ID    ${ID1}
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[2]/div/input
	 Input Text    Detail    ${Detail}
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    0
	 Input Text    Location    ${Location}
	 Input Text    Comment    ${Comment}
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกชื่อครุภัณฑ์
	 Page Should Not Contain     ${ID1}
TS004-6 Valid Detail
	 Input Text    ID    ${ID3}
	 Input Text    Name    ${Name}
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[3]/div/textarea
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    0
	 Input Text    Location    ${Location}
	 Input Text    Comment    ${Comment}
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     แก้ไขข้อมูลครุภัณฑ์สำเร็จ
	 Page Should Contain     ${ID3}
	 Location Should Be     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/index.php?ItemStatus=%E0%B8%9B%E0%B8%A5%E0%B8%94%E0%B8%9B%E0%B8%A3%E0%B8%B0%E0%B8%88%E0%B8%B3%E0%B8%81%E0%B8%B2%E0%B8%A3
	 Click Element    xpath=/html/body/div/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[8]/a
TS004-7 Valid Location
	 Input Text    ID    ${ID4}
	 Input Text    Name    ${Name}
	 Input Text    Detail    ${Detail}
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    0
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[6]/div/input
	 Input Text    Comment    ${Comment}
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     แก้ไขข้อมูลครุภัณฑ์สำเร็จ
	 Page Should Contain     ${ID4}
	 Location Should Be     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/index.php?ItemStatus=%E0%B8%9B%E0%B8%A5%E0%B8%94%E0%B8%9B%E0%B8%A3%E0%B8%B0%E0%B8%88%E0%B8%B3%E0%B8%81%E0%B8%B2%E0%B8%A3
	 Click Element    xpath=/html/body/div/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[8]/a
TS004-8 Valid comment
	 Input Text    ID    ${ID5}
	 Input Text    Name    ${Name}
	 Input Text    Detail    ${Detail}
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    0
	 Input Text    Location    ${Location}
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[7]/div/input
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     แก้ไขข้อมูลครุภัณฑ์สำเร็จ
	 Page Should Contain     ${ID5}
	 Location Should Be     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/index.php?ItemStatus=%E0%B8%9B%E0%B8%A5%E0%B8%94%E0%B8%9B%E0%B8%A3%E0%B8%B0%E0%B8%88%E0%B8%B3%E0%B8%81%E0%B8%B2%E0%B8%A3
	 Click Element    xpath=/html/body/div/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[8]/a
TS004-9 Invalid Type
	 Input Text    ID    ${ID1}
	 Input Text    Name    ${Name}
	 Input Text    Detail    ${Detail}
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    1
	 Input Text    Location    ${Location}
	 Input Text    Comment    ${Comment}
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาเลือกประเภทครุภัณฑ์
	 Page Should Not Contain     ${ID1}
TS004-10 Invalid ID&Name
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[1]/div/input
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[2]/div/input
	 Input Text    Detail    ${Detail}
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    0
	 Input Text    Location    ${Location}
	 Input Text    Comment    ${Comment}
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกหมายเลขครุภัณฑ์
	 Page Should Not Contain     ${ID1}
TS004-11 Invalid ID&Detail
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[1]/div/input
	 Input Text    Name    ${Name}
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[3]/div/textarea
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    0
	 Input Text    Location    ${Location}
	 Input Text    Comment    ${Comment}
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกหมายเลขครุภัณฑ์
	 Page Should Not Contain     ${ID1}
TS004-12 Invalid ID&Location
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[1]/div/input
	 Input Text    Name    ${Name}
	 Input Text    Detail    ${Detail}
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    0
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[6]/div/input
	 Input Text    Comment    ${Comment}
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกหมายเลขครุภัณฑ์
	 Page Should Not Contain     ${ID1}
TS004-13 Invalid ID&Comment
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[1]/div/input
	 Input Text    Name    ${Name}
	 Input Text    Detail    ${Detail}
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    0
	 Input Text    Location    ${Location}
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[7]/div/input
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกหมายเลขครุภัณฑ์
	 Page Should Not Contain     ${ID1}
TS004-14 Invalid ID&Type
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[1]/div/input
	 Input Text    Name    ${Name}
	 Input Text    Detail    ${Detail}
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    1
	 Input Text    Location    ${Location}
	 Input Text    Comment    ${Comment}
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกหมายเลขครุภัณฑ์
	 Page Should Not Contain     ${ID1}
TS004-15 Invalid Name&Detail
	 Input Text    ID    ${ID1}
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[2]/div/input
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[3]/div/textarea
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    0
	 Input Text    Location    ${Location}
	 Input Text    Comment    ${Comment}
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกชื่อครุภัณฑ์   
	 Page Should Not Contain     ${ID1}
TS004-16 Invalid Name&Location
	 Input Text    ID    ${ID1}
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[2]/div/input
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    0
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[6]/div/input
	 Input Text    Comment    ${Comment}
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     
	 Page Should Not Contain     ${ID1}
TS004-17 Invalid Name&Comment
	 Input Text    ID    ${ID1}
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[2]/div/input
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    0
	 Input Text    Location    ${Location}
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[7]/div/input
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     
	 Page Should Not Contain     ${ID1}
TS004-18 Invalid Name&Type
	 Input Text    ID    ${ID1}
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[2]/div/input
	 Input Text    Detail    ${Detail}
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    1
	 Input Text    Location    ${Location}
	 Input Text    Comment    ${Comment}
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกชื่อครุภัณฑ์
	 Page Should Not Contain     ${ID1}
TS004-19 Valid Detail&Location
	 Input Text    ID    ${ID6}
	 Input Text    Name    ${Name}
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[3]/div/textarea
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    0
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[6]/div/input
	 Input Text    Comment    ${Comment}
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     แก้ไขข้อมูลครุภัณฑ์สำเร็จ
	 Page Should Contain     ${ID6}
	 Location Should Be     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/index.php?ItemStatus=%E0%B8%9B%E0%B8%A5%E0%B8%94%E0%B8%9B%E0%B8%A3%E0%B8%B0%E0%B8%88%E0%B8%B3%E0%B8%81%E0%B8%B2%E0%B8%A3
	 Click Element    xpath=/html/body/div/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[8]/a
TS004-20 Valid Detail&Comment
	 Input Text    ID    ${ID7}
	 Input Text    Name    ${Name}
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[3]/div/textarea
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    0
	 Input Text    Location    ${Location}
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[7]/div/input
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     แก้ไขข้อมูลครุภัณฑ์สำเร็จ
	 Page Should Contain     ${ID7}
	 Location Should Be     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/index.php?ItemStatus=%E0%B8%9B%E0%B8%A5%E0%B8%94%E0%B8%9B%E0%B8%A3%E0%B8%B0%E0%B8%88%E0%B8%B3%E0%B8%81%E0%B8%B2%E0%B8%A3
	 Click Element    xpath=/html/body/div/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[8]/a
TS004-21 Invalid Detail&Type
	 Input Text    ID    ${ID1}
	 Input Text    Name    ${Name}
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[3]/div/textarea
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    1
	 Input Text    Location    ${Location}
	 Input Text    Comment    ${Comment}
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาเลือกประเภทครุภัณฑ์
	 Page Should Not Contain     ${ID1}	 
TS004-22 Valid Location&Comment
	 Input Text    ID    ${ID8}
	 Input Text    Name    ${Name}
	 Input Text    Detail    ${Detail}
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    0
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[6]/div/input
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[7]/div/input
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     แก้ไขข้อมูลครุภัณฑ์สำเร็จ
	 Page Should Contain     ${ID8}
	 Location Should Be     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/index.php?ItemStatus=%E0%B8%9B%E0%B8%A5%E0%B8%94%E0%B8%9B%E0%B8%A3%E0%B8%B0%E0%B8%88%E0%B8%B3%E0%B8%81%E0%B8%B2%E0%B8%A3
	 Click Element    xpath=/html/body/div/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[8]/a
TS004-23 Invalid Location&Type
	 Input Text    ID    ${ID1}
	 Input Text    Name    ${Name}
	 Input Text    Detail    ${Detail}
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    1
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[6]/div/input
	 Input Text    Comment    ${Comment}
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาเลือกประเภทครุภัณฑ์
	 Page Should Not Contain     ${ID1}	 
TS004-24 Invalid Comment&Type
	 Input Text    ID    ${ID1}
	 Input Text    Name    ${Name}
	 Input Text    Detail    ${Detail}
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    1
	 Input Text    Location    ${Location}
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[7]/div/input
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณาเลือกประเภทครุภัณฑ์
	 Page Should Not Contain     ${ID1}	 
TS004-25 Invalid ID&Name&Detail
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[1]/div/input
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[2]/div/input
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[3]/div/textarea
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    0
	 Input Text    Location    ${Location}
	 Input Text    Comment    ${Comment}
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกหมายเลขครุภัณฑ์
	 Page Should Not Contain     ${ID1}	 
TS004-26 Invalid ID&Name&Location
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[1]/div/input
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[2]/div/input
	 Input Text    Detail    ${Detail}
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    0
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[6]/div/input
	 Input Text    Comment    ${Comment}
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกหมายเลขครุภัณฑ์
	 Page Should Not Contain     ${ID1}	 
TS004-27 Invalid ID&Name&Comment
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[1]/div/input
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[2]/div/input
	 Input Text    Detail    ${Detail}
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    0
	 Input Text    Location    ${Location}
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[7]/div/input
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกหมายเลขครุภัณฑ์
	 Page Should Not Contain     ${ID1}	 
TS004-28 Invalid ID&Name&Type
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[1]/div/input
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[2]/div/input
	 Input Text    Detail    ${Detail}
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    1
	 Input Text    Location    ${Location}
	 Input Text    Comment    ${Comment}
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกหมายเลขครุภัณฑ์
	 Page Should Not Contain     ${ID1}	 
TS004-29 Invalid ID&Detail&Location
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[1]/div/input
	 Input Text    Name    ${Name}
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[3]/div/textarea
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    0
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[6]/div/input
	 Input Text    Comment    ${Comment}
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกหมายเลขครุภัณฑ์
	 Page Should Not Contain     ${ID1}	 
TS004-30 Invalid ID&Detail&Comment
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[1]/div/input
	 Input Text    Name    ${Name}
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[3]/div/textarea
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    0
	 Input Text    Location    ${Location}
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[7]/div/input
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกหมายเลขครุภัณฑ์
	 Page Should Not Contain     ${ID1}	 
TS004-31 Invalid ID&Detail&Type
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[1]/div/input
	 Input Text    Name    ${Name}
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[3]/div/textarea
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    1
	 Input Text    Location    ${Location}
	 Input Text    Comment    ${Comment}
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกหมายเลขครุภัณฑ์
	 Page Should Not Contain     ${ID1}	 
TS004-32 Invalid ID&Location&Comment
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[1]/div/input
	 Input Text    Name    ${Name}
	 Input Text    Detail    ${Detail}
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    0
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[6]/div/input
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[7]/div/input
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกหมายเลขครุภัณฑ์ 
	 Page Should Not Contain     ${ID1}	 
TS004-33 Invalid ID&Location&Type
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[1]/div/input
	 Input Text    Name    ${Name}
	 Input Text    Detail    ${Detail}
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    1
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[6]/div/input
	 Input Text    Comment    ${Comment}
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกหมายเลขครุภัณฑ์
	 Page Should Not Contain     ${ID1}	
TS004-34 Invalid ID&Comment&Type
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[1]/div/input
	 Input Text    Name    ${Name}
	 Input Text    Detail    ${Detail}
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    1
	 Input Text    Location    ${Location}
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[7]/div/input
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกหมายเลขครุภัณฑ์
	 Page Should Not Contain     ${ID1}	
TS004-35 Invalid ID&Name&Detail&Location
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[1]/div/input
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[2]/div/input
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[3]/div/textarea
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    0
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[6]/div/input
	 Input Text    Comment    ${Comment}
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกหมายเลขครุภัณฑ์
	 Page Should Not Contain     ${ID1}
TS004-35 Invalid ID&Name&Detail&Location
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[1]/div/input
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[2]/div/input
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[3]/div/textarea
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    0
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[6]/div/input
	 Input Text    Comment    ${Comment}
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกหมายเลขครุภัณฑ์
	 Page Should Not Contain     ${ID1}
TS004-37 Invalid ID&Name&Detail&Type
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[1]/div/input
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[2]/div/input
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[3]/div/textarea
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    1
	 Input Text    Location    ${Location}
	 Input Text    Comment    ${Comment}
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกหมายเลขครุภัณฑ์
	 Page Should Not Contain     ${ID1}
TS004-38 Invalid All
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[1]/div/input
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[2]/div/input
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[3]/div/textarea
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    1
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[6]/div/input
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[7]/div/input
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกหมายเลขครุภัณฑ์
	 Page Should Not Contain     ${ID1}
TS004-39 Special characters information
	 Input Text    ID    ${ID9}
	 Input Text    Name    ${Name1}
	 Input Text    Detail    ${Detail1}
	 Select From List By Index    ItemStatus    0
	 Select From List By Index    ItemTypeID    0
	 Input Text    Location    ${Location1}
	 Input Text    Comment    ${Comment1}
     Click Button     btn-submit   
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกเป็นภาษาอังกฤษตัวพิมพ์เล็กหรือตัวพิมพ์ใหญ่ ภาษาไทย หรือ สัญลักษณ์ . - _ ()/
Test Teardown    Close Browser

TS005-1 valid information
	 Set Selenium Speed      ${DELAY}
     open Browser      ${HOMEPAGE}      ${BROWSER}
	 Click Element    xpath=/html/body/div/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[8]/a
	 Select From List By Index    ItemStatus    2
	 Input Text    Location     ${LOCATION2}
	 Input Text    StartDate     ${STARTDATE}
	 Input Text    EndDate     ${ENDDATE}
	 Input Text    PersonCharge     ${PERSONCHARGE}
	 Click Button     btn-submit
	 Handle Alert     accept
	 Alert Should Be Present     แก้ไขข้อมูลครุภัณฑ์สำเร็จ
	 Location Should Be     ${STATUSLENDINDXT}
	 
TS005-2 invalid Location
	 Set Selenium Speed      ${DELAY}
	 Click Element    xpath=/html/body/div/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[11]/a
	 Select From List By Index    ItemStatus    0
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[6]/div/input
	 Input Text    StartDate     ${STARTDATE}
	 Input Text    EndDate     ${ENDDATE}
	 Input Text    PersonCharge     ${PERSONCHARGE}
	 Click Button     btn-submit
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกชื่อผู้ยืม
	 Location Should Be     ${LOCATIONITEM} 

TS005-3 invalid Loan date
	 Set Selenium Speed      ${DELAY}
	 Select From List By Index    ItemStatus    0
	 Input Text    Location     ${LOCATION2}
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[8]/div/input
	 Input Text    EndDate     ${ENDDATE}
	 Input Text    PersonCharge     ${PERSONCHARGE}
	 Click Button     btn-submit
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกวันที่ยืมครุภัณฑ์
	 Location Should Be     ${LOCATIONITEM} 
	 
TS005-4 invalid Returned date
	 Set Selenium Speed      ${DELAY}
	 Select From List By Index    ItemStatus    0
	 Input Text    Location     ${LOCATION2}
	 Input Text    StartDate     ${STARTDATE}
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[9]/div/input
	 Input Text    PersonCharge     ${PERSONCHARGE}
	 Click Button     btn-submit
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกวันที่คืนครุภัณฑ์
	 Location Should Be     ${LOCATIONITEM} 

TS005-5 invalid Responsible
	 Set Selenium Speed      ${DELAY}
	 Select From List By Index    ItemStatus    0
	 Input Text    Location     ${LOCATION2}
	 Input Text    StartDate     ${STARTDATE}
	 Input Text    EndDate     ${ENDDATE}
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[10]/div/input
	 Click Button     btn-submit
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกผู้รับผิดชอบ
	 Location Should Be     ${LOCATIONITEM} 

TS005-6 invalid Location&Loan Date
	 Set Selenium Speed      ${DELAY}
	 Select From List By Index    ItemStatus    0
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[6]/div/input
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[8]/div/input
	 Input Text    EndDate     ${ENDDATE}
	 Input Text    PersonCharge     ${PERSONCHARGE}
	 Click Button     btn-submit
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกชื่อผู้ยืม
	 Location Should Be     ${LOCATIONITEM} 

TS005-7 invalid Location&Returned Date
	 Set Selenium Speed      ${DELAY}
	 Select From List By Index    ItemStatus    0
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[6]/div/input
	 Input Text    StartDate     ${STARTDATE}
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[9]/div/input
	 Input Text    PersonCharge     ${PERSONCHARGE}
	 Click Button     btn-submit
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกชื่อผู้ยืม
	 Location Should Be     ${LOCATIONITEM} 

TS005-8 invalid Location&Responsible
	 Set Selenium Speed      ${DELAY}
	 Select From List By Index    ItemStatus    0
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[6]/div/input
	 Input Text    StartDate     ${STARTDATE}
	 Input Text    EndDate     ${ENDDATE}
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[10]/div/input
	 Click Button     btn-submit
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกชื่อผู้ยืม
	 Location Should Be    ${LOCATIONITEM} 

TS005-9 invalid Loan&Returned
	 Set Selenium Speed      ${DELAY}
	 Select From List By Index    ItemStatus    0
	 Input Text    Location     ${LOCATION2}
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[8]/div/input
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[9]/div/input
	 Input Text    PersonCharge     ${PERSONCHARGE}
	 Click Button     btn-submit
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกวันที่ยืมครุภัณฑ์
	 Location Should Be     ${LOCATIONITEM} 
	 
TS005-10 invalid Loan&Responsible
	 Set Selenium Speed      ${DELAY}
	 Select From List By Index    ItemStatus    0
	 Input Text    Location     ${LOCATION2}
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[8]/div/input
	 Input Text    EndDate     ${ENDDATE}
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[10]/div/input
	 Click Button     btn-submit
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกวันที่ยืมครุภัณฑ์
	 Location Should Be     ${LOCATIONITEM} 
	 
TS005-11 invalid Returned&Responsible
	 Set Selenium Speed      ${DELAY}
	 Select From List By Index    ItemStatus    0
	 input Text    Location     ${LOCATION2}
	 Input Text    StartDate     ${STARTDATE}
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[9]/div/input
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[10]/div/input
	 Click Button     btn-submit
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกวันที่คืนครุภัณฑ์
	 Location Should Be     ${LOCATIONITEM} 

TS005-12 invalid All
	 Set Selenium Speed      ${DELAY}
	 Select From List By Index    ItemStatus    0
	 Clear Element Text     xpath=html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[6]/div/input
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[8]/div/input
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[9]/div/input
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[10]/div/input
	 Click Button     btn-submit
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกชื่อผู้ยืม
	 Location Should Be     ${LOCATIONITEM} 

TS005-13 Number&Characters
	 Set Selenium Speed      ${DELAY}
	 Select From List By Index    ItemStatus    0
	 Clear Element Text     xpath=html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[6]/div/input
	 Input Text    StartDate     ${STARTDATE1}
	 Input Text    EndDate     ${ENDDATE1}
	 Input Text    PersonCharge     ${Personresponsible}
	 Click Button     btn-submit
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกตามแบบฟอร์ม
	 Location Should Be     ${LOCATIONITEM} 

TS005-14 Special characters information
	 Set Selenium Speed      ${DELAY}
	 Select From List By Index    ItemStatus    0
	 Input Text    Location     ${NAME1}
	 Input Text    StartDate     ${NAME1}
	 Input Text    EndDate     ${NAME1}
	 Input Text    PersonCharge     ${NAME1}
	 Click Button     btn-submit
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกตามแบบฟอร์ม
	 Location Should Be     ${LOCATIONITEM} 
Test Teardown    Close Browser	 

TS006-1 valid information
	 Set Selenium Speed      ${DELAY}
     open Browser      ${HOMEPAGE}      ${BROWSER}
	 Click Element    xpath=/html/body/div/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[8]/a
	 Select From List By Index    ItemStatus    2
	 Input Text    Location     ${LOCATION2}
	 Input Text    StartDate     ${STARTDATE}
	 Input Text    EndDate     ${ENDDATE}
	 Input Text    PersonCharge     ${PERSONCHARGE}
	 Click Button     btn-submit
	 Handle Alert     accept
	 Alert Should Be Present     แก้ไขข้อมูลครุภัณฑ์สำเร็จ
	 Location Should Be     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/index.php?ItemStatus=%E0%B8%AA%E0%B9%88%E0%B8%87%E0%B8%8B%E0%B9%88%E0%B8%AD%E0%B8%A1

TS006-2 invalid Location
	 Click Element    xpath=/html/body/div/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[9]/a
	 Select From List By Index    ItemStatus    0
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[6]/div/input
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[8]/div/input
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[9]/div/input
	 Input Text    PersonCharge     ${PERSONCHARGE}
	 Click Button     btn-submit
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกชื่อผู้แจ้งซ่อม
	 Location Should Be     ${LOCATIONITEM} 
	 
TS006-3 invalid Responsible
	 Select From List By Index    ItemStatus    0
	 Input Text    Location     ${LOCATION2}
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[10]/div/input
	 Click Button     btn-submit
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกผู้รับผิดชอบ
	 Location Should Be     ${LOCATIONITEM} 

TS006-4 invalid All
	 Select From List By Index    ItemStatus    0
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[6]/div/input
	 Clear Element Text     xpath=/html/body/div/div/div/div/div[2]/div/div/div/div/div[2]/form/div[10]/div/input
	 Click Button     btn-submit
	 Handle Alert     accept
	 Alert Should Be Present     กรุณากรอกชื่อผู้แจ้งซ่อม
	 Location Should Be     ${LOCATIONITEM} 

TS006-5 invalid Number&Characters
	 Select From List By Index    ItemStatus    0
	 Input Text    Location     ${LOCATION2}
	 Input Text    PersonCharge     ${Personresponsible}
	 Click Button     btn-submit
	 Handle Alert     accept
	 Alert Should Be Present     แก้ไขข้อมูลครุภัณฑ์สำเร็จ     
	 Location Should Be     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/index.php?ItemStatus=%E0%B8%AA%E0%B9%88%E0%B8%87%E0%B8%8B%E0%B9%88%E0%B8%AD%E0%B8%A1

TS006-6 invalid Special characters information
	 Click Element    xpath=/html/body/div/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[9]/a
	 Select From List By Index    ItemStatus    0
	 Input Text    Location     ${NAME1}
	 Input Text    PersonCharge     ${NAME1}
	 Click Button     btn-submit
	 Handle Alert     accept
	 Alert Should Be Present      แก้ไขข้อมูลครุภัณฑ์สำเร็จ     
	 Location Should Be     http://10.199.66.227/SoftEn2020/Sec02/Sao%20Lak%20Wari/index.php?ItemStatus=%E0%B8%AA%E0%B9%88%E0%B8%87%E0%B8%8B%E0%B9%88%E0%B8%AD%E0%B8%A1

Test Teardown    Close Browser	 	 























