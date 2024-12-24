///@desc SlideTrans(mode, targetRoom)
///@arg mode: the transition mode, set to "NEXT", "GOTO", or "RESTART"
///@arg targetRoom: the targeted room index (used in "GOTO" mode)

function SlideTrans(mode, targetRoom)
{
    // Handle arguments
    if (argument_count > 0) 
    {
        mode = argument[0];  // Mode should be set first
    }

    if (argument_count > 1) 
    {
        targetRoom = argument[1];  // Target room index should be set if provided
    }
    
    switch (mode)
    {
        case TRANS_MODE.INTRO:
            // Intro transition (potentially not needed)
            break;
        
        case TRANS_MODE.NEXT:
            // Transition to the next room
            room_goto_next();
            break;
        
        case TRANS_MODE.GOTO:
            // Transition to the specified target room
            room_goto(targetRoom);
            break;
        
        case TRANS_MODE.RESTART:
            // Restart the game
            game_restart();
            break;
        
        default:
            // Optional: Handle unexpected mode (for debugging or robustness)
            show_message("Unknown transition mode: " + string(mode));
            break;
    }
}
