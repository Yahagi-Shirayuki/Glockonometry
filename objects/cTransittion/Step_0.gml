/// @description Transition progress

if (mode != TRANS_MODE.OFF)
{
    if (mode == TRANS_MODE.INTRO)
    {
        percent = max(maxlenght, percent - max((percent / tSpd), 0.0005));
    } 
    else if (mode == TRANS_MODE.NEXT)
    {
        percent = min(minlenght, percent + max(((minlenght - percent) / tSpd), 0.0005));
    }
    
    // Small threshold to handle floating-point comparison
    var epsilon = 0.0001;
    if (abs(percent - minlenght) < epsilon || abs(percent - maxlenght) < epsilon)
    {	
        switch (mode)
        {
            case TRANS_MODE.INTRO:
                mode = TRANS_MODE.OFF;
                break;

            case TRANS_MODE.NEXT:
                mode = TRANS_MODE.INTRO;
                room_goto_next();
                break;

            case TRANS_MODE.GOTO:
                mode = TRANS_MODE.INTRO;
                room_goto(target);
                break;

            case TRANS_MODE.RESTART:
                game_restart();
                break;
        }
    }
}
