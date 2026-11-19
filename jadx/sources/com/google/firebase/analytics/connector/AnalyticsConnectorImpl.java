package com.google.firebase.analytics.connector;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzez;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.common.collect.ImmutableList;
import com.google.firebase.FirebaseApp;
import com.google.firebase.analytics.connector.internal.zzc;
import com.google.firebase.analytics.connector.internal.zze;
import com.google.firebase.analytics.connector.internal.zzg;
import com.google.firebase.events.Subscriber;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class AnalyticsConnectorImpl implements AnalyticsConnector {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile AnalyticsConnectorImpl f34363c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AppMeasurementSdk f34364a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConcurrentHashMap f34365b;

    /* JADX INFO: renamed from: com.google.firebase.analytics.connector.AnalyticsConnectorImpl$1, reason: invalid class name */
    class AnonymousClass1 implements AnalyticsConnector.AnalyticsConnectorHandle {
    }

    public AnalyticsConnectorImpl(AppMeasurementSdk appMeasurementSdk) {
        Preconditions.h(appMeasurementSdk);
        this.f34364a = appMeasurementSdk;
        this.f34365b = new ConcurrentHashMap();
    }

    public static AnalyticsConnector d(FirebaseApp firebaseApp, Context context, Subscriber subscriber) {
        Preconditions.h(firebaseApp);
        Preconditions.h(context);
        Preconditions.h(subscriber);
        Preconditions.h(context.getApplicationContext());
        if (f34363c == null) {
            synchronized (AnalyticsConnectorImpl.class) {
                try {
                    if (f34363c == null) {
                        Bundle bundle = new Bundle(1);
                        firebaseApp.a();
                        if ("[DEFAULT]".equals(firebaseApp.f34331b)) {
                            subscriber.c(zzb.f34376b, zza.f34375a);
                            bundle.putBoolean("dataCollectionDefaultEnabled", firebaseApp.i());
                        }
                        f34363c = new AnalyticsConnectorImpl(zzez.m(context, bundle).f30617b);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f34363c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.firebase.analytics.connector.AnalyticsConnector
    public final void a(String str, String str2, Bundle bundle) {
        if (zzc.f34369c.contains(str) || zzc.f34368b.contains(str2)) {
            return;
        }
        ImmutableList immutableList = zzc.d;
        int size = immutableList.size();
        int i2 = 0;
        int i3 = 0;
        while (i3 < size) {
            boolean zContainsKey = bundle.containsKey((String) immutableList.get(i3));
            i3++;
            if (zContainsKey) {
                return;
            }
        }
        if ("_cmp".equals(str2)) {
            if (zzc.f34369c.contains(str)) {
                return;
            }
            ImmutableList immutableList2 = zzc.d;
            int size2 = immutableList2.size();
            while (i2 < size2) {
                boolean zContainsKey2 = bundle.containsKey((String) immutableList2.get(i2));
                i2++;
                if (zContainsKey2) {
                    return;
                }
            }
            int iHashCode = str.hashCode();
            if (iHashCode != 101200) {
                if (iHashCode != 101230) {
                    if (iHashCode != 3142703 || !str.equals("fiam")) {
                        return;
                    } else {
                        bundle.putString("_cis", "fiam_integration");
                    }
                } else if (!str.equals("fdl")) {
                    return;
                } else {
                    bundle.putString("_cis", "fdl_integration");
                }
            } else if (!str.equals("fcm")) {
                return;
            } else {
                bundle.putString("_cis", "fcm_integration");
            }
        }
        if ("clx".equals(str) && "_ae".equals(str2)) {
            bundle.putLong("_r", 1L);
        }
        this.f34364a.logEvent(str, str2, bundle);
    }

    @Override // com.google.firebase.analytics.connector.AnalyticsConnector
    public final void b(String str) {
        if (zzc.f34369c.contains("fcm")) {
            return;
        }
        this.f34364a.f31528a.p("fcm", "_ln", str, true);
    }

    @Override // com.google.firebase.analytics.connector.AnalyticsConnector
    public final AnalyticsConnector.AnalyticsConnectorHandle c(String str, AnalyticsConnector.AnalyticsConnectorListener analyticsConnectorListener) {
        com.google.firebase.analytics.connector.internal.zza zzgVar;
        if (!zzc.f34369c.contains(str)) {
            boolean zIsEmpty = str.isEmpty();
            ConcurrentHashMap concurrentHashMap = this.f34365b;
            if (zIsEmpty || !concurrentHashMap.containsKey(str) || concurrentHashMap.get(str) == null) {
                boolean zEquals = "fiam".equals(str);
                AppMeasurementSdk appMeasurementSdk = this.f34364a;
                if (zEquals) {
                    zzgVar = new zze(appMeasurementSdk, analyticsConnectorListener);
                } else {
                    zzgVar = "clx".equals(str) ? new zzg(appMeasurementSdk, analyticsConnectorListener) : null;
                }
                if (zzgVar != null) {
                    concurrentHashMap.put(str, zzgVar);
                    return new AnonymousClass1();
                }
            }
        }
        return null;
    }
}
