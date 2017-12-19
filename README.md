# ClimateNAreader

### Instructions for Use:

1. Download/Clone the repository
2. Place the raw data file of coordinates in *ClimateNAreader > Input*
3. Open *ClimateNAreader.R*
4. Edit lines 1 and 2 as appropriate
5. Run the script
6. Open the text files *Arrays > lat, long, and el*
7. Open *climate.js*
8. Replace lines 1, 3, and 5 with the content of the corresponding text files
9. Open Google Chrome and install the following extension: https://chrome.google.com/webstore/detail/custom-javascript-for-web/poakhlngfciodnhlhhgnaaelnpjljija
10. Navigate to http://www.climatewna.com/ 
11. Open the cjs Chrome extension, select http://www.climatewna.com/ in the dropdown and click 'enable cjs for this host'
12. Copy and paste the code from *climate.js* into the cjs text field, click 'save'
13. Wait patiently... the use of Google Maps slows the hack down substantially. Running overnight is recommended because the extension might interfere with other web pages (or use different browser until the hack is complete).

### Debugging

If something goes wrong and the hack needs to be reinitialized, try the following steps:

1. Disable cjs from running on the page
2. Reset the cjs text-field
3. **key step** While on the ClimateNA page, open the Chrome menu > More tools > Developer tools, click the application tab, click 'Session Storage', click 'http://www.climatewna.com/', and then select and delete all of the 'Key' and 'Value' entries
4. Refresh the page by clicking the address bar and hitting 'enter' (don't use the refresh button)
5. Repeat steps 11 - 13. 
