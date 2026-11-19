package com.google.firebase.analytics.connector.internal;

import android.os.Bundle;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzf implements AppMeasurementSdk.OnEventListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzg f34373a;

    public zzf(zzg zzgVar) {
        Objects.requireNonNull(zzgVar);
        this.f34373a = zzgVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzjq
    public final void a(String str, String str2, Bundle bundle, long j2) {
        if (str == null || zzc.f34367a.contains(str2)) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putString("name", str2);
        bundle2.putLong("timestampInMillis", j2);
        bundle2.putBundle("params", bundle);
        this.f34373a.f34374a.a(3, bundle2);
    }
}
