package com.google.ar.core;

import defpackage.r81;
import defpackage.z81;

/* JADX INFO: loaded from: classes2.dex */
public enum FutureState {
    PENDING(0),
    CANCELLED(1),
    DONE(2);

    final int nativeCode;

    FutureState(int i2) {
        this.nativeCode = i2;
    }

    public static FutureState forNumber(int i2) {
        for (FutureState futureState : values()) {
            if (futureState.nativeCode == i2) {
                return futureState;
            }
        }
        r81.i(z81.f(String.valueOf(i2).length() + (byte) 47, i2, "Unexpected value for native FutureState, value="));
        return null;
    }
}
