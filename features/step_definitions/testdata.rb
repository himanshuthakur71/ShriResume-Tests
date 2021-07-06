require 'faker'


#----------------------------------------------------------------------------------
BASEURL = "https://shriresume.srivivah.com/"
# BASEURL = "http://192.168.1.101:3000"
#----------------------------------------------------------------------------------




# Valid Login Detials
#----------------------------------------------------------------------------------
if BASEURL == "https://shriresume.srivivah.com/" 

	USER_EMAIL = "himanshu@madhulata.org"
	USER_PASSWORD = "test123"
else

   USER_EMAIL = "raj@madhulata.org"
   USER_PASSWORD = "password"
   
end
#----------------------------------------------------------------------------------




# Faker data
#----------------------------------------------------------------------------------
FIRSTNAME = Faker::Name.first_name
LASTNAME = Faker::Name.last_name
EMAILID = Faker::Internet.email
PASSWORD = Faker::Internet.password(min_length: 8, max_length: 15)
CITY = Faker::Address.city
ADDRESS1 = Faker::Address.full_address
ADDRESS2 = Faker::Address.street_address
COMPANYNAME = Faker::Company.name
SCHOOLNAME = Faker::University.name
PINCODE = Faker::Address.postcode
PARAGRAPH = Faker::Lorem.paragraph(sentence_count: 32)
SENTENCE = Faker::Lorem.sentence(word_count: 8)
WORD = Faker::Lorem.word
AVATAR = Faker::Avatar.image
PHONENUMBER = Faker::PhoneNumber.subscriber_number(length: 10)
LINKEDIN_ID = Faker::Internet.url(host: 'linkedin.com')
PASSPORT = Faker::DrivingLicence.british_driving_licence
#----------------------------------------------------------------------------------


# Resumebuilder
#----------------------------------------------------------------------------------
TEMPLATE_ID = [1, 2, 3, 4, 5, 6, 7, 8, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26]
EXPERIENCE_LEVEL = ['Student','Entry Level','Intern','Experienced','Fresher','Manager','Executive']
PREFIX = ['Mr.','Mrs.','Ms.','Dr.']
COUNTRY = ["India","Afghanistan","Åland Islands","Albania","Algeria","American Samoa","Andorra","Angola","Anguilla","Antarctica","Antigua and Barbuda","Argentina","Armenia","Aruba","Australia","Austria","Azerbaijan","Bahamas","Bahrain","Bangladesh","Barbados","Belarus","Belgium","Belize","Benin","Bermuda","Bhutan","Bolivia, Plurinational State of","Bonaire, Sint Eustatius and Saba","Bosnia and Herzegovina","Botswana","Bouvet Island","Brazil","British Indian Ocean Territory","Brunei Darussalam","Bulgaria","Burkina Faso","Burundi","Cambodia","Cameroon","Canada","Cape Verde","Cayman Islands","Central African Republic","Chad","Chile","China","Christmas Island","Cocos (Keeling) Islands","Colombia","Comoros","Congo","Congo, The Democratic Republic of the","Cook Islands","Costa Rica","Côte d'Ivoire","Croatia","Cuba","Curaçao","Cyprus","Czech Republic","Denmark","Djibouti","Dominica","Dominican Republic","Ecuador","Egypt","El Salvador","Equatorial Guinea","Eritrea","Estonia","Ethiopia","Falkland Islands (Malvinas)","Faroe Islands","Fiji","Finland","France","French Guiana","French Polynesia","French Southern Territories","Gabon","Gambia","Georgia","Germany","Ghana","Gibraltar","Greece","Greenland","Grenada","Guadeloupe","Guam","Guatemala","Guernsey","Guinea","Guinea-Bissau","Guyana","Haiti","Heard Island and McDonald Islands","Holy See (Vatican City State)","Honduras","Hong Kong","Hungary","Iceland","India","Indonesia","Iran, Islamic Republic of","Iraq","Ireland","Isle of Man","Israel","Italy","Jamaica","Japan","Jersey","Jordan","Kazakhstan","Kenya","Kiribati","Korea, Democratic People's Republic of","Korea, Republic of","Kuwait","Kyrgyzstan","Lao People's Democratic Republic","Latvia","Lebanon","Lesotho","Liberia","Libya","Liechtenstein","Lithuania","Luxembourg","Macao","Macedonia, Republic of","Madagascar","Malawi","Malaysia","Maldives","Mali","Malta","Marshall Islands","Martinique","Mauritania","Mauritius","Mayotte","Mexico","Micronesia, Federated States of","Moldova, Republic of","Monaco","Mongolia","Montenegro","Montserrat","Morocco","Mozambique","Myanmar","Namibia","Nauru","Nepal","Netherlands","New Caledonia","New Zealand","Nicaragua","Niger","Nigeria","Niue","Norfolk Island","Northern Mariana Islands","Norway","Oman","Pakistan","Palau","Palestine, State of","Panama","Papua New Guinea","Paraguay","Peru","Philippines","Pitcairn","Poland","Portugal","Puerto Rico","Qatar","Réunion","Romania","Russian Federation","Rwanda","Saint Barthélemy","Saint Helena, Ascension and Tristan da Cunha","Saint Kitts and Nevis","Saint Lucia","Saint Martin (French part)","Saint Pierre and Miquelon","Saint Vincent and the Grenadines","Samoa","San Marino","Sao Tome and Principe","Saudi Arabia","Senegal","Serbia","Seychelles","Sierra Leone","Singapore","Sint Maarten (Dutch part)","Slovakia","Slovenia","Solomon Islands","Somalia","South Africa","South Georgia and the South Sandwich Islands","South Sudan","Spain","Sri Lanka","Sudan","Suriname","Svalbard and Jan Mayen","Swaziland","Sweden","Switzerland","Syrian Arab Republic","Taiwan","Tajikistan","Tanzania, United Republic of","Thailand","Timor-Leste","Togo","Tokelau","Tonga","Trinidad and Tobago","Tunisia","Turkey","Turkmenistan","Turks and Caicos Islands","Tuvalu","Uganda","Ukraine","United Arab Emirates","United Kingdom","United States Minor Outlying Islands","United States","Uruguay","Uzbekistan","Vanuatu","Venezuela, Bolivarian Republic of","Viet Nam","Virgin Islands, British","Virgin Islands, U.S.","Wallis and Futuna","Western Sahara","Yemen","Zambia","Zimbabwe"]
STATE = ["Andaman and Nicobar Islands","Andhra Pradesh","Arunachal Pradesh","Assam","Bihar","Chandigarh","Chhattisgarh","Dadra and Nagar Haveli","Daman and Diu","Delhi","Goa","Gujarat","Haryana","Himachal Pradesh","Jammu and Kashmir","Jharkhand","Karnataka","Kerala","Lakshadweep","Madhya Pradesh","Maharashtra","Manipur","Meghalaya","Mizoram","Nagaland","Odisha","Puducherry","Punjab","Rajasthan","Sikkim","Tamil Nadu","Telangana","Tripura","Uttar Pradesh","Uttarakhand","West Bengal"]
#education
DEGREE_TYPE = ["High School","Intermediate","Diploma","Bachelor of Architecture","Bachelor of Arts","Bachelor of Ayurvedic Medicine & Surgery","Bachelor of Business Administration","Bachelor of Commerce","Bachelor of Computer Applications","Bachelor of Dental Surgery","Bachelor of Design","Bachelor of Education","Bachelor of Engineering / Bachelor of Technology","Bachelor of Fine Arts","Bachelor of Fisheries Science","Bachelor of Homoeopathic Medicine and Surgery","Bachelor of Laws","Bachelor of Mass Communications","Bachelor of Medicine and Bachelor of Surgery","Bachelor of Nursing","Bachelor of Pharmacy","Bachelor of Physical Education","Bachelor of Physiotherapy","Bachelor of Science","Bachelor of Social Work","Bachelor of Veterinary Science","Master of Architecture","Master of Arts","Master of Business Administration","Master of Chirurgiae","Master of Commerce","Master of Computer Applications","Master of Dental Surgery","Master of Design","Master of Education","Master of Engineering / Master of Technology","Master of Fine Arts","Master of Laws","Master of Mass Communications","Master of Pharmacy","Master of Philosophy","Master of Physical Education","Master of Physiotherapy","Master of Science","Master of Social Work","Master of Surgery","Master of Veterinary Science","Doctorate","Doctor of Medicine","Doctor of Medicine in Homoeopathy","Doctor of Pharmacy","Doctor of Philosophy","Doctorate of Medicine","Other","Certification Courses"]
GRADUATION_STATUS = ["Completed","Graduated","Matriculating","Matriculated","Pursuing","Post Graduate","Not Applicable"]
MONTH = ["January","February","March","April","May","June","July","August","September","October","November","December"]
YEAR = [1960,1961,1962,1963,1964,1965,1966,1967,1968,1969,1970,1971,1972,1973,1974,1975,1976,1977,1978,1979,1980,1981,1982,1983,1984,1985,1986,1987,1988,1989,1990,1991,1992,1993,1994,1995,1996,1997,1998,1999,2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,2013,2014,2015,2016,2017,2018,2019,2020]
DIVISION = [ "Division I","Division II", "Division III"]
TRAINING_STATUS = ['Completed','To be Completed by','Not Applicable']
PROJECT_LABEL = ['Project Type', 'Client', 'Role', 'Team Size', 'Technologies', 'Project URL']
GENDER = ["Male", "Female"]
PATRIARCHAL_PREFIX = ['Mr.','Dr.']
MARITAL_STATUS = ["Married", "Single"]
#----------------------------------------------------------------------------------
