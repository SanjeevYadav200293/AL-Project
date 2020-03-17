report 50112 ProcessingOnly
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    ProcessingOnly = true;

    dataset
    {
        dataitem(Customer; Customer)
        {
            //RequestFilterFields = Name;
            trigger OnPreDataItem()
            begin
                Clear(Customer);
                Clear(Counter);
                if not ReplaceExisting then
                    Customer.SetRange("Name 2", '');
            end;

            trigger OnAfterGetRecord()
            begin
                if Customer2.get(Customer."No.") then begin
                    Customer2."Name 2" := Name2ToAppy;
                    Customer2.Modify();
                    Counter += 1;
                end;
            end;

            trigger OnPostDataItem()
            begin
                Message('Ready!!, %1 Customers Were Updated.', Counter);
            end;
        }
    }

    requestpage
    {
        SaveValues = true;
        layout
        {
            area(Content)
            {
                group(Options)
                {
                    Caption = 'Options';
                    field(Name2ToAppy; Name2ToAppy)
                    {
                        ApplicationArea = All;
                        Caption = 'Name2 To Apply';
                        ToolTip = 'Specifies Name2 To Apply.';
                    }

                    field(ReplaceExisting; ReplaceExisting)
                    {
                        ApplicationArea = All;
                        Caption = 'Replace Existing';
                        ToolTip = 'Replace Existing';
                    }
                }
            }
        }
    }

    var
        Name2ToAppy: Text;
        Customer2: Record Customer;
        ReplaceExisting: Boolean;
        Counter: Integer;
}