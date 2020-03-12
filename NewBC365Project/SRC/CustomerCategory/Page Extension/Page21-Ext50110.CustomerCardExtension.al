pageextension 50110 "Customer Card Extension" extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field("Customer Category SDM"; "Customer Category SDM")
            {
                ApplicationArea = All;
                ToolTip = 'Customer Category';
            }
        }
    }

    actions
    {
        addlast("F&unctions")
        {
            action("Assign Default Category")
            {
                ApplicationArea = All;
                Image = ChangeCustomer;
                Promoted = true;
                PromotedCategory = Process;
                ToolTip = 'Assign the Default Category For the Selected Customer';

                trigger OnAction()
                var
                //CustomerManagment : Codeunit "Customer Mgt.";
                begin

                end;
            }
        }
    }
}