tableextension 50111 ItemLedgerEntryEXtension extends "Item Ledger Entry"
{
    fields
    {
        field(50110; "Customer Category SDM"; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = "Customer Category".No;

        }
    }
}