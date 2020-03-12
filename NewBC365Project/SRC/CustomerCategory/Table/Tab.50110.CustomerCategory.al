table 50110 "Customer Category"
{
    Caption = 'Customer Category';
    DrillDownPageId = "Customer Category List";
    LookupPageId = "Customer Category List";

    fields
    {
        field(1; No; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'No.';
            trigger OnValidate()
            begin

            end;
        }

        field(2; Description; Text[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Description';

        }

        field(3; Default; Boolean)
        {
            DataClassification = CustomerContent;
            Caption = 'Default';
        }

        field(4; "Total Customers For Category"; Boolean)
        {
            DataClassification = CustomerContent;
            Caption = 'Total Customers For Category';
            //FieldClass=FlowField;
            //CalcFormula=count(Customer where (customer))
        }

        field(5; EnableNewsLetter; Option)
        {
            OptionMembers = " ","Full","Limited";
            OptionCaption = ' ,Full,Limited';
            DataClassification = CustomerContent;
            Caption = 'Enable News Letter';
        }

        field(6; "Free Gift Available"; Boolean)
        {
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; No)
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    begin
        Message('Data Inserted !!');
    end;

}