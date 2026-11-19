package com.google.firebase.messaging;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import defpackage.ln0;
import java.util.ArrayDeque;
import java.util.Objects;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
class WithinAppServiceConnection implements ServiceConnection {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f35309b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Intent f35310c;
    public final ScheduledThreadPoolExecutor d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayDeque f35311e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public WithinAppServiceBinder f35312f;
    public boolean g;

    public static class BindRequest {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Intent f35313a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TaskCompletionSource f35314b = new TaskCompletionSource();

        public BindRequest(Intent intent) {
            this.f35313a = intent;
        }
    }

    public WithinAppServiceConnection(Context context) {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, new NamedThreadFactory("Firebase-FirebaseInstanceIdServiceConnection"));
        scheduledThreadPoolExecutor.setKeepAliveTime(40L, TimeUnit.SECONDS);
        scheduledThreadPoolExecutor.allowCoreThreadTimeOut(true);
        this.f35311e = new ArrayDeque();
        this.g = false;
        Context applicationContext = context.getApplicationContext();
        this.f35309b = applicationContext;
        this.f35310c = new Intent("com.google.firebase.MESSAGING_EVENT").setPackage(applicationContext.getPackageName());
        this.d = scheduledThreadPoolExecutor;
    }

    public final synchronized void a() {
        try {
            Log.isLoggable("FirebaseMessaging", 3);
            while (!this.f35311e.isEmpty()) {
                Log.isLoggable("FirebaseMessaging", 3);
                WithinAppServiceBinder withinAppServiceBinder = this.f35312f;
                if (withinAppServiceBinder == null || !withinAppServiceBinder.isBinderAlive()) {
                    Log.isLoggable("FirebaseMessaging", 3);
                    if (!this.g) {
                        this.g = true;
                        try {
                            if (!ConnectionTracker.b().a(this.f35309b, this.f35310c, this, 65)) {
                                this.g = false;
                                ArrayDeque arrayDeque = this.f35311e;
                                while (!arrayDeque.isEmpty()) {
                                    ((BindRequest) arrayDeque.poll()).f35314b.d(null);
                                }
                            }
                        } catch (SecurityException unused) {
                        }
                    }
                    return;
                }
                Log.isLoggable("FirebaseMessaging", 3);
                this.f35312f.a((BindRequest) this.f35311e.poll());
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized Task b(Intent intent) {
        BindRequest bindRequest;
        Log.isLoggable("FirebaseMessaging", 3);
        bindRequest = new BindRequest(intent);
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = this.d;
        bindRequest.f35314b.f32085a.b(scheduledThreadPoolExecutor, new ln0(scheduledThreadPoolExecutor.schedule(new j(bindRequest, 1), 20L, TimeUnit.SECONDS), 27));
        this.f35311e.add(bindRequest);
        a();
        return bindRequest.f35314b.f32085a;
    }

    @Override // android.content.ServiceConnection
    public final synchronized void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        try {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Objects.toString(componentName);
            }
            this.g = false;
            if (iBinder instanceof WithinAppServiceBinder) {
                this.f35312f = (WithinAppServiceBinder) iBinder;
                a();
            } else {
                Objects.toString(iBinder);
                ArrayDeque arrayDeque = this.f35311e;
                while (!arrayDeque.isEmpty()) {
                    ((BindRequest) arrayDeque.poll()).f35314b.d(null);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Objects.toString(componentName);
        }
        a();
    }
}
