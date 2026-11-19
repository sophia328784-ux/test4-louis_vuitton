package com.google.android.gms.common.stats;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zzr;
import com.google.android.gms.common.wrappers.Wrappers;
import java.util.NoSuchElementException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes2.dex */
public class ConnectionTracker {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Object f29325b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile ConnectionTracker f29326c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConcurrentHashMap f29327a = new ConcurrentHashMap();

    public static ConnectionTracker b() {
        if (f29326c == null) {
            synchronized (f29325b) {
                try {
                    if (f29326c == null) {
                        f29326c = new ConnectionTracker();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        ConnectionTracker connectionTracker = f29326c;
        Preconditions.h(connectionTracker);
        return connectionTracker;
    }

    public final boolean a(Context context, Intent intent, ServiceConnection serviceConnection, int i2) {
        return d(context, context.getClass().getName(), intent, serviceConnection, i2, null);
    }

    public final void c(Context context, ServiceConnection serviceConnection) {
        if (!(serviceConnection instanceof zzr)) {
            ConcurrentHashMap concurrentHashMap = this.f29327a;
            if (concurrentHashMap.containsKey(serviceConnection)) {
                try {
                    try {
                        context.unbindService((ServiceConnection) concurrentHashMap.get(serviceConnection));
                    } catch (IllegalArgumentException | IllegalStateException | NoSuchElementException unused) {
                    }
                    return;
                } finally {
                    concurrentHashMap.remove(serviceConnection);
                }
            }
        }
        try {
            context.unbindService(serviceConnection);
        } catch (IllegalArgumentException | IllegalStateException | NoSuchElementException unused2) {
        }
    }

    public final boolean d(Context context, String str, Intent intent, ServiceConnection serviceConnection, int i2, Executor executor) {
        ComponentName component = intent.getComponent();
        if (component != null) {
            String packageName = component.getPackageName();
            "com.google.android.gms".equals(packageName);
            try {
                if ((Wrappers.a(context).a(0, packageName).flags & PKIFailureInfo.badSenderNonce) != 0) {
                    return false;
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        if (serviceConnection instanceof zzr) {
            if (executor == null) {
                executor = null;
            }
            return executor != null ? context.bindService(intent, i2, executor, serviceConnection) : context.bindService(intent, serviceConnection, i2);
        }
        ConcurrentHashMap concurrentHashMap = this.f29327a;
        ServiceConnection serviceConnection2 = (ServiceConnection) concurrentHashMap.putIfAbsent(serviceConnection, serviceConnection);
        if (serviceConnection2 != null && serviceConnection != serviceConnection2) {
            String.format("Duplicate binding with the same ServiceConnection: %s, %s, %s.", serviceConnection, str, intent.getAction());
        }
        if (executor == null) {
            executor = null;
        }
        try {
            boolean zBindService = executor != null ? context.bindService(intent, i2, executor, serviceConnection) : context.bindService(intent, serviceConnection, i2);
            if (zBindService) {
                return zBindService;
            }
            concurrentHashMap.remove(serviceConnection, serviceConnection);
            return false;
        } catch (Throwable th) {
            concurrentHashMap.remove(serviceConnection, serviceConnection);
            throw th;
        }
    }
}
