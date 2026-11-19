package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.util.SparseArray;
import com.google.common.util.concurrent.FutureCallback;

/* JADX INFO: loaded from: classes2.dex */
final class zzjw implements FutureCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzoh f31874a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzlj f31875b;

    public zzjw(zzlj zzljVar, zzoh zzohVar) {
        this.f31874a = zzohVar;
        this.f31875b = zzljVar;
    }

    @Override // com.google.common.util.concurrent.FutureCallback
    public final void onFailure(Throwable th) {
        zzlj zzljVar = this.f31875b;
        zzljVar.g();
        zzic zzicVar = zzljVar.f31850a;
        zzljVar.f31891i = false;
        zzljVar.N().add(this.f31874a);
        if (zzljVar.f31892j > ((Integer) zzfy.v0.a(null)).intValue()) {
            zzljVar.f31892j = 1;
            zzgu zzguVar = zzicVar.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31771i.c("registerTriggerAsync failed. May try later. App ID, throwable", zzgu.o(zzicVar.r().m()), zzgu.o(th.toString()));
            return;
        }
        zzgu zzguVar2 = zzicVar.f31842f;
        zzic.m(zzguVar2);
        zzguVar2.f31771i.d("registerTriggerAsync failed. App ID, delay in seconds, throwable", zzgu.o(zzicVar.r().m()), zzgu.o(String.valueOf(zzljVar.f31892j)), zzgu.o(th.toString()));
        int i2 = zzljVar.f31892j;
        if (zzljVar.f31893k == null) {
            zzljVar.f31893k = new zzjx(zzljVar, zzicVar);
        }
        zzljVar.f31893k.b(((long) i2) * 1000);
        int i3 = zzljVar.f31892j;
        zzljVar.f31892j = i3 + i3;
    }

    @Override // com.google.common.util.concurrent.FutureCallback
    public final void onSuccess(Object obj) {
        zzlj zzljVar = this.f31875b;
        zzljVar.g();
        zzic zzicVar = zzljVar.f31850a;
        zzhh zzhhVar = zzicVar.f31841e;
        zzic.k(zzhhVar);
        SparseArray sparseArrayM = zzhhVar.m();
        zzoh zzohVar = this.f31874a;
        sparseArrayM.put(zzohVar.d, Long.valueOf(zzohVar.f31944c));
        zzhh zzhhVar2 = zzicVar.f31841e;
        zzic.k(zzhhVar2);
        int[] iArr = new int[sparseArrayM.size()];
        long[] jArr = new long[sparseArrayM.size()];
        for (int i2 = 0; i2 < sparseArrayM.size(); i2++) {
            iArr[i2] = sparseArrayM.keyAt(i2);
            jArr[i2] = ((Long) sparseArrayM.valueAt(i2)).longValue();
        }
        Bundle bundle = new Bundle();
        bundle.putIntArray("uriSources", iArr);
        bundle.putLongArray("uriTimestamps", jArr);
        zzhhVar2.n.b(bundle);
        zzljVar.f31891i = false;
        zzljVar.f31892j = 1;
        zzgu zzguVar = zzicVar.f31842f;
        zzic.m(zzguVar);
        zzguVar.m.b(zzohVar.f31943b, "Successfully registered trigger URI");
        zzljVar.O();
    }
}
