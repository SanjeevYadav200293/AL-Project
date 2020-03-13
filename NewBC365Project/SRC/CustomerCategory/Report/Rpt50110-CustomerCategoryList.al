report 50110 "Customer Category List"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = Word;
    RDLCLayout = 'Layout\CustomerCategoryListRDLC.rdl';
    WordLayout = 'Layout\CustomerCategoryListWord.docx';
    Caption = 'Customer Category List';

    dataset
    {
        dataitem("Customer Category"; "Customer Category")
        {
            column(No; No) { }
            column(Description; Description) { }
            column(Total_Customers_For_Category; "Total Customers For Category") { }
            column(Free_Gift_Available; "Free Gift Available") { }

            trigger OnAfterGetRecord()
            begin
                // CalcFields("Total Customers For Category")
            end;
        }
    }
}