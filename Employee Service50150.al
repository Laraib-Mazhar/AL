report 50102 "Service Certificate Report"
{
    ApplicationArea = All;
    Caption = 'Employeee Service';
    UsageCategory = ReportsAndAnalysis;
    RDLCLayout = 'Employee Service.rdl';
    DefaultLayout = RDLC;
    dataset
    {
        dataitem(Employee; Employee)
        {
            column(Emp_Name; "First Name")
            { }
            column(Job_Title; "Job Title")
            { }
            column(Birth_Date; "Birth Date")
            { }
            column(Employment_Date; "Employment Date")
            { }
            column(Termination_Date; "Termination Date")
            { }
            column(Bank_Branch_No_; "Bank Branch No.")
            { }
            column(Phone_No_; "Phone No.")
            { }
            column(Department; "Global Dimension 1 Code")
            { }
            column(NationalNo; "Social Security No.")
            { }
            column(Nationality; "Country/Region Code")
            { }
        }

    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(Processing)
            {
            }
        }
    }
}