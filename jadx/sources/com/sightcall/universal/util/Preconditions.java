package com.sightcall.universal.util;

import android.text.TextUtils;
import defpackage.md;
import defpackage.r81;
import java.util.Collection;

/* JADX INFO: loaded from: classes2.dex */
public final class Preconditions {
    private Preconditions() {
    }

    public static void checkArgument(boolean z, String str) {
        if (z) {
            return;
        }
        md.n(str);
    }

    public static String checkNotEmpty(String str) {
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        md.n("Must not be null or empty");
        return null;
    }

    public static <T> T checkNotNull(T t, String str) {
        if (t != null) {
            return t;
        }
        r81.d(str);
        return null;
    }

    public static <T> T checkNotNull(T t) {
        return (T) checkNotNull(t, "Argument must not be null");
    }

    public static <T extends Collection<Y>, Y> T checkNotEmpty(T t) {
        if (!t.isEmpty()) {
            return t;
        }
        md.n("Must not be empty.");
        return null;
    }
}
