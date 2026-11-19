package com.google.firebase.messaging;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.util.Base64;
import android.util.Log;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.sightcall.universal.media.offline.FileUtils;
import defpackage.l8;
import defpackage.mt;
import defpackage.x7;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes2.dex */
public class FcmBroadcastProcessor {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Object f35238c = new Object();
    public static WithinAppServiceConnection d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f35239a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Executor f35240b;

    public FcmBroadcastProcessor(Context context) {
        this.f35239a = context;
        this.f35240b = new l8(1);
    }

    public static Task a(Context context, Intent intent, boolean z) {
        WithinAppServiceConnection withinAppServiceConnection;
        Log.isLoggable("FirebaseMessaging", 3);
        synchronized (f35238c) {
            try {
                if (d == null) {
                    d = new WithinAppServiceConnection(context);
                }
                withinAppServiceConnection = d;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (!z) {
            return withinAppServiceConnection.b(intent).g(new l8(1), new mt(21));
        }
        if (ServiceStarter.a().c(context)) {
            synchronized (WakeLockHolder.f35305a) {
                try {
                    WakeLockHolder.a(context);
                    boolean booleanExtra = intent.getBooleanExtra("com.google.firebase.iid.WakeLockHolder.wakefulintent", false);
                    intent.putExtra("com.google.firebase.iid.WakeLockHolder.wakefulintent", true);
                    if (!booleanExtra) {
                        WakeLockHolder.f35306b.a();
                    }
                    withinAppServiceConnection.b(intent).addOnCompleteListener(new g(intent, 1));
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        } else {
            withinAppServiceConnection.b(intent);
        }
        return Tasks.f(-1);
    }

    public final Task b(final Intent intent) {
        String stringExtra = intent.getStringExtra("gcm.rawData64");
        if (stringExtra != null) {
            intent.putExtra("rawData", Base64.decode(stringExtra, 0));
            intent.removeExtra("gcm.rawData64");
        }
        final Context context = this.f35239a;
        int i2 = 1;
        boolean z = context.getApplicationInfo().targetSdkVersion >= 26;
        boolean z2 = (intent.getFlags() & 268435456) != 0;
        if (z && !z2) {
            return a(context, intent, z2);
        }
        Callable callable = new Callable() { // from class: com.google.firebase.messaging.a
            @Override // java.util.concurrent.Callable
            public final Object call() {
                String str;
                ServiceInfo serviceInfo;
                String str2;
                int i3;
                Context context2 = context;
                Intent intent2 = intent;
                ServiceStarter serviceStarterA = ServiceStarter.a();
                serviceStarterA.getClass();
                Log.isLoggable("FirebaseMessaging", 3);
                serviceStarterA.d.offer(intent2);
                Intent intent3 = new Intent("com.google.firebase.MESSAGING_EVENT");
                intent3.setPackage(context2.getPackageName());
                synchronized (serviceStarterA) {
                    try {
                        str = serviceStarterA.f35277a;
                        if (str == null) {
                            ResolveInfo resolveInfoResolveService = context2.getPackageManager().resolveService(intent3, 0);
                            if (resolveInfoResolveService == null || (serviceInfo = resolveInfoResolveService.serviceInfo) == null || !context2.getPackageName().equals(serviceInfo.packageName) || (str2 = serviceInfo.name) == null) {
                                str = null;
                            } else {
                                if (str2.startsWith(FileUtils.HIDDEN_PREFIX)) {
                                    serviceStarterA.f35277a = context2.getPackageName() + serviceInfo.name;
                                } else {
                                    serviceStarterA.f35277a = serviceInfo.name;
                                }
                                str = serviceStarterA.f35277a;
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (str != null) {
                    Log.isLoggable("FirebaseMessaging", 3);
                    intent3.setClassName(context2.getPackageName(), str);
                }
                try {
                    i3 = (serviceStarterA.c(context2) ? WakeLockHolder.c(context2, intent3) : context2.startService(intent3)) == null ? 404 : -1;
                } catch (IllegalStateException e2) {
                    e2.toString();
                    i3 = 402;
                } catch (SecurityException unused) {
                    i3 = 401;
                }
                return Integer.valueOf(i3);
            }
        };
        Executor executor = this.f35240b;
        return Tasks.c(callable, executor).h(executor, new x7(context, intent, z2, i2));
    }

    public FcmBroadcastProcessor(Context context, ExecutorService executorService) {
        this.f35239a = context;
        this.f35240b = executorService;
    }
}
