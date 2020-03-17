report 50111 CustomerList
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = Word;
    RDLCLayout = 'Layout/CustomerList.rdl';
    WordLayout = 'Layout/CustomerList.docx';
    PreviewMode = Normal;

    dataset
    {
        dataitem(Customer; Customer)
        {
            RequestFilterFields = "No.";
            column(No_; "No.")
            {
                IncludeCaption = true;
            }

            column(Name; Name)
            {
                IncludeCaption = true;
            }

            column(Balance; Balance)
            {
                IncludeCaption = true;
            }
        }
    }
}