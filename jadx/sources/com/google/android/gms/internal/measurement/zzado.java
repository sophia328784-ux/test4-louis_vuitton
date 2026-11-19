package com.google.android.gms.internal.measurement;

import defpackage.md;
import defpackage.r81;

/* JADX INFO: loaded from: classes2.dex */
final class zzado implements zzafa {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final zzado f30404a = new zzado();

    @Override // com.google.android.gms.internal.measurement.zzafa
    public final boolean a(Class cls) {
        return zzadu.class.isAssignableFrom(cls);
    }

    @Override // com.google.android.gms.internal.measurement.zzafa
    public final zzaez b(Class cls) {
        if (!zzadu.class.isAssignableFrom(cls)) {
            md.n("Unsupported message type: ".concat(cls.getName()));
            return null;
        }
        try {
            return (zzaez) zzadu.u(cls.asSubclass(zzadu.class)).z(3);
        } catch (Exception e2) {
            r81.g("Unable to get message info for ".concat(cls.getName()), e2);
            return null;
        }
    }
}
