package com.google.android.gms.internal.measurement;

import defpackage.mt;

/* JADX INFO: loaded from: classes2.dex */
final class zzaes implements zzafa {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzafa[] f30423a;

    public zzaes(zzafa... zzafaVarArr) {
        this.f30423a = zzafaVarArr;
    }

    @Override // com.google.android.gms.internal.measurement.zzafa
    public final boolean a(Class cls) {
        for (int i2 = 0; i2 < 2; i2++) {
            if (this.f30423a[i2].a(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.zzafa
    public final zzaez b(Class cls) {
        for (int i2 = 0; i2 < 2; i2++) {
            zzafa zzafaVar = this.f30423a[i2];
            if (zzafaVar.a(cls)) {
                return zzafaVar.b(cls);
            }
        }
        mt.i("No factory is available for message type: ".concat(cls.getName()));
        return null;
    }
}
