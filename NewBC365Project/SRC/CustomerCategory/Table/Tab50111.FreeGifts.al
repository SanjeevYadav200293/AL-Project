table 50111 "Free Gifts"
{
    Caption = 'Free Gifts';
    DataClassification = CustomerContent;
    DrillDownPageId = "Free Gift List";
    LookupPageId = "Free Gift List";

    fields
    {
        field(1; "Customer Category Code"; Code[20])
        {
            Caption = 'Customer Category Code';
            DataClassification = CustomerContent;
            TableRelation = "Customer Category";
        }
        field(2; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            DataClassification = CustomerContent;
            TableRelation = Item."No.";
        }
        field(3; "Minimum Order Quantity"; Decimal)
        {
            Caption = 'Minimum Order Quantity';
            DataClassification = CustomerContent;
        }
        field(4; "Gift Quantity"; Decimal)
        {
            Caption = 'Gift Quantity';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "Customer Category Code", "Item No.")
        {
            Clustered = true;
        }
    }

}
