package com.google.android.gms.measurement.api;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzez;
import com.google.android.gms.measurement.internal.zzjp;
import com.google.android.gms.measurement.internal.zzjq;

/* JADX INFO: loaded from: classes2.dex */
public class AppMeasurementSdk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzez f31528a;

    public interface EventInterceptor extends zzjp {
    }

    public interface OnEventListener extends zzjq {
    }

    public AppMeasurementSdk(zzez zzezVar) {
        this.f31528a = zzezVar;
    }

    public static AppMeasurementSdk getInstance(Context context) {
        return zzez.m(context, null).f30617b;
    }

    public void beginAdUnitExposure(String str) {
        this.f31528a.x(str);
    }

    public void endAdUnitExposure(String str) {
        this.f31528a.y(str);
    }

    public long generateEventId() {
        return this.f31528a.C();
    }

    public String getAppInstanceId() {
        return this.f31528a.B();
    }

    public String getGmpAppId() {
        return this.f31528a.A();
    }

    public void logEvent(String str, String str2, Bundle bundle) {
        this.f31528a.l(str, str2, bundle, true, true, null, null);
    }
}
