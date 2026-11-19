package com.google.android.gms.internal.gtm;

import android.os.Bundle;
import android.os.RemoteException;
import android.os.SystemClock;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.tagmanager.zzq;
import java.util.Date;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class zzar implements Clock {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Bundle f29960a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f29961b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Date f29962c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Map f29963e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f29964f;
    public final zzq g;

    public zzar(String str, Bundle bundle, String str2, Date date, boolean z, zzq zzqVar) {
        this.f29961b = str;
        this.f29960a = bundle == null ? new Bundle() : bundle;
        this.f29962c = date;
        this.d = str2;
        this.f29964f = z;
        this.g = zzqVar;
    }

    @Override // com.google.android.gms.common.util.Clock
    public final long a() {
        return this.f29962c.getTime();
    }

    @Override // com.google.android.gms.common.util.Clock
    public final long b() {
        return SystemClock.elapsedRealtime();
    }

    public final Map c() {
        if (this.f29963e == null) {
            try {
                this.f29963e = this.g.e0();
            } catch (RemoteException e2) {
                "Error calling measurement proxy:".concat(String.valueOf(e2.getMessage()));
                zzbg.a();
            }
        }
        return this.f29963e;
    }
}
