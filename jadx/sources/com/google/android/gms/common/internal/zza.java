package com.google.android.gms.common.internal;

import android.app.PendingIntent;
import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: loaded from: classes2.dex */
abstract class zza extends zzc {
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Bundle f29244e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ BaseGmsClient f29245f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zza(BaseGmsClient baseGmsClient, int i2, Bundle bundle) {
        super(baseGmsClient, Boolean.TRUE);
        this.f29245f = baseGmsClient;
        this.d = i2;
        this.f29244e = bundle;
    }

    @Override // com.google.android.gms.common.internal.zzc
    public final /* synthetic */ void a(Object obj) {
        BaseGmsClient baseGmsClient = this.f29245f;
        int i2 = this.d;
        if (i2 != 0) {
            baseGmsClient.C(1, null);
            Bundle bundle = this.f29244e;
            c(new ConnectionResult(i2, bundle != null ? (PendingIntent) bundle.getParcelable("pendingIntent") : null));
        } else {
            if (b()) {
                return;
            }
            baseGmsClient.C(1, null);
            c(new ConnectionResult(8, null));
        }
    }

    public abstract boolean b();

    public abstract void c(ConnectionResult connectionResult);
}
