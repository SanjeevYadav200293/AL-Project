tableextension 50101 itemExtension extends Item
{
    fields
    {
        field(50100; Test_Field; Text[100])
        {
            DataClassification = ToBeClassified;
            CaptionML = ENU = 'Test_Feild';

        }

        field(50101; Tested; Boolean)
        {
            DataClassification = ToBeClassified;
            CaptionML = ENU = 'Tested';
        }

        field(50102; Show_Test_Value; Boolean)
        {
            DataClassification = ToBeClassified;
            Editable = true;
        }
    }
}
