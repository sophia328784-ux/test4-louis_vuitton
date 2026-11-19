package com.batch.android.d1;

import android.content.Context;
import com.batch.android.PushRegistrationProvider;
import com.batch.android.PushRegistrationProviderAvailabilityException;
import com.batch.android.e.g;
import com.batch.android.e.p;
import com.batch.android.e.t;
import com.batch.android.push.PushRegistrationDiscoveryService;
import com.batch.android.push.PushRegistrationRegistrar;
import com.batch.android.v0.j;
import com.google.firebase.messaging.FirebaseMessaging;

/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f23044b = "PushRegistrationProviderFactory";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f23045c = "com.batch.android.push.PushRegistrationRegistrar";
    private static final String d = "com.batch.android.push:";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f23046a;

    public c(Context context) {
        this.f23046a = context.getApplicationContext();
    }

    private boolean c() {
        if (!a.b()) {
            return false;
        }
        try {
            FirebaseMessaging.class.getMethod("e", null);
            return true;
        } catch (NoSuchMethodException unused) {
            return false;
        }
    }

    public PushRegistrationProvider a() {
        for (String str : g.a(this.f23046a, PushRegistrationDiscoveryService.class, f23045c, d)) {
            try {
                Class<?> cls = Class.forName(str);
                if (PushRegistrationRegistrar.class.isAssignableFrom(cls)) {
                    PushRegistrationRegistrar pushRegistrationRegistrar = (PushRegistrationRegistrar) cls.getDeclaredConstructor(null).newInstance(null);
                    PushRegistrationProvider pushRegistrationProvider = pushRegistrationRegistrar.getPushRegistrationProvider(this.f23046a);
                    if (pushRegistrationProvider != null) {
                        try {
                            String shortname = pushRegistrationProvider.getShortname();
                            if (a(shortname)) {
                                pushRegistrationProvider.checkServiceAvailability();
                                return pushRegistrationProvider;
                            }
                            t.c(f23044b, "Found '" + shortname + "' (" + pushRegistrationProvider.getClass().getSimpleName() + ") which is not allowed, skipping...");
                        } catch (PushRegistrationProviderAvailabilityException unused) {
                            t.c(f23044b, "Tried to use " + pushRegistrationProvider.getClass().getSimpleName() + " but not available, skipping...");
                        }
                    } else {
                        t.c(f23044b, "Registrar " + pushRegistrationRegistrar.getClass().getSimpleName() + " did not return a PushRegistrationProvider, skipping...");
                    }
                } else {
                    t.a(f23044b, "Class " + str + " is not an instance of " + f23045c);
                }
            } catch (Throwable th) {
                t.a("Could not instantiate " + str, th);
            }
        }
        return null;
    }

    public PushRegistrationProvider b() {
        PushRegistrationProvider pushRegistrationProviderA;
        t.c(f23044b, "Determining which registration provider to use...");
        Integer numB = p.b(this.f23046a);
        if ((numB == null || numB.intValue() != 0) && (pushRegistrationProviderA = a()) != null) {
            t.b(j.m, "Registration ID/Push Token: Using ".concat(pushRegistrationProviderA.getClass().getSimpleName()));
            return pushRegistrationProviderA;
        }
        if (c()) {
            t.c(f23044b, "Using FCM-Token provider");
            return new b();
        }
        t.e(f23044b, "Could not register for FCM Push: Ensure you are using firebase-messaging 22.0.0 or higher in your gradle dependencies.");
        return null;
    }

    public boolean a(String str) {
        return "HMS".equals(str);
    }
}
