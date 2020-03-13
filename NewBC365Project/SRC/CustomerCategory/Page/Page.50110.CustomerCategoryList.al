page 50110 "Customer Category List"
{
    Caption = 'Customer Category List';
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = "Customer Category";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(No; No)
                {
                    ApplicationArea = All;
                }

                field(Description; Description)
                {
                    ApplicationArea = All;
                }

                field(Default; Default)
                {
                    ApplicationArea = All;
                }

                field("Total Customers For Category"; "Total Customers For Category")
                {
                    ApplicationArea = All;
                    ToolTip = 'Total Customers For Category';
                }

            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action("Create Default Category")
            {
                ApplicationArea = All;
                Image = Action;
                Promoted = true;
                PromotedCategory = Process;
                ToolTip = 'Create Default Category';

                trigger OnAction();
                var
                    CustomerManagment: Codeunit "Customer Managment";
                begin
                    //Integration Event Raised
                    OnbeforeCreateDefaultCategoryAction(Rec);
                    CustomerManagment.CreateDefaultCategory();
                    //Integration Event Raised
                    OnAfterCreateDefaultCategoryAction(Rec);
                end;
            }

        }
    }

    [IntegrationEvent(true, true)]
    local procedure OnbeforeCreateDefaultCategoryAction(var CustomerCategory: record "Customer Category")
    begin

    end;

    [IntegrationEvent(true, True)]
    local procedure OnAfterCreateDefaultCategoryAction(var CustomerCategory: record "Customer Category")
    begin

    end;
}

