package com.linkplay.core.status;

/* JADX INFO: loaded from: classes2.dex */
public enum LPSpotifyPlayMode {
    LP_SPOTIFY_LISTREPEAT(0),
    LP_SPOTIFY_SINGLEREPEAT(1),
    LP_SPOTIFY_SHUFFLEREPEAT(2),
    LP_SPOTIFY_SHUFFLE(3),
    LP_SPOTIFY_DEFAULT(4),
    LP_SPOTIFY_SINGLE_REPEAT_SHUFFLE(5);

    private int status;

    LPSpotifyPlayMode(int i2) {
        this.status = i2;
    }

    public static LPSpotifyPlayMode byOrdinal(int i2) {
        for (LPSpotifyPlayMode lPSpotifyPlayMode : values()) {
            if (lPSpotifyPlayMode.status == i2) {
                return lPSpotifyPlayMode;
            }
        }
        return LP_SPOTIFY_LISTREPEAT;
    }

    public int getStatus() {
        return this.status;
    }
}
