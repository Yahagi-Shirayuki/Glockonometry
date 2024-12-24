/// @description Autosave
// Autosave variable
setweapon = global.setweapon;
upgrade = global.upgrade;
// Override old save
if (file_exists(SAVEFILE)) file_delete(SAVEFILE);

// Create new save
var sfile;
sfile = file_text_open_write(SAVEFILE);
file_text_write_real(sfile, room);
file_text_writeln(sfile); // Write a newline for clarity
file_text_write_real(sfile, global.setweapon);
file_text_writeln(sfile); // Write a newline for clarity
file_text_write_real(sfile, global.upgrade);
file_text_close(sfile);
