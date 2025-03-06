# PhoneApp 📱
A mini iOS contact management app that allows users to add, edit, and customize contacts with a name, phone number, and a color-coded avatar. It uses 3 main screens:
  1. List of the contacts
  2. Screen for editing existing contact
  3. Screen for creating new contact
     
## Technologies used
  1. Swift
  2. UIKit
  3. MVC
     
## Screen 1 - List of Contacts
  - Displays a list of saved contacts using a UITableView.
  - Each contact is shown in a custom cell with:
      - Name
      - Phone number
      - Circular avatar with a customizable background color
  - Supports selection to edit a contact.
  - Provides a button to add new contacts.
  - Allows deleting contacts from the list.
    
<p align="middle">
<img src="https://github-production-user-asset-6210df.s3.amazonaws.com/140091433/420118669-0f75155e-dd80-4565-88d6-22facbec54f5.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAVCODYLSA53PQK4ZA%2F20250306%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20250306T225521Z&X-Amz-Expires=300&X-Amz-Signature=90ada81ba991283c5db11dd1dc1bb41d92605f5a2dbd57c7dc11382ddacdc1f4&X-Amz-SignedHeaders=host" width="191.17" height="400" />
<img src="https://github-production-user-asset-6210df.s3.amazonaws.com/140091433/420119064-e55a2149-1591-49a9-a8fd-a476b8bb1105.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAVCODYLSA53PQK4ZA%2F20250306%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20250306T225628Z&X-Amz-Expires=300&X-Amz-Signature=b02b078c0309e2512d054a8d2c3c800b91b7c83ae4bc80489c694fd8b29f4ad6&X-Amz-SignedHeaders=host" width="191.17" height="400" />
<img src="https://github-production-user-asset-6210df.s3.amazonaws.com/140091433/420119700-504bfeeb-1d92-4301-9734-fca3997df26b.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAVCODYLSA53PQK4ZA%2F20250306%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20250306T225925Z&X-Amz-Expires=300&X-Amz-Signature=64229e9eb08d535538402242fe563e31eac05c9ae412d182896e419277303693&X-Amz-SignedHeaders=host" width="191.17" height="400" />

    
## Screen 2 - Add Contact
  - Allows users to enter a name and phone number.
  - Uses numpad for entering phone numbers.
  - Includes a color selection feature for the avatar.
  - Uses a toolbar with a "Done" button to finalize input.
  - Saves the new contact using protocol-based communication.
    
<p align="middle">
<img src="https://github-production-user-asset-6210df.s3.amazonaws.com/140091433/420121616-fb090166-a190-403a-a822-f07d94e531c5.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAVCODYLSA53PQK4ZA%2F20250306%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20250306T230939Z&X-Amz-Expires=300&X-Amz-Signature=bba0beb38cd4530a6b4d5a1d2ed1c2a65d00ae3383bfc433606d9cd7acf763a3&X-Amz-SignedHeaders=host" width="191.17" height="400" />
<img src="https://github-production-user-asset-6210df.s3.amazonaws.com/140091433/420120705-0840c266-3866-4753-a77d-8734b6daf02a.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAVCODYLSA53PQK4ZA%2F20250306%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20250306T230426Z&X-Amz-Expires=300&X-Amz-Signature=58e6170b1cc351ea426100b42305820371b57e8cd9a7a7a9af7e9561b9791350&X-Amz-SignedHeaders=host" width="191.17" height="400" />
<img src="https://github-production-user-asset-6210df.s3.amazonaws.com/140091433/420121942-95a7e859-6ef1-4b9d-8887-a89483b91cbc.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAVCODYLSA53PQK4ZA%2F20250306%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20250306T231108Z&X-Amz-Expires=300&X-Amz-Signature=2e7e5275117b7792290b97f1e5c7b38dc3db5525a849340d6f870e59931a5806&X-Amz-SignedHeaders=host" width="191.17" height="400" />





## Screen 3 - Edit Contact
  - Displays current contact details in text fields.
  - Allows users to modify the name and phone number.
  - Uses numpad for entering phone numbers.
  - Provides color selection buttons to change the avatar color.
  - Implements protocol-based communication to pass updated data back to the Main Screen.
    
<p align="middle">
<img src="https://github-production-user-asset-6210df.s3.amazonaws.com/140091433/420122558-4d3580ea-57e7-4523-bd49-79905340f411.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAVCODYLSA53PQK4ZA%2F20250306%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20250306T231418Z&X-Amz-Expires=300&X-Amz-Signature=8faff95d29b5ffe62468abafac3608538883db0a99542f3dc1bb95cc3a744dba&X-Amz-SignedHeaders=host" width="191.17" height="400" />
<img src="https://github-production-user-asset-6210df.s3.amazonaws.com/140091433/420122673-5c174a79-5fcc-405d-8a21-39e7e25d2f06.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAVCODYLSA53PQK4ZA%2F20250306%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20250306T231502Z&X-Amz-Expires=300&X-Amz-Signature=263d86d3698a33f865df373d29a588d88615b2f4d618ea5fdbf597f7764e3af5&X-Amz-SignedHeaders=host" width="191.17" height="400" />
<img src="https://github-production-user-asset-6210df.s3.amazonaws.com/140091433/420122806-93184b50-5a97-415d-85e8-04167eb20d91.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAVCODYLSA53PQK4ZA%2F20250306%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20250306T231619Z&X-Amz-Expires=300&X-Amz-Signature=d5daeb3ce7b411058fa4bce0716dca240c9f0a6f373b8394e2cc4e4d9f6cb47c&X-Amz-SignedHeaders=host" width="191.17" height="400" />
<img src="https://github-production-user-asset-6210df.s3.amazonaws.com/140091433/420122813-cdf3b71d-db09-4615-800b-429c6b3d5d8f.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAVCODYLSA53PQK4ZA%2F20250306%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20250306T231538Z&X-Amz-Expires=300&X-Amz-Signature=86299e9027f05c89784f49f7e82f57151fc5d4065a61d2bd13fea9471f4c621c&X-Amz-SignedHeaders=host" width="191.17" height="400" />





