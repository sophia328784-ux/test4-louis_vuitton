package com.perfectcorp.perfectlib;

/* JADX INFO: loaded from: classes3.dex */
public enum NailPosition {
    THUMB("thumb"),
    FOREFINGER("fore"),
    MIDDLE_FINGER("middle"),
    RING_FINGER("ring"),
    LITTLE_FINGER("little");

    final String lookString;

    NailPosition(String str) {
        this.lookString = str;
    }
}
