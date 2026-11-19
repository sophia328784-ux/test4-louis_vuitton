package com.perfectcorp.uma;

import android.content.Context;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.security.ProviderInstaller;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
final class c extends l.a implements Runnable {
    private Executor d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private RunnableFuture<?> f43201e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private /* synthetic */ Context f43202f;
    private /* synthetic */ String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private /* synthetic */ String f43203h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(p pVar, Context context, String str, String str2) {
        super(pVar);
        this.f43202f = context;
        this.g = str;
        this.f43203h = str2;
        this.d = Executors.newSingleThreadExecutor();
        FutureTask futureTask = new FutureTask(this, null);
        this.f43201e = futureTask;
        this.d.execute(futureTask);
    }

    @Override // com.perfectcorp.uma.l
    public final p a() {
        try {
            this.f43201e.get(3L, TimeUnit.SECONDS);
        } catch (Throwable th) {
            b.d.b("UMA", "AsyncInitTask", th);
        }
        return b.f43197c != p.x0 ? this.f43274a : p.w0;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            String str = this.g;
            String str2 = this.f43203h;
            b.d.a("UMA", "initConnectionQueue appKey:" + str2 + ", serverURL:" + str);
            this.f43274a.a(str, str2);
            GoogleApiAvailabilityLight googleApiAvailabilityLight = ProviderInstaller.f32053a;
            ProviderInstaller.class.getMethod("installIfNeeded", Context.class).invoke(null, b.f43196b);
        } catch (Throwable unused) {
        }
        synchronized (b.f43195a) {
            try {
                if (b.f43197c != p.x0) {
                    b.f43197c = this.f43274a;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
