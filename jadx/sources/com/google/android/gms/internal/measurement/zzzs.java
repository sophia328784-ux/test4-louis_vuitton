package com.google.android.gms.internal.measurement;

import defpackage.md;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
final class zzzs implements zzzo {
    @Override // com.google.android.gms.internal.measurement.zzzo
    public final void a(zzyl zzylVar, Iterator it, zzzc zzzcVar) {
        if (!zzylVar.f31091c) {
            md.k("non repeating key");
            return;
        }
        if (!zzylVar.d || ((zzabt) zzabt.f30352c.get()).f30353b <= 20) {
            zzylVar.a(it, zzzcVar);
            return;
        }
        while (it.hasNext()) {
            zzzcVar.a(it.next(), zzylVar.f31089a);
        }
    }
}
