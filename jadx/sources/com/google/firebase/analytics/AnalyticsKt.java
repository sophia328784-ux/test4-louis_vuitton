package com.google.firebase.analytics;

import com.google.firebase.FirebaseApp;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"java.com.google.android.gmscore.integ.client.measurement_api_measurement_api"}, k = 2, mv = {2, 2, 0}, xi = 48)
public abstract class AnalyticsKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile FirebaseAnalytics f34355a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Object f34356b = new Object();

    public static final FirebaseAnalytics a() {
        if (f34355a == null) {
            synchronized (f34356b) {
                if (f34355a == null) {
                    FirebaseApp firebaseAppD = FirebaseApp.d();
                    firebaseAppD.a();
                    f34355a = FirebaseAnalytics.getInstance(firebaseAppD.f34330a);
                }
            }
        }
        FirebaseAnalytics firebaseAnalytics = f34355a;
        firebaseAnalytics.getClass();
        return firebaseAnalytics;
    }
}
