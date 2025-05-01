// page 50117 "Employee Page"
// {
//     PageType = Card;
//     ApplicationArea = All;
//     UsageCategory = Administration;
//     SourceTable = Employe;

//     layout
//     {
//         area(Content)
//         {
//             group(General)
//             {
//                 field("emp code"; Rec."emp code")
//                 {
//                     ApplicationArea = All;
//                 }
//                 field(empId; Rec.empId)
//                 {
//                     ApplicationArea = All;
//                 }
//                 field("emp name"; Rec."emp name")
//                 {
//                     ApplicationArea = All;
//                 }
//                 field(salary; Rec.salary)
//                 {
//                     ApplicationArea = All;
//                 }
//             }
//             group("Other Information")
//             {
//                 field(DOJ; Rec.DOJ)
//                 {
//                     ApplicationArea = All;
//                 }
//                 field(City; Rec.City)
//                 {
//                     ApplicationArea = All;
//                 }
//                 field(Gender; Rec.Gender)
//                 {
//                     ApplicationArea = All;
//                 }
//             }
//         }
//     }

//     actions
//     {
//         area(Processing)
//         {
//             action(ActionName)
//             {

//                 trigger OnAction()
//                 begin

//                 end;
//             }
//         }
//     }

//     var
//         myInt: Integer;
// }