package com.google.android.gms.internal.fido;

import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class zzay {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Set f29831a;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public zzay(String str) {
        this(zzcu.f29865k, false);
        int i2 = zzcf.d;
    }

    public final void a(long j2) {
        final Class<Long> cls = Long.class;
        new zzax(cls) { // from class: com.google.android.gms.internal.fido.zzaw
        };
    }

    public final void b(String str) {
        final Class<String> cls = String.class;
        new zzax(cls) { // from class: com.google.android.gms.internal.fido.zzau
        };
    }

    public final zzaq c(boolean z) {
        Boolean boolValueOf = Boolean.valueOf(z);
        final Class<Boolean> cls = Boolean.class;
        new zzax(cls) { // from class: com.google.android.gms.internal.fido.zzas
        };
        return new zzaq(boolValueOf);
    }

    public zzay(Set set, boolean z) {
        this.f29831a = set;
    }
}
