page 50111 "Free Gift List"
{

    PageType = List;
    SourceTable = "Free Gifts";
    Caption = 'Free Gift List';
    ApplicationArea = All;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Customer Category Code"; "Customer Category Code")
                {
                    ApplicationArea = All;
                }
                field("Item No."; "Item No.")
                {
                    ApplicationArea = All;
                }
                field("Minimum Order Quantity"; "Minimum Order Quantity")
                {
                    ApplicationArea = All;
                    Style = Strong;
                }
                field("Gift Quantity"; "Gift Quantity")
                {
                    ApplicationArea = All;
                    Style = Strong;
                }
            }
        }
    }

}
