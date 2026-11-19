package com.google.android.gms.internal.measurement;

import java.util.Set;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes2.dex */
final class zzaar extends zzaag {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Level f30319b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Set f30320c;
    public final zzzq d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzaar(String str) {
        super(str);
        Level level = Level.ALL;
        Set set = zzaas.f30321f;
        this.f30319b = level;
        this.f30320c = zzaas.f30321f;
        this.d = zzaas.g;
    }

    @Override // com.google.android.gms.internal.measurement.zzzf
    public final boolean b(Level level) {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzzf
    public final void c(zzxz zzxzVar) {
        String strA = (String) zzxzVar.f().d(zzyw.f31103e);
        if (strA == null) {
            strA = this.f30303a;
        }
        if (strA == null) {
            strA = zzxzVar.c().a();
            int iIndexOf = strA.indexOf(36, strA.lastIndexOf(46));
            if (iIndexOf >= 0) {
                strA = strA.substring(0, iIndexOf);
            }
        }
        zzaal.a(strA);
        zzaas.e(zzxzVar, this.f30319b, this.f30320c, this.d);
    }
}
