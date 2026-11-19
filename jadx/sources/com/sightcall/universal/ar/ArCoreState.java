package com.sightcall.universal.ar;

import com.sightcall.universal.Universal;

/* JADX INFO: loaded from: classes3.dex */
public enum ArCoreState {
    UNKNOWN,
    UNSUPPORTED,
    INSTALL,
    UPDATE,
    READY;

    public static ArCoreState get() {
        return Universal.ar().getArCoreState();
    }
}
