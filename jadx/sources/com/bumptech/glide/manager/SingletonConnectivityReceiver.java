package com.bumptech.glide.manager;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.util.Log;
import com.bumptech.glide.util.GlideSuppliers;
import com.bumptech.glide.util.Util;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
final class SingletonConnectivityReceiver {
    public static volatile SingletonConnectivityReceiver d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FrameworkConnectivityMonitorPostApi24 f24900a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashSet f24901b = new HashSet();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f24902c;

    /* JADX INFO: renamed from: com.bumptech.glide.manager.SingletonConnectivityReceiver$2, reason: invalid class name */
    class AnonymousClass2 implements ConnectivityMonitor.ConnectivityListener {
        public AnonymousClass2() {
        }

        @Override // com.bumptech.glide.manager.ConnectivityMonitor.ConnectivityListener
        public final void a(boolean z) {
            ArrayList arrayList;
            Util.a();
            synchronized (SingletonConnectivityReceiver.this) {
                arrayList = new ArrayList(SingletonConnectivityReceiver.this.f24901b);
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((ConnectivityMonitor.ConnectivityListener) it.next()).a(z);
            }
        }
    }

    public interface FrameworkConnectivityMonitor {
    }

    public static final class FrameworkConnectivityMonitorPostApi24 implements FrameworkConnectivityMonitor {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f24905a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ConnectivityMonitor.ConnectivityListener f24906b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final GlideSuppliers.GlideSupplier f24907c;
        public final ConnectivityManager.NetworkCallback d = new ConnectivityManager.NetworkCallback() { // from class: com.bumptech.glide.manager.SingletonConnectivityReceiver.FrameworkConnectivityMonitorPostApi24.1

            /* JADX INFO: renamed from: com.bumptech.glide.manager.SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24$1$1, reason: invalid class name and collision with other inner class name */
            class RunnableC00781 implements Runnable {
                final /* synthetic */ boolean val$newState;

                public RunnableC00781(boolean z) {
                    this.val$newState = z;
                }

                @Override // java.lang.Runnable
                public void run() {
                    AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                    boolean z = this.val$newState;
                    anonymousClass1.getClass();
                    Util.a();
                    FrameworkConnectivityMonitorPostApi24 frameworkConnectivityMonitorPostApi24 = FrameworkConnectivityMonitorPostApi24.this;
                    boolean z2 = frameworkConnectivityMonitorPostApi24.f24905a;
                    frameworkConnectivityMonitorPostApi24.f24905a = z;
                    if (z2 != z) {
                        ((AnonymousClass2) frameworkConnectivityMonitorPostApi24.f24906b).a(z);
                    }
                }
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public final void onAvailable(Network network) {
                Util.f().post(new RunnableC00781(true));
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public final void onLost(Network network) {
                Util.f().post(new RunnableC00781(false));
            }
        };

        public FrameworkConnectivityMonitorPostApi24(GlideSuppliers.GlideSupplier glideSupplier, ConnectivityMonitor.ConnectivityListener connectivityListener) {
            this.f24907c = glideSupplier;
            this.f24906b = connectivityListener;
        }
    }

    public SingletonConnectivityReceiver(final Context context) {
        this.f24900a = new FrameworkConnectivityMonitorPostApi24(GlideSuppliers.a(new GlideSuppliers.GlideSupplier<ConnectivityManager>() { // from class: com.bumptech.glide.manager.SingletonConnectivityReceiver.1
            @Override // com.bumptech.glide.util.GlideSuppliers.GlideSupplier
            public final Object get() {
                return (ConnectivityManager) context.getSystemService("connectivity");
            }
        }), new AnonymousClass2());
    }

    public static SingletonConnectivityReceiver a(Context context) {
        if (d == null) {
            synchronized (SingletonConnectivityReceiver.class) {
                try {
                    if (d == null) {
                        d = new SingletonConnectivityReceiver(context.getApplicationContext());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return d;
    }

    public final void b() {
        if (this.f24902c || this.f24901b.isEmpty()) {
            return;
        }
        FrameworkConnectivityMonitorPostApi24 frameworkConnectivityMonitorPostApi24 = this.f24900a;
        GlideSuppliers.GlideSupplier glideSupplier = frameworkConnectivityMonitorPostApi24.f24907c;
        boolean z = false;
        frameworkConnectivityMonitorPostApi24.f24905a = ((ConnectivityManager) glideSupplier.get()).getActiveNetwork() != null;
        try {
            ((ConnectivityManager) glideSupplier.get()).registerDefaultNetworkCallback(frameworkConnectivityMonitorPostApi24.d);
            z = true;
        } catch (RuntimeException unused) {
            Log.isLoggable("ConnectivityMonitor", 5);
        }
        this.f24902c = z;
    }
}
