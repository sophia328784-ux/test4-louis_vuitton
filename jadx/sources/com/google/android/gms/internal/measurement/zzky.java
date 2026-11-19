package com.google.android.gms.internal.measurement;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Process;
import android.os.UserManager;
import com.google.common.util.concurrent.AbstractFuture;
import com.google.common.util.concurrent.AsyncCallable;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.MoreExecutors;
import com.google.common.util.concurrent.SettableFuture;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzky {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static UserManager f30699a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile boolean f30700b = false;

    public static AbstractFuture a(final Context context, final Callable callable, Executor executor) {
        ListenableFuture listenableFutureK;
        AsyncCallable asyncCallable = new AsyncCallable() { // from class: com.google.android.gms.internal.measurement.zzkx
            @Override // com.google.common.util.concurrent.AsyncCallable
            public final /* synthetic */ ListenableFuture call() {
                return Futures.j(callable, MoreExecutors.b());
            }
        };
        if (b(context)) {
            listenableFutureK = Futures.k(asyncCallable, executor);
        } else {
            final SettableFuture settableFuture = new SettableFuture();
            final AtomicBoolean atomicBoolean = new AtomicBoolean();
            final zzkv zzkvVar = new zzkv(atomicBoolean, context, settableFuture, asyncCallable, executor);
            context.registerReceiver(zzkvVar, new IntentFilter("android.intent.action.USER_UNLOCKED"));
            if (b(context) && atomicBoolean.compareAndSet(false, true)) {
                try {
                    context.unregisterReceiver(zzkvVar);
                } catch (IllegalArgumentException unused) {
                }
                settableFuture.setFuture(Futures.k(asyncCallable, executor));
            } else {
                settableFuture.addListener(new Runnable() { // from class: com.google.android.gms.internal.measurement.zzkw
                    @Override // java.lang.Runnable
                    public final void run() {
                        SettableFuture settableFuture2 = settableFuture;
                        AtomicBoolean atomicBoolean2 = atomicBoolean;
                        Context context2 = context;
                        BroadcastReceiver broadcastReceiver = zzkvVar;
                        if (settableFuture2.isCancelled() && atomicBoolean2.compareAndSet(false, true)) {
                            try {
                                context2.unregisterReceiver(broadcastReceiver);
                            } catch (IllegalArgumentException unused2) {
                            }
                        }
                    }
                }, MoreExecutors.b());
            }
            listenableFutureK = settableFuture;
        }
        return (AbstractFuture) listenableFutureK;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0048 A[Catch: all -> 0x000f, TryCatch #1 {all -> 0x000f, blocks: (B:7:0x0009, B:9:0x000d, B:16:0x0017, B:18:0x001b, B:19:0x0025, B:31:0x0048, B:32:0x004a, B:22:0x002b, B:24:0x0031, B:27:0x003d, B:29:0x0044), top: B:38:0x0009, inners: #0 }] */
    public static boolean b(Context context) {
        if (f30700b) {
            return true;
        }
        synchronized (zzky.class) {
            try {
                if (f30700b) {
                    return true;
                }
                int i2 = 1;
                while (true) {
                    boolean z = false;
                    if (i2 <= 2) {
                        if (f30699a == null) {
                            f30699a = (UserManager) context.getSystemService(UserManager.class);
                        }
                        UserManager userManager = f30699a;
                        if (userManager == null) {
                            z = true;
                        } else {
                            try {
                                if (userManager.isUserUnlocked() || !userManager.isUserRunning(Process.myUserHandle())) {
                                    z = true;
                                }
                            } catch (NullPointerException unused) {
                                f30699a = null;
                                i2++;
                            }
                        }
                        if (z) {
                            f30700b = true;
                        }
                        return z;
                    }
                    if (z) {
                        f30699a = null;
                    }
                    if (z) {
                        f30700b = true;
                    }
                    return z;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
