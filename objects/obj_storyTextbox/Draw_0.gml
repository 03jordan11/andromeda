/// @description Insert description here
// You can write your code in this editor

draw_self()

draw_set_font(fnt_mainText)
draw_set_halign(fa_left)
draw_set_valign(fa_top)

currentText = string_copy(self.textToShow, 1, self.stringIndex)
hackerGreen = make_color_rgb(32, 194, 14)
draw_text_ext_color(x, y, currentText, lineHeight, textWidth, hackerGreen, hackerGreen, hackerGreen, hackerGreen, 1)




