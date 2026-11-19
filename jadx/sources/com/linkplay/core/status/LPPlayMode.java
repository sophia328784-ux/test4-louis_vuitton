package com.linkplay.core.status;

/* JADX INFO: loaded from: classes2.dex */
public enum LPPlayMode {
    LP_LISTREPEAT(0),
    LP_SINGLEREPEAT(1),
    LP_SHUFFLE(2),
    LP_SHUFFLEREPEAT(3),
    LP_DEFAULT(4);

    private int status;

    LPPlayMode(int i2) {
        this.status = i2;
    }

    public static LPPlayMode byOrdinal(int i2) {
        for (LPPlayMode lPPlayMode : values()) {
            if (lPPlayMode.status == i2) {
                return lPPlayMode;
            }
        }
        return LP_LISTREPEAT;
    }

    public int getStatus() {
        return this.status;
    }
}
