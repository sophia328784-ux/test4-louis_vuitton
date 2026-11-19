package androidx.work.impl.constraints;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkRequest;
import androidx.work.Logger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÃ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/work/impl/constraints/SharedNetworkCallback;", "Landroid/net/ConnectivityManager$NetworkCallback;", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class SharedNetworkCallback extends ConnectivityManager.NetworkCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SharedNetworkCallback f20430a = new SharedNetworkCallback();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Object f20431b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final LinkedHashMap f20432c = new LinkedHashMap();
    public static NetworkCapabilities d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static boolean f20433e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static Boolean f20434f;

    public static boolean a(NetworkRequest networkRequest, NetworkCapabilities networkCapabilities) {
        Boolean bool = f20434f;
        bool.getClass();
        return !bool.booleanValue() && networkRequest.canBeSatisfiedBy(networkCapabilities);
    }

    public static void b() {
        ArrayList<Pair> arrayList = new ArrayList();
        synchronized (f20431b) {
            try {
                if (f20433e && f20434f != null) {
                    for (Map.Entry entry : f20432c.entrySet()) {
                        Function1 function1 = (Function1) entry.getKey();
                        NetworkRequest networkRequest = (NetworkRequest) entry.getValue();
                        SharedNetworkCallback sharedNetworkCallback = f20430a;
                        NetworkCapabilities networkCapabilities = d;
                        sharedNetworkCallback.getClass();
                        arrayList.add(new Pair(function1, a(networkRequest, networkCapabilities) ? ConstraintsState.ConstraintsMet.f20419a : new ConstraintsState.ConstraintsNotMet(7)));
                    }
                    for (Pair pair : arrayList) {
                        ((Function1) pair.f71705b).invoke((ConstraintsState) pair.f71706c);
                    }
                    return;
                }
                Logger loggerA = Logger.a();
                int i2 = WorkConstraintsTrackerKt.f20440a;
                loggerA.getClass();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onBlockedStatusChanged(Network network, boolean z) {
        network.getClass();
        Logger loggerA = Logger.a();
        int i2 = WorkConstraintsTrackerKt.f20440a;
        loggerA.getClass();
        synchronized (f20431b) {
            if (Intrinsics.c(f20434f, Boolean.valueOf(z))) {
                return;
            }
            f20434f = Boolean.valueOf(z);
            b();
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
        network.getClass();
        networkCapabilities.getClass();
        Logger loggerA = Logger.a();
        int i2 = WorkConstraintsTrackerKt.f20440a;
        loggerA.getClass();
        synchronized (f20431b) {
            d = networkCapabilities;
            f20433e = true;
        }
        b();
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onLost(Network network) {
        network.getClass();
        Logger loggerA = Logger.a();
        int i2 = WorkConstraintsTrackerKt.f20440a;
        loggerA.getClass();
        synchronized (f20431b) {
            d = null;
            Iterator it = f20432c.keySet().iterator();
            while (it.hasNext()) {
                ((Function1) it.next()).invoke(new ConstraintsState.ConstraintsNotMet(7));
            }
        }
    }
}
