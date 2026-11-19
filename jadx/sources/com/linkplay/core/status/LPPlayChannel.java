package com.linkplay.core.status;

/* JADX INFO: loaded from: classes4.dex */
public enum LPPlayChannel {
    LP_CHANNEL_STEREO(0),
    LP_CHANNEL_LEFT(1),
    LP_CHANNEL_RIGHT(2);

    private int status;

    LPPlayChannel(int i2) {
        this.status = i2;
    }

    public static LPPlayChannel byOrdinal(int i2) {
        for (LPPlayChannel lPPlayChannel : values()) {
            if (lPPlayChannel.status == i2) {
                return lPPlayChannel;
            }
        }
        return LP_CHANNEL_STEREO;
    }

    public int getStatus() {
        return this.status;
    }
}
