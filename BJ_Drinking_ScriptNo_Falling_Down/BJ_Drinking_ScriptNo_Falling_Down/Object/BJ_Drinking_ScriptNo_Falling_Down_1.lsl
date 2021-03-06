// :CATEGORY:Animation
// :NAME:BJ_Drinking_ScriptNo_Falling_Down
// :AUTHOR:Anonymous
// :CREATED:2010-01-10 05:20:56.000
// :EDITED:2013-09-18 15:38:48
// :ID:91
// :NUM:126
// :REV:1.0
// :WORLD:Second Life
// :DESCRIPTION:
// BJ Drinking Script(No Falling Down).lsl
// :CODE:

string anim ="drink";
string anim2 ="hold_R_handgun";

default
{
    attach(key victim)
    {
    if(victim == NULL_KEY)
    {
          llStopAnimation(anim);
          llStopAnimation(anim2);
          llSetTimerEvent(0);
          
        }
        else
        {
         llRequestPermissions(victim,PERMISSION_TRIGGER_ANIMATION);
    }
}

   run_time_permissions(integer permissions)
    {
        if (PERMISSION_TRIGGER_ANIMATION & permissions)
        {
        llStartAnimation(anim);
        llStartAnimation(anim2);
        //llWhisper(0,"Courtesy of Club Elite");
        llSetTimerEvent(15);
        }
    }

   timer()
   {
    llStartAnimation(anim2);
    llStartAnimation(anim);
    }

}

// END //
