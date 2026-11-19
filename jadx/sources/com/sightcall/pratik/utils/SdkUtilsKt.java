package com.sightcall.pratik.utils;

import android.os.Build;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000b\u001a\u0006\u0010\u0000\u001a\u00020\u0001\u001a\b\u0010\u0002\u001a\u00020\u0003H\u0007\u001a\b\u0010\u0004\u001a\u00020\u0003H\u0007\u001a\b\u0010\u0005\u001a\u00020\u0003H\u0007\u001a\b\u0010\u0006\u001a\u00020\u0003H\u0007\u001a\b\u0010\u0007\u001a\u00020\u0003H\u0007\u001a\b\u0010\b\u001a\u00020\u0003H\u0007\u001a\b\u0010\t\u001a\u00020\u0003H\u0007\u001a\b\u0010\n\u001a\u00020\u0003H\u0007\u001a\b\u0010\u000b\u001a\u00020\u0003H\u0007\u001a\b\u0010\f\u001a\u00020\u0003H\u0007\u001a\b\u0010\r\u001a\u00020\u0003H\u0007¨\u0006\u000e"}, d2 = {"sdkVersion", "", "isAtLeastSdk22", "", "isAtLeastSdk23", "isAtLeastSdk26", "isAtLeastSdk27", "isAtLeastSdk28", "isAtLeastSdk29", "isAtLeastSdk30", "isAtLeastSdk31", "isAtLeastSdk32", "isAtLeastSdk33", "isAtLeastSdk34", "pratik_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class SdkUtilsKt {
    public static final boolean isAtLeastSdk22() {
        return true;
    }

    public static final boolean isAtLeastSdk23() {
        return true;
    }

    public static final boolean isAtLeastSdk26() {
        return true;
    }

    public static final boolean isAtLeastSdk27() {
        return true;
    }

    public static final boolean isAtLeastSdk28() {
        return true;
    }

    public static final boolean isAtLeastSdk29() {
        return true;
    }

    public static final boolean isAtLeastSdk30() {
        return Build.VERSION.SDK_INT >= 30;
    }

    public static final boolean isAtLeastSdk31() {
        return Build.VERSION.SDK_INT >= 31;
    }

    public static final boolean isAtLeastSdk32() {
        return Build.VERSION.SDK_INT >= 32;
    }

    public static final boolean isAtLeastSdk33() {
        return Build.VERSION.SDK_INT >= 33;
    }

    public static final boolean isAtLeastSdk34() {
        return Build.VERSION.SDK_INT >= 34;
    }

    public static final int sdkVersion() {
        return Build.VERSION.SDK_INT;
    }
}
