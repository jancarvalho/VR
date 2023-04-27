#bddDefine
Feature: Validate if JSon back the key typeOfEstablishment
As a user of VR's API, I would like to request for analysis data in the JSon

Scenario: Conect in VR's API and check key 'typeOfEstablishment' and print this key
Given Conected in link of API to request the key
When requesting the information about the JSon in API with key typeOfEstablishment
Then the API back the data requested and show data