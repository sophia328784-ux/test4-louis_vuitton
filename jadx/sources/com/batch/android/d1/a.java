package com.batch.android.d1;

import android.text.TextUtils;
import com.batch.android.PushRegistrationProvider;
import com.batch.android.PushRegistrationProviderAvailabilityException;
import com.batch.android.e.t;
import com.batch.android.v0.j;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseOptions;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a implements PushRegistrationProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected String f23042a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected String f23043b = null;

    public a() {
        c();
    }

    private boolean a() {
        try {
            Object obj = FirebaseApp.f34329k;
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean b() {
        return true;
    }

    public void c() {
        try {
            FirebaseApp firebaseAppD = FirebaseApp.d();
            FirebaseOptions firebaseOptions = firebaseAppD.f34332c;
            firebaseAppD.a();
            String str = firebaseOptions.f34348e;
            if (TextUtils.isEmpty(str)) {
                t.a(j.m, "Could not register for FCM Push: Could not get a Sender ID for this project. Are notifications well configured in the project's console and your google-services.json up to date?");
                return;
            }
            this.f23042a = str;
            firebaseAppD.a();
            this.f23043b = firebaseOptions.f34350h;
            t.c(j.m, "Using FCM Sender ID from builtin configuration: " + str + ", Project ID: " + this.f23043b);
        } catch (Exception | NoClassDefFoundError e2) {
            t.a(j.m, "Could not register for FCM Push: Firebase has thrown an exception", e2);
        }
    }

    @Override // com.batch.android.PushRegistrationProvider
    public void checkLibraryAvailability() throws PushRegistrationProviderAvailabilityException {
        t.c(j.m, "Checking FCM libraries availability");
        if (!a()) {
            throw new PushRegistrationProviderAvailabilityException("Firebase Core is missing. Did you add 'com.google.firebase:firebase-core' to your gradle dependencies?");
        }
        if (!b()) {
            throw new PushRegistrationProviderAvailabilityException("Firebase Messaging is missing. Did you add 'com.google.firebase:firebase-messaging' to your gradle dependencies?");
        }
        if (!j.s()) {
            throw new PushRegistrationProviderAvailabilityException("com.batch.android.BatchPushService is missing from the manifest.");
        }
    }

    @Override // com.batch.android.PushRegistrationProvider
    public void checkServiceAvailability() {
    }

    @Override // com.batch.android.PushRegistrationProvider
    public String getGCPProjectID() {
        return this.f23043b;
    }

    @Override // com.batch.android.PushRegistrationProvider
    public String getSenderID() {
        return this.f23042a;
    }
}
