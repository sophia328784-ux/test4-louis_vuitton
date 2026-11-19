package com.perfectcorp.perfectlib.internal;

import android.net.ConnectivityManager;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.utility.Log;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public abstract class c {

    public static final class b extends c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ConnectivityManager.NetworkCallback f40372a;

        public b() {
            Log.g(3, "NetworkCallbackTrigger", "NetworkCallbackTrigger");
            this.f40372a = new e();
        }

        @Override // com.perfectcorp.perfectlib.internal.c
        public final void b() {
            ConnectivityManager connectivityManager = (ConnectivityManager) PfCommons.b().getSystemService("connectivity");
            Objects.requireNonNull(connectivityManager);
            connectivityManager.registerDefaultNetworkCallback(this.f40372a);
        }

        @Override // com.perfectcorp.perfectlib.internal.c
        public final void c() {
            ConnectivityManager connectivityManager = (ConnectivityManager) PfCommons.b().getSystemService("connectivity");
            Objects.requireNonNull(connectivityManager);
            connectivityManager.unregisterNetworkCallback(this.f40372a);
        }
    }

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.internal.c$c, reason: collision with other inner class name */
    public static final class C0128c extends c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final c f40373a;

        public C0128c(c cVar) {
            this.f40373a = cVar;
        }

        @Override // com.perfectcorp.perfectlib.internal.c
        public final void b() {
            try {
                this.f40373a.b();
                Log.g(3, "SafeTrigger", "register success");
            } catch (Throwable th) {
                Log.e("SafeTrigger", "register failed", th);
            }
        }

        @Override // com.perfectcorp.perfectlib.internal.c
        public final void c() {
            try {
                this.f40373a.c();
                Log.g(3, "SafeTrigger", "unregister success");
            } catch (Throwable th) {
                Log.e("SafeTrigger", "unregister failed", th);
            }
        }
    }

    public static c a() {
        return new C0128c(new b());
    }

    public abstract void b();

    public abstract void c();
}
