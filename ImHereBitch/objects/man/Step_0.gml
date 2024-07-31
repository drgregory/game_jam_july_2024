/// @description Insert description here
// You can write your code in this editor
var switchKey = ord("M");

if (keyboard_check(switchKey)) {
    audio_play_sound(wheesh, 0, false, 1, 0, random_range(0.7, 1.3));
}