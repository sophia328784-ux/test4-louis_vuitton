package com.google.android.gms.internal.gtm;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tagmanager.zzq;
import java.util.Date;
import java.util.HashMap;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes2.dex */
public final class zzcz extends zzbd {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap f30045b;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ExecutorService f30046j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final zzal f30047k;
    public final zzq l;
    public final Context m;

    public zzcz(Context context, zzq zzqVar, com.google.android.gms.tagmanager.zzh zzhVar) {
        zzal zzalVar = new zzal(context, zzqVar, zzhVar);
        ExecutorService executorServiceA = zzdb.a(context);
        this.f30045b = new HashMap(1);
        Preconditions.h(zzqVar);
        this.l = zzqVar;
        this.f30047k = zzalVar;
        this.f30046j = executorServiceA;
        this.m = context;
    }

    @Override // com.google.android.gms.internal.gtm.zzbe
    public final void S(String str, Bundle bundle, String str2, long j2, boolean z) {
        this.f30046j.execute(new zzcx(this, new zzar(str, bundle, str2, new Date(j2), z, this.l)));
    }

    @Override // com.google.android.gms.internal.gtm.zzbe
    public final void c() {
        this.f30045b.clear();
    }

    @Override // com.google.android.gms.internal.gtm.zzbe
    public final void c0(String str, String str2, String str3, zzbb zzbbVar) {
        this.f30046j.execute(new zzcw(this, str, str2, str3, zzbbVar));
    }

    @Override // com.google.android.gms.internal.gtm.zzbe
    public final void h0() {
        this.f30046j.execute(new zzcy(this));
    }
}
