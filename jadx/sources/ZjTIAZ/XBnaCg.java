package ZjTIAZ;

import android.app.Application;
import android.net.ConnectivityManager;
import android.net.LinkProperties;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkRequest;
import android.os.Handler;
import android.os.Looper;
import androidx.core.content.ContextCompat;
import com.cyberfend.cyfsecurity.CYFManager;
import com.cyberfend.cyfsecurity.CYFMonitor;
import defpackage.d21;
import wcQZwr.GpYFMu;

/* JADX INFO: loaded from: classes.dex */
public class XBnaCg {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static ConnectivityManager.NetworkCallback f297a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Application f298b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static LinkProperties f299c;
    public static final Handler d = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Runnable f300e = new Gkmnlv();

    class Gkmnlv implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            boolean zBooleanValue;
            try {
                if (XBnaCg.f299c == null || !XBnaCg.a() || XBnaCg.f299c.getLinkAddresses().isEmpty()) {
                    XBnaCg.d.postDelayed(this, 100L);
                    return;
                }
                if (XBnaCg.f298b != null) {
                    CYFManager cYFManager = CYFMonitor.f25346b;
                    synchronized (cYFManager) {
                        ZptgnD zptgnD = cYFManager.f25342i;
                        zBooleanValue = zptgnD != null ? zptgnD.v().booleanValue() : false;
                    }
                    if (!zBooleanValue) {
                        CYFMonitor.b(XBnaCg.f298b, false);
                    }
                }
                XBnaCg.d.removeCallbacks(this);
                XBnaCg.c();
            } catch (Exception unused) {
            }
        }
    }

    class Gnixwn extends ConnectivityManager.NetworkCallback {
        @Override // android.net.ConnectivityManager.NetworkCallback
        public final void onAvailable(Network network) {
            try {
                Handler handler = XBnaCg.d;
                Runnable runnable = XBnaCg.f300e;
                handler.removeCallbacks(runnable);
                handler.postDelayed(runnable, 200L);
            } catch (Exception unused) {
            }
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public final void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public final void onLinkPropertiesChanged(Network network, LinkProperties linkProperties) {
            if (linkProperties != null) {
                try {
                    if (linkProperties.getLinkAddresses().isEmpty()) {
                        return;
                    }
                    XBnaCg.f299c = linkProperties;
                } catch (Exception unused) {
                }
            }
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public final void onLost(Network network) {
        }
    }

    public static boolean a() {
        ConnectivityManager connectivityManager;
        NetworkCapabilities networkCapabilities;
        Application application = f298b;
        if (application == null) {
            return true;
        }
        try {
            if (ContextCompat.checkSelfPermission(application, CNATAC.a("oKqA\\[K\u000eaTGQ\\EDQFD\u0005mnmjcr}maqqhzsEHH\\JZ")) != 0 || (connectivityManager = (ConnectivityManager) f298b.getSystemService(CNATAC.a("mJ{]VQ[IgXAE"))) == null) {
                return true;
            }
            Network activeNetwork = connectivityManager.getActiveNetwork();
            if (activeNetwork == null || (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) == null) {
                return false;
            }
            return networkCapabilities.hasTransport(1) || networkCapabilities.hasTransport(0) || networkCapabilities.hasTransport(3) || networkCapabilities.hasTransport(4);
        } catch (Exception e2) {
            GpYFMu.d(CNATAC.a("M|Sw`qaEeFZN^cCQE"), d21.h(e2, "gVV\\]\\JCeTQhZ\u007fYLLXEIY\u0006\u0006\u0010DPQKW\u001c\u0007", new StringBuilder()), new Throwable[0]);
            return true;
        }
    }

    public static void b() {
        boolean zBooleanValue;
        if (f298b == null) {
            return;
        }
        try {
            CYFManager cYFManager = CYFMonitor.f25346b;
            synchronized (cYFManager) {
                ZptgnD zptgnD = cYFManager.f25342i;
                zBooleanValue = zptgnD != null ? zptgnD.v().booleanValue() : false;
            }
            if (zBooleanValue) {
                return;
            }
            if (f297a == null) {
                f297a = new Gnixwn();
            }
            ConnectivityManager connectivityManager = (ConnectivityManager) f298b.getSystemService(CNATAC.a("mJ{]VQ[IgXAE"));
            if (connectivityManager != null) {
                connectivityManager.registerNetworkCallback(new NetworkRequest.Builder().addCapability(12).build(), f297a);
            }
        } catch (Exception e2) {
            GpYFMu.d(CNATAC.a("M|Sw`qaEeFZN^cCQE"), d21.h(e2, "|@rZ@FJRW^GrPB@W[AhMABMQBI\u0003AWTHZ\u0002:", new StringBuilder()), new Throwable[0]);
        }
    }

    public static void c() {
        Application application = f298b;
        if (application == null || f297a == null) {
            return;
        }
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) application.getSystemService(CNATAC.a("mJ{]VQ[IgXAE"));
            if (connectivityManager != null) {
                connectivityManager.unregisterNetworkCallback(f297a);
            }
        } catch (Exception e2) {
            GpYFMu.d(CNATAC.a("M|Sw`qaEeFZN^cCQE"), CNATAC.a("{KgVT[\\TtCv]YZuYJA\u000bI_\\@B\u001b\u0002") + e2.getMessage(), new Throwable[0]);
        } finally {
            f297a = null;
        }
    }
}
