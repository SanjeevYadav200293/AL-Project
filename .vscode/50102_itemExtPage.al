pageextension 50102 ItempageExt extends "Item Card"
{
    layout
    {
        addafter(Blocked)
        {
            field(Test_Field; Test_Field)
            {
                ApplicationArea = All;
                ShowMandatory = true;

            }
        }

        addbefore(Blocked)
        {
            field(Show_Test_Value; Show_Test_Value)
            {
                ApplicationArea = All;
                ShowMandatory = true;
            }

            field(Tested; Tested)
            {
                ApplicationArea = all;
                ShowMandatory = true;
            }
        }
    }
}