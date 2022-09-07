/// @description Insert description here
// You can write your code in this editor
if(!audio_is_playing(Familiar___Puff)&&global.currentLevel==0)
{
	audio_play_sound(Familiar___Puff,1,true)
}

audio_group_set_gain(audiogroup_SFX, global.sfxVol/100, 0);
audio_group_set_gain(audiogroup_music, global.musicVol/100, 0);