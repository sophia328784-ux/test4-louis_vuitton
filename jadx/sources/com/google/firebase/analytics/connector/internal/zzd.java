package com.google.firebase.analytics.connector.internal;

import android.os.Bundle;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.android.gms.measurement.internal.zzjm;
import com.google.android.gms.measurement.internal.zzlt;
import com.google.common.collect.ImmutableSet;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzd implements AppMeasurementSdk.OnEventListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zze f34370a;

    public zzd(zze zzeVar) {
        Objects.requireNonNull(zzeVar);
        this.f34370a = zzeVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzjq
    public final void a(String str, String str2, Bundle bundle, long j2) {
        zze zzeVar = this.f34370a;
        if (zzeVar.f34371a.contains(str2)) {
            Bundle bundle2 = new Bundle();
            ImmutableSet immutableSet = zzc.f34367a;
            String strB = zzlt.b(str2, zzjm.f31859f, zzjm.f31855a);
            if (strB != null) {
                str2 = strB;
            }
            bundle2.putString(DbParams.TABLE_EVENTS, str2);
            zzeVar.f34372b.a(2, bundle2);
        }
    }
}
