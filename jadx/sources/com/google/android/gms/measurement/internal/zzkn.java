package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
final class zzkn implements zzpo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzlj f31879a;

    public zzkn(zzlj zzljVar) {
        this.f31879a = zzljVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzpo
    public final void b(String str, String str2, Bundle bundle) {
        boolean zIsEmpty = TextUtils.isEmpty(str);
        zzlj zzljVar = this.f31879a;
        if (zIsEmpty) {
            zzljVar.k("auto", "_err", bundle);
        } else {
            zzljVar.getClass();
            md.k("Unexpected call on client side");
        }
    }
}
