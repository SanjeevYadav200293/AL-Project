report 50111 CustomerList
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = 'Layout/CustomerList.rdl';
    WordLayout = 'Layout/CustomerList.docx';
    PreviewMode = Normal;
    dataset
    {
        dataitem(Customer; Customer)
        {
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