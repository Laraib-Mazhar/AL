// table 50152 Employe
// {
//     Caption = 'Employee Table';
//     DataClassification = ToBeClassified;

//     fields
//     {
//         field(1; "emp code"; Code[50])
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(10; "emp name"; Text[20])
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(20; salary; Decimal)
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(30; DOJ; Date)
//         {
//             DataClassification = ToBeClassified;
//         }
//         field(40; City; Option)
//         {
//             OptionMembers = Lahore,Islamabad,Sargodha,Karachi;
//             DataClassification = ToBeClassified;
//         }
//         field(50; Gender; Option)
//         {
//             OptionMembers = Male,Female;
//             DataClassification = ToBeClassified;
//         }
//         field(60; empId; BigInteger)
//         {
//             DataClassification = ToBeClassified;
//         }
//     }

//     keys
//     {
//         key(Key1; "emp code", empId)
//         {
//             Clustered = true;
//         }
//     }

//     fieldgroups
//     {
//         // Add changes to field groups here
//     }

//     var
//         myInt: Integer;

//     trigger OnInsert()
//     begin
//         Message('Data Insert');

//     end;

//     trigger OnModify()
//     begin
//         Message('Data Modyfied');

//     end;

//     trigger OnDelete()
//     begin
//         Message('Data Deleted');

//     end;

//     trigger OnRename()
//     begin
//         Message('Data Rename');

//     end;
// }