package com.google.android.play.integrity.internal;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public final class ae {
    public static final HashMap o = new HashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f33315a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final s f33316b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f33317c;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Intent f33320h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final z f33321i;
    public ServiceConnection m;
    public IInterface n;
    public final ArrayList d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HashSet f33318e = new HashSet();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Object f33319f = new Object();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final u f33323k = new IBinder.DeathRecipient() { // from class: com.google.android.play.integrity.internal.u
        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            ae aeVar = this.f33335a;
            aeVar.f33316b.a("reportBinderDeath", new Object[0]);
            y yVar = (y) aeVar.f33322j.get();
            s sVar = aeVar.f33316b;
            if (yVar != null) {
                sVar.a("calling onBinderDied", new Object[0]);
                yVar.a();
            } else {
                sVar.a("%s : Binder has died.", aeVar.f33317c);
                Iterator it = aeVar.d.iterator();
                while (it.hasNext()) {
                    ((t) it.next()).a(new RemoteException(String.valueOf(aeVar.f33317c).concat(" : Binder has died.")));
                }
                aeVar.d.clear();
            }
            synchronized (aeVar.f33319f) {
                aeVar.e();
            }
        }
    };
    public final AtomicInteger l = new AtomicInteger(0);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final WeakReference f33322j = new WeakReference(null);

    /* JADX WARN: Type inference failed for: r7v4, types: [com.google.android.play.integrity.internal.u] */
    public ae(Context context, s sVar, String str, Intent intent, z zVar, y yVar) {
        this.f33315a = context;
        this.f33316b = sVar;
        this.f33317c = str;
        this.f33320h = intent;
        this.f33321i = zVar;
    }

    public static /* bridge */ /* synthetic */ void b(ae aeVar, t tVar) {
        IInterface iInterface = aeVar.n;
        s sVar = aeVar.f33316b;
        ArrayList arrayList = aeVar.d;
        if (iInterface != null || aeVar.g) {
            if (!aeVar.g) {
                tVar.run();
                return;
            } else {
                sVar.a("Waiting to bind to the service.", new Object[0]);
                arrayList.add(tVar);
                return;
            }
        }
        sVar.a("Initiate binding to the service.", new Object[0]);
        arrayList.add(tVar);
        ad adVar = new ad(aeVar);
        aeVar.m = adVar;
        aeVar.g = true;
        if (aeVar.f33315a.bindService(aeVar.f33320h, adVar, 1)) {
            return;
        }
        sVar.a("Failed to bind to the service.", new Object[0]);
        aeVar.g = false;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((t) it.next()).a(new af());
        }
        arrayList.clear();
    }

    public final Handler a() {
        Handler handler;
        HashMap map = o;
        synchronized (map) {
            try {
                if (!map.containsKey(this.f33317c)) {
                    HandlerThread handlerThread = new HandlerThread(this.f33317c, 10);
                    handlerThread.start();
                    map.put(this.f33317c, new Handler(handlerThread.getLooper()));
                }
                handler = (Handler) map.get(this.f33317c);
            } catch (Throwable th) {
                throw th;
            }
        }
        return handler;
    }

    public final void c(t tVar, TaskCompletionSource taskCompletionSource) {
        a().post(new w(this, tVar.c(), taskCompletionSource, tVar));
    }

    public final void d(TaskCompletionSource taskCompletionSource) {
        synchronized (this.f33319f) {
            this.f33318e.remove(taskCompletionSource);
        }
        a().post(new x(this));
    }

    public final void e() {
        HashSet hashSet = this.f33318e;
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            ((TaskCompletionSource) it.next()).c(new RemoteException(String.valueOf(this.f33317c).concat(" : Binder has died.")));
        }
        hashSet.clear();
    }
}
