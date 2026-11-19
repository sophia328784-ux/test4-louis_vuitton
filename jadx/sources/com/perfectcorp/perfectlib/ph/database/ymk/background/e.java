package com.perfectcorp.perfectlib.ph.database.ymk.background;

import com.perfectcorp.perfectlib.makeupcam.camera.BackgroundPayload;

/* JADX INFO: loaded from: classes3.dex */
public abstract class e {
    final BackgroundPayload.BackgroundSticker backgroundSticker;
    final String className;
    final int index;
    final String rootFolder;

    public e(String str, BackgroundPayload.BackgroundSticker backgroundSticker, String str2, int i2) {
        this.className = str;
        this.backgroundSticker = backgroundSticker;
        this.rootFolder = str2;
        this.index = i2;
    }
}
