package com.google.ar.core;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import com.google.ar.core.exceptions.FatalException;
import java.util.ArrayDeque;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
final class y {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Context f33450b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.google.ar.core.dependencies.h f33451c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public BroadcastReceiver f33452e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public InstallActivity f33453f;
    public PackageInstaller g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public PackageInstaller.SessionCallback f33454h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayDeque f33449a = new ArrayDeque();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public volatile int f33455i = 1;
    public final ServiceConnection d = new z(this);

    public static void e(Activity activity, w wVar) {
        boolean z;
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.google.ar.core"));
            l lVar = l.m;
            Iterator<ResolveInfo> it = activity.getPackageManager().queryIntentActivities(intent, 65536).iterator();
            while (it.hasNext()) {
                ActivityInfo activityInfo = it.next().activityInfo;
                if (activityInfo != null && activityInfo.name.equals("com.sec.android.app.samsungapps.MainForChina")) {
                    z = true;
                    lVar.d = !z;
                    activity.startActivity(intent);
                }
            }
            z = false;
            lVar.d = !z;
            activity.startActivity(intent);
        } catch (ActivityNotFoundException e2) {
            wVar.b(new FatalException("Failed to launch installer.", e2));
        }
    }

    public final synchronized void a(Context context) {
        this.f33450b = context;
        Intent intent = new Intent("com.google.android.play.core.install.BIND_INSTALL_SERVICE").setPackage("com.android.vending");
        ServiceConnection serviceConnection = this.d;
        if (context.bindService(intent, serviceConnection, 1)) {
            this.f33455i = 2;
            return;
        }
        this.f33455i = 1;
        this.f33450b = null;
        context.unbindService(serviceConnection);
    }

    public final synchronized void b() {
        try {
            int i2 = this.f33455i;
            int i3 = i2 - 1;
            if (i2 == 0) {
                throw null;
            }
            if (i3 == 1 || i3 == 2) {
                this.f33450b.unbindService(this.d);
                this.f33450b = null;
                this.f33455i = 1;
            }
            BroadcastReceiver broadcastReceiver = this.f33452e;
            if (broadcastReceiver != null) {
                this.f33453f.unregisterReceiver(broadcastReceiver);
            }
            PackageInstaller.SessionCallback sessionCallback = this.f33454h;
            if (sessionCallback != null) {
                this.g.unregisterSessionCallback(sessionCallback);
                this.f33454h = null;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void c(Context context, h hVar) {
        try {
            d(new ab(this, context, hVar));
        } catch (ah unused) {
            hVar.a(ArCoreApk.Availability.UNKNOWN_ERROR);
        }
    }

    public final synchronized void d(Runnable runnable) {
        int i2 = this.f33455i;
        int i3 = i2 - 1;
        if (i2 == 0) {
            throw null;
        }
        if (i3 == 0) {
            throw new ah("InstallService not bound");
        }
        if (i3 == 1) {
            this.f33449a.offer(runnable);
        } else {
            if (i3 != 2) {
                return;
            }
            runnable.run();
        }
    }
}
