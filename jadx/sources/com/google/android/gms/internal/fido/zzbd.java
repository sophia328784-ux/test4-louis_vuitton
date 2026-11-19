package com.google.android.gms.internal.fido;

import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class zzbd {
    public static final CharSequence a(Object obj) {
        Objects.requireNonNull(obj);
        return obj instanceof CharSequence ? (CharSequence) obj : obj.toString();
    }
}
