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
