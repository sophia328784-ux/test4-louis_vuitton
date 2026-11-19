package com.google.firebase.analytics;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzdd;
import com.google.android.gms.internal.measurement.zzez;
import com.google.android.gms.measurement.internal.zzlk;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseApp;
import com.google.firebase.installations.FirebaseInstallations;
import com.google.firebase.installations.FirebaseInstallationsApi;
import defpackage.bm;
import java.util.LinkedHashMap;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes2.dex */
public final class FirebaseAnalytics {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile FirebaseAnalytics f34360c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzez f34361a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ExecutorService f34362b;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: loaded from: classes3.dex */
    public static final class ConsentStatus {
        public static final ConsentStatus DENIED;
        public static final ConsentStatus GRANTED;
        private static final /* synthetic */ ConsentStatus[] zza;

        static {
            ConsentStatus consentStatus = new ConsentStatus("GRANTED", 0);
            GRANTED = consentStatus;
            ConsentStatus consentStatus2 = new ConsentStatus("DENIED", 1);
            DENIED = consentStatus2;
            zza = new ConsentStatus[]{consentStatus, consentStatus2};
        }

        public static ConsentStatus valueOf(String str) {
            return (ConsentStatus) Enum.valueOf(ConsentStatus.class, str);
        }

        public static ConsentStatus[] values() {
            return (ConsentStatus[]) zza.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class ConsentType {
        public static final ConsentType AD_PERSONALIZATION;
        public static final ConsentType AD_STORAGE;
        public static final ConsentType AD_USER_DATA;
        public static final ConsentType ANALYTICS_STORAGE;
        private static final /* synthetic */ ConsentType[] zza;

        static {
            ConsentType consentType = new ConsentType("AD_STORAGE", 0);
            AD_STORAGE = consentType;
            ConsentType consentType2 = new ConsentType("ANALYTICS_STORAGE", 1);
            ANALYTICS_STORAGE = consentType2;
            ConsentType consentType3 = new ConsentType("AD_USER_DATA", 2);
            AD_USER_DATA = consentType3;
            ConsentType consentType4 = new ConsentType("AD_PERSONALIZATION", 3);
            AD_PERSONALIZATION = consentType4;
            zza = new ConsentType[]{consentType, consentType2, consentType3, consentType4};
        }

        public static ConsentType valueOf(String str) {
            return (ConsentType) Enum.valueOf(ConsentType.class, str);
        }

        public static ConsentType[] values() {
            return (ConsentType[]) zza.clone();
        }
    }

    public FirebaseAnalytics(zzez zzezVar) {
        Preconditions.h(zzezVar);
        this.f34361a = zzezVar;
    }

    public static FirebaseAnalytics getInstance(Context context) {
        if (f34360c == null) {
            synchronized (FirebaseAnalytics.class) {
                try {
                    if (f34360c == null) {
                        f34360c = new FirebaseAnalytics(zzez.m(context, null));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f34360c;
    }

    public static zzlk getScionFrontendApiImplementation(Context context, Bundle bundle) {
        zzez zzezVarM = zzez.m(context, bundle);
        if (zzezVarM == null) {
            return null;
        }
        return new zzd(zzezVarM);
    }

    public final Task a() {
        try {
            return Tasks.c(new zzb(this), d());
        } catch (RuntimeException e2) {
            this.f34361a.d("Failed to schedule task for getAppInstanceId", null);
            return Tasks.e(e2);
        }
    }

    public final Task b() {
        try {
            return Tasks.c(new zzc(this), d());
        } catch (RuntimeException e2) {
            this.f34361a.d("Failed to schedule task for getSessionId", null);
            return Tasks.e(e2);
        }
    }

    public final void c(LinkedHashMap linkedHashMap) {
        Bundle bundle = new Bundle();
        ConsentStatus consentStatus = (ConsentStatus) linkedHashMap.get(ConsentType.AD_STORAGE);
        if (consentStatus != null) {
            int iOrdinal = consentStatus.ordinal();
            if (iOrdinal == 0) {
                bundle.putString("ad_storage", "granted");
            } else if (iOrdinal == 1) {
                bundle.putString("ad_storage", "denied");
            }
        }
        ConsentStatus consentStatus2 = (ConsentStatus) linkedHashMap.get(ConsentType.ANALYTICS_STORAGE);
        if (consentStatus2 != null) {
            int iOrdinal2 = consentStatus2.ordinal();
            if (iOrdinal2 == 0) {
                bundle.putString("analytics_storage", "granted");
            } else if (iOrdinal2 == 1) {
                bundle.putString("analytics_storage", "denied");
            }
        }
        ConsentStatus consentStatus3 = (ConsentStatus) linkedHashMap.get(ConsentType.AD_USER_DATA);
        if (consentStatus3 != null) {
            int iOrdinal3 = consentStatus3.ordinal();
            if (iOrdinal3 == 0) {
                bundle.putString("ad_user_data", "granted");
            } else if (iOrdinal3 == 1) {
                bundle.putString("ad_user_data", "denied");
            }
        }
        ConsentStatus consentStatus4 = (ConsentStatus) linkedHashMap.get(ConsentType.AD_PERSONALIZATION);
        if (consentStatus4 != null) {
            int iOrdinal4 = consentStatus4.ordinal();
            if (iOrdinal4 == 0) {
                bundle.putString("ad_personalization", "granted");
            } else if (iOrdinal4 == 1) {
                bundle.putString("ad_personalization", "denied");
            }
        }
        this.f34361a.w(bundle);
    }

    public final ExecutorService d() {
        ExecutorService executorService;
        synchronized (FirebaseAnalytics.class) {
            try {
                if (this.f34362b == null) {
                    this.f34362b = new zza(0, 1, 30L, TimeUnit.SECONDS, new ArrayBlockingQueue(100));
                }
                executorService = this.f34362b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return executorService;
    }

    public String getFirebaseInstanceId() {
        try {
            Object obj = FirebaseInstallations.m;
            return (String) Tasks.b(((FirebaseInstallations) FirebaseApp.d().b(FirebaseInstallationsApi.class)).getId(), 30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e2) {
            bm.i(e2);
            return null;
        } catch (ExecutionException e3) {
            bm.i(e3.getCause());
            return null;
        } catch (TimeoutException unused) {
            throw new IllegalThreadStateException("Firebase Installations getId Task has timed out.");
        }
    }

    @Deprecated
    public void setCurrentScreen(Activity activity, String str, String str2) {
        this.f34361a.u(zzdd.W1(activity), str, str2);
    }
}
