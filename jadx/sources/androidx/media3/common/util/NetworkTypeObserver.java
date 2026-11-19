package androidx.media3.common.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.telephony.TelephonyCallback;
import android.telephony.TelephonyDisplayInfo;
import android.telephony.TelephonyManager;
import defpackage.qs;
import java.lang.ref.WeakReference;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class NetworkTypeObserver {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static NetworkTypeObserver f14179f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Executor f14180a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CopyOnWriteArrayList f14181b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f14182c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f14183e;

    public static final class Api31 {

        public static final class DisplayInfoCallback extends TelephonyCallback implements TelephonyCallback.DisplayInfoListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final NetworkTypeObserver f14184a;

            public DisplayInfoCallback(NetworkTypeObserver networkTypeObserver) {
                this.f14184a = networkTypeObserver;
            }

            public final void onDisplayInfoChanged(TelephonyDisplayInfo telephonyDisplayInfo) {
                int overrideNetworkType = telephonyDisplayInfo.getOverrideNetworkType();
                this.f14184a.d(overrideNetworkType == 3 || overrideNetworkType == 4 || overrideNetworkType == 5 ? 10 : 5);
            }
        }

        public static void a(Context context, NetworkTypeObserver networkTypeObserver) {
            try {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                telephonyManager.getClass();
                DisplayInfoCallback displayInfoCallback = new DisplayInfoCallback(networkTypeObserver);
                telephonyManager.registerTelephonyCallback(networkTypeObserver.f14180a, displayInfoCallback);
                telephonyManager.unregisterTelephonyCallback(displayInfoCallback);
            } catch (RuntimeException unused) {
                networkTypeObserver.d(5);
            }
        }
    }

    public interface Listener {
        void a(int i2);
    }

    public final class ListenerHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final WeakReference f14185a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Executor f14186b;

        public ListenerHolder(Listener listener, Executor executor) {
            this.f14185a = new WeakReference(listener);
            this.f14186b = executor;
        }
    }

    public final class Receiver extends BroadcastReceiver {
        public Receiver() {
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            NetworkTypeObserver.this.f14180a.execute(new c(this, context, 1));
        }
    }

    public NetworkTypeObserver(Context context) {
        Executor executorA = BackgroundExecutor.a();
        this.f14180a = executorA;
        this.f14181b = new CopyOnWriteArrayList();
        this.f14182c = new Object();
        this.d = 0;
        executorA.execute(new c(this, context, 0));
    }

    public static synchronized NetworkTypeObserver a(Context context) {
        try {
            if (f14179f == null) {
                f14179f = new NetworkTypeObserver(context);
            }
        } catch (Throwable th) {
            throw th;
        }
        return f14179f;
    }

    public final int b() {
        int i2;
        synchronized (this.f14182c) {
            i2 = this.d;
        }
        return i2;
    }

    public final void c(qs qsVar, Executor executor) {
        boolean z;
        CopyOnWriteArrayList<ListenerHolder> copyOnWriteArrayList = this.f14181b;
        for (ListenerHolder listenerHolder : copyOnWriteArrayList) {
            if (listenerHolder.f14185a.get() == null) {
                copyOnWriteArrayList.remove(listenerHolder);
            }
        }
        ListenerHolder listenerHolder2 = new ListenerHolder(qsVar, executor);
        synchronized (this.f14182c) {
            this.f14181b.add(listenerHolder2);
            z = this.f14183e;
        }
        if (z) {
            listenerHolder2.f14186b.execute(new d(listenerHolder2));
        }
    }

    public final void d(int i2) {
        CopyOnWriteArrayList<ListenerHolder> copyOnWriteArrayList = this.f14181b;
        for (ListenerHolder listenerHolder : copyOnWriteArrayList) {
            if (listenerHolder.f14185a.get() == null) {
                copyOnWriteArrayList.remove(listenerHolder);
            }
        }
        synchronized (this.f14182c) {
            try {
                if (this.f14183e && this.d == i2) {
                    return;
                }
                this.f14183e = true;
                this.d = i2;
                for (ListenerHolder listenerHolder2 : this.f14181b) {
                    listenerHolder2.f14186b.execute(new d(listenerHolder2));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
