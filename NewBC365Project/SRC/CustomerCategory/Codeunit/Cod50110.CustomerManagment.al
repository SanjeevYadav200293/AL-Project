codeunit 50110 "Customer Managment"
{
    trigger OnRun()
    begin

    end;

    var

    procedure AssignDefaultCategory(CustomerCode: Code[20])
    var
        Customer: Record Customer;
        CustomerCategory: Record "Customer Category";
    begin
        //Set Default Category For a Customer
        Customer.get(CustomerCode);
        CustomerCategory.Reset();
        CustomerCategory.SetRange(Default, true);
        if CustomerCategory.FindFirst() then begin
            Customer."Customer Category SDM" := CustomerCategory.No;
            Customer.Modify();
        end;
    end;

    procedure AssignDefaultCategories()
    var
        Customer: Record Customer;
        CustomerCategory: Record "Customer Category";
    begin
        //Set Default Category For all Customers
        CustomerCategory.Reset();
        CustomerCategory.SetRange(Default, true);
        if CustomerCategory.FindFirst() then begin
            if Customer.FindSet() then begin
                repeat
                    Customer."Customer Category SDM" := CustomerCategory.No;
                    Customer.Modify();
                until Customer.Next() = 0;
            end;
        end;
    end;

    procedure CreateDefaultCategory()
    var
        CustomerCategory: Record "Customer Category";
    begin
        CustomerCategory.No := 'DEFAULT';
        CustomerCategory.Description := 'Default Customer Category';
        CustomerCategory.Default := true;
        if CustomerCategory.Insert() then;
    end;

    procedure GetTotalCustomersWithoutCategory(): Integer
    var
        Customer: Record Customer;
    begin
        Customer.Reset();
        Customer.SetRange("Customer Category SDM", '');
        exit(Customer.Count());
    end;
}