tableextension 50123 "Customer Ext" extends Customer
{
    fields
    {
        field(50120; "Reward ID"; Code[30])
        {
            TableRelation = Reward."Reward ID";

            ValidateTableRelation = true;

            trigger OnValidate();
            begin
                if (Rec."Reward ID" <> xRec."Reward ID") and
                (Rec.Blocked <> Blocked::" ") then begin
                    Error('Cannot update the reward status of a blocked customer.');
                end;
            end;
        }
    }
}