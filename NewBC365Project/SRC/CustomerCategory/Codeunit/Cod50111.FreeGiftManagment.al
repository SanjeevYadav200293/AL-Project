codeunit 50111 "Free Gift Management"
{
    [EventSubscriber(ObjectType::Table, 37, 'OnAfterValidateEvent', 'Quantity', False, False)]
    local procedure AddFreeGift(var Rec: Record "Sales Line")
    var
        FreeGift: Record "Free Gifts";
        SalesLine: Record "Sales Line";
        Customer: Record Customer;
    begin
        If (Rec.Type = Rec.Type::Item) AND (Customer.Get(Rec."Sell-to Customer No.")) then begin
            if (FreeGift.Get(Customer."Customer Category SDM", Rec."No.")) AND
                (FreeGift."Minimum Order Quantity" < Rec.Quantity) then begin
                //Create a New Sales Line With the Free Gift
                OnBeforeFreeGiftSalesLineAdded(Rec);
                SalesLine.Init();
                SalesLine.TransferFields(Rec);
                SalesLine."Line No." := Rec."Line No." + 10000;
                SalesLine.Validate(Quantity, FreeGift."Gift Quantity");
                SalesLine.Validate("Line Discount %", 100);
                if SalesLine.Insert() then;
                OnAfterFreeGiftSalesLineAdded(Rec);
            end;
        end;
    end;

    [IntegrationEvent(true, true)]
    local procedure OnBeforeFreeGiftSalesLineAdded(var Rec: Record "Sales Line")
    begin

    end;

    [IntegrationEvent(true, true)]
    local procedure OnAfterFreeGiftSalesLineAdded(var Rec: Record "Sales Line")
    begin

    end;

    [EventSubscriber(ObjectType::Table, 32, 'OnAfterInsertEvent', '', false, false)]
    local procedure OnAfterItemLedgerEntryInsert(var Rec: Record "Item Ledger Entry")
    var
        Customer: Record Customer;
    begin
        if Rec."Entry Type" = Rec."Entry Type"::Sale then begin
            if Customer.get(Rec."Source No.") then begin
                Rec."Customer Category SDM" := Customer."Customer Category SDM";
                Rec.Modify();
            end;
        end;
    end;
}