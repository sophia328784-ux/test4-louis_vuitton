package com.google.firebase.messaging;

import android.content.Context;
import android.util.Log;
import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes2.dex */
public class ServiceStarter {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static ServiceStarter f35276e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f35277a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Boolean f35278b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Boolean f35279c = null;
    public final ArrayDeque d = new ArrayDeque();

    public static synchronized ServiceStarter a() {
        try {
            if (f35276e == null) {
                f35276e = new ServiceStarter();
            }
        } catch (Throwable th) {
            throw th;
        }
        return f35276e;
    }

    public final boolean b(Context context) {
        if (this.f35279c == null) {
            this.f35279c = Boolean.valueOf(context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0);
        }
        if (!this.f35278b.booleanValue()) {
            Log.isLoggable("FirebaseMessaging", 3);
        }
        return this.f35279c.booleanValue();
    }

    public final boolean c(Context context) {
        if (this.f35278b == null) {
            this.f35278b = Boolean.valueOf(context.checkCallingOrSelfPermission("android.permission.WAKE_LOCK") == 0);
        }
        if (!this.f35278b.booleanValue()) {
            Log.isLoggable("FirebaseMessaging", 3);
        }
        return this.f35278b.booleanValue();
    }
}
