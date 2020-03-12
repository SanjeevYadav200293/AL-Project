tableextension 50110 CustomerTableExtension extends Customer
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