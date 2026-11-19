package com.google.firebase.crashlytics;

import android.content.SharedPreferences;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.FirebaseApp;
import com.google.firebase.crashlytics.internal.common.CrashlyticsCore;
import com.google.firebase.crashlytics.internal.common.DataCollectionArbiter;
import defpackage.r81;

/* JADX INFO: loaded from: classes2.dex */
public class FirebaseCrashlytics {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CrashlyticsCore f34474a;

    public FirebaseCrashlytics(CrashlyticsCore crashlyticsCore) {
        this.f34474a = crashlyticsCore;
    }

    public static FirebaseCrashlytics a() {
        FirebaseCrashlytics firebaseCrashlytics = (FirebaseCrashlytics) FirebaseApp.d().b(FirebaseCrashlytics.class);
        if (firebaseCrashlytics != null) {
            return firebaseCrashlytics;
        }
        r81.d("FirebaseCrashlytics component is not present.");
        return null;
    }

    public final void b(boolean z) {
        CrashlyticsCore crashlyticsCore = this.f34474a;
        Boolean boolValueOf = Boolean.valueOf(z);
        DataCollectionArbiter dataCollectionArbiter = crashlyticsCore.f34534b;
        synchronized (dataCollectionArbiter) {
            dataCollectionArbiter.f34557f = boolValueOf;
            SharedPreferences.Editor editorEdit = dataCollectionArbiter.f34553a.edit();
            editorEdit.putBoolean("firebase_crashlytics_collection_enabled", z);
            editorEdit.apply();
            synchronized (dataCollectionArbiter.f34555c) {
                try {
                    boolean zA = dataCollectionArbiter.a();
                    boolean z2 = dataCollectionArbiter.f34556e;
                    if (zA) {
                        if (!z2) {
                            dataCollectionArbiter.d.d(null);
                            dataCollectionArbiter.f34556e = true;
                        }
                    } else if (z2) {
                        dataCollectionArbiter.d = new TaskCompletionSource();
                        dataCollectionArbiter.f34556e = false;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
