package com.google.android.gms.common.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: loaded from: classes2.dex */
public final class zzg extends zza {
    public final /* synthetic */ BaseGmsClient g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzg(BaseGmsClient baseGmsClient, int i2, Bundle bundle) {
        super(baseGmsClient, i2, bundle);
        java.util.Objects.requireNonNull(baseGmsClient);
        this.g = baseGmsClient;
    }

    @Override // com.google.android.gms.common.internal.zza
    public final boolean b() {
        this.g.f29159k.a(ConnectionResult.g);
        return true;
    }

    @Override // com.google.android.gms.common.internal.zza
    public final void c(ConnectionResult connectionResult) {
        BaseGmsClient baseGmsClient = this.g;
        baseGmsClient.getClass();
        baseGmsClient.f29159k.a(connectionResult);
        System.currentTimeMillis();
    }
}
