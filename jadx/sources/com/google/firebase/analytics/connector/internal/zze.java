package com.google.firebase.analytics.connector.internal;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.firebase.analytics.connector.AnalyticsConnector;
import java.util.HashSet;

/* JADX INFO: loaded from: classes2.dex */
public final class zze implements zza {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashSet f34371a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AnalyticsConnector.AnalyticsConnectorListener f34372b;

    public zze(AppMeasurementSdk appMeasurementSdk, AnalyticsConnector.AnalyticsConnectorListener analyticsConnectorListener) {
        this.f34372b = analyticsConnectorListener;
        appMeasurementSdk.f31528a.o(new zzd(this));
        this.f34371a = new HashSet();
    }
}
