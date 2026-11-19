package com.google.ar.core;

import defpackage.r81;
import defpackage.z81;

/* JADX INFO: loaded from: classes2.dex */
public enum VpsAvailability {
    UNKNOWN(0),
    AVAILABLE(1),
    UNAVAILABLE(2),
    ERROR_INTERNAL(-1),
    ERROR_NETWORK_CONNECTION(-2),
    ERROR_NOT_AUTHORIZED(-3),
    ERROR_RESOURCE_EXHAUSTED(-4);

    final int nativeCode;

    VpsAvailability(int i2) {
        this.nativeCode = i2;
    }

    public static VpsAvailability forNumber(int i2) {
        for (VpsAvailability vpsAvailability : values()) {
            if (vpsAvailability.nativeCode == i2) {
                return vpsAvailability;
            }
        }
        r81.i(z81.f(String.valueOf(i2).length() + (byte) 51, i2, "Unexpected value for native VpsAvailability, value="));
        return null;
    }
}
