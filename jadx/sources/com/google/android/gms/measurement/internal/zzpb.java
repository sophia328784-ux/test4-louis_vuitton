package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes2.dex */
final class zzpb implements zzpo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzpg f31969a;

    public zzpb(zzpg zzpgVar) {
        this.f31969a = zzpgVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzpo
    public final void b(String str, String str2, Bundle bundle) {
        boolean zIsEmpty = TextUtils.isEmpty(str);
        zzpg zzpgVar = this.f31969a;
        if (!zIsEmpty) {
            zzpgVar.c().p(new zzpa(this, str, str2, bundle));
            return;
        }
        zzic zzicVar = zzpgVar.l;
        if (zzicVar != null) {
            zzgu zzguVar = zzicVar.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31769f.b(str2, "AppId not known when logging event");
        }
    }
}
