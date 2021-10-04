asteroid_fn = function(asteroid) { return 0 };
enemy_fn = function(enemy) { return 0 };

audio_play_sound(sfx_Launch, 10, false);
audio_play_sound(sng_MainTheme, 100, true);
audio_sound_gain(sng_MainTheme, 1, 0);
audio_play_sound(sng_MainThemeGlitcher, 100, true);
audio_sound_gain(sng_MainThemeGlitcher, 0, 0);
audio_play_sound(sng_MainThemeGlitchest, 100, true);
audio_sound_gain(sng_MainThemeGlitchest, 0, 0);
