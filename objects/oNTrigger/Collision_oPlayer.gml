/// @description move to next room

with(oPlayer)
{
	if (hasctrl)
	{
		hasctrl	= false;
		SlideTrans(TRANS_MODE.GOTO, other.target);
		
	}
	
}