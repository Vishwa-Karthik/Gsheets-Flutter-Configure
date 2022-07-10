# Configure Google Sheets X Flutter

A Simple Flutter-example to configure with Google Sheets API

## Add Dependency

```bash
flutter pub add gsheets
```

## Configure Google Cloud
1. Go to [Google Cloud Provider](https://console.cloud.google.com/)
2. Create New Project
3. Enable GOOGLE SHEETS API
4. Under API & SERVICES -> Create new Credentials -> Service Account -> Add new Credentials
5. Click edit option on newly created Service Account
6. Under Keys -> Create New key -> Type JSON
7. JSON file gets downloaded, paste it inside the code
8. Under Details tab -> Email -> Copy your gmail-id 
9. Share your google worksheet to this mail-id
10. Gsheets is now successfully configured

## Spreadsheet ID
Your Spreadsheet ID is on the URL
<p>
<img src="https://github.com/Vishwa-Karthik/Gsheets-Flutter-Configure/blob/master/spreadsheetID.jpg" height=50 width=5000 />
</p>

## Code
```dart
import 'package:gsheets/gsheets.dart';

// create credentials
const _credentials = r'''
{
  <JSON METADATA>
}
''';
// store sheet ID
const _spreadSheetId = '<SPREADSHEET-ID>';

void main() async {
  // init gsheets
  final gsheets = GSheets(_credentials);
  // fetch spreadsheet
  final ss = await gsheets.spreadsheet(_spreadSheetId);
  //get worksheet
  var sheet = ss.worksheetByTitle('Sheet1');

  // CRUD Operation
  await sheet!.values.insertValue("Great", column: 1, row: 1);
}
```

## Reference
Pub.dev: [gsheets](https://pub.dev/packages/gsheets)
