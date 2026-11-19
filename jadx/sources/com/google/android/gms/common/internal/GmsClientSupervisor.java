package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.HandlerThread;
import com.google.android.gms.common.ConnectionResult;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
public abstract class GmsClientSupervisor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Object f29186a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static zzq f29187b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static HandlerThread f29188c;

    public static GmsClientSupervisor a(Context context) {
        synchronized (f29186a) {
            try {
                if (f29187b == null) {
                    f29187b = new zzq(context.getApplicationContext(), context.getMainLooper());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f29187b;
    }

    public abstract ConnectionResult b(zzn zznVar, zze zzeVar, String str, Executor executor);

    public abstract void c(zzn zznVar, ServiceConnection serviceConnection);
}
