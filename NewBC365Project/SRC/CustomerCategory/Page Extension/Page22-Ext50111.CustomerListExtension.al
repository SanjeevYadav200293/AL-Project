pageextension 50111 CustomerListExtension extends "Customer List"
{
    actions
    {
        addlast(Processing)
        {
            action("Assign Default Category")
            {
                ApplicationArea = All;
                Image = ChangeCustomer;
                Promoted = true;
                PromotedCategory = Process;
                ToolTip = 'Assigns the Default Category to all Customes';

                trigger OnAction()
                var
                    CustomerManagment: Codeunit "Customer Managment";
                begin
                    CustomerManagment.AssignDefaultCategories();
                end;
            }
        }
    }
}