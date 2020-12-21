pageextension 50124 "Customer Card Ext" extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field("Reward ID"; "Reward ID")
            {
                ApplicationArea = All;

                Lookup = true;
            }
        }
    }

    actions
    {
        addfirst(navigation)
        {
            action("Rewards")
            {
                ApplicationArea = All;

                RunObject = page "Reward List";
            }
        }
    }

    var
        myInt: Integer;
}