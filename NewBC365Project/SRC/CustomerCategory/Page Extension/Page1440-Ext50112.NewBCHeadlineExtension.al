pageextension 50112 MynewBCHeadline extends "Headline RC Business Manager"
{
    layout
    {
        addafter(Control4)
        {
            field(NewHeadlineText; NewHeadlineText)
            {
                ApplicationArea = All;

                trigger OnDrillDown()
                var
                    Customer: Record Customer;
                    CustomerList: Page "Customer List";
                begin
                    //Show the Customers Without Category Assigned
                    Customer.Reset();
                    Customer.SetRange("Customer Category SDM", '');
                    CustomerList.SetTableView(Customer);
                    CustomerList.Run();
                end;
            }
        }
    }


    var
        NewHeadlineText: Text;

    trigger OnOpenPage()
    var
        HeadlineMgt: Codeunit "Headline Management";
        CustomerMgt: Codeunit "Customer Managment";
    begin
        //Set Headline Text
        NewHeadlineText := 'Number of Customers Without Assigned Category : ' +
                            HeadlineMgt.Emphasize(Format(CustomerMgt.GetTotalCustomersWithoutCategory()));
    end;
}