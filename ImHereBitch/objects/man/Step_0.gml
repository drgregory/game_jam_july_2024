/// @description Insert description here
// You can write your code in this editor
var switchKey = ord("X");

if (keyboard_check(switchKey)) {
    audio_play_sound(snd_wheesh_carousel, 0, false, 1, 0, random_range(0.7, 1.3));
}

var switchKey2 = ord("M");

if (keyboard_check(switchKey2)) {
    audio_play_sound(snd_wheesh_carousel, 0, false, 1, 0, random_range(0.7, 1.3));
}