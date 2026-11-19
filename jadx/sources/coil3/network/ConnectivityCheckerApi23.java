package coil3.network;

import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcoil3/network/ConnectivityCheckerApi23;", "Lcoil3/network/ConnectivityChecker;", "Landroid/net/ConnectivityManager;", "connectivityManager", "<init>", "(Landroid/net/ConnectivityManager;)V", "io.coil-kt.coil3:coil-network-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
final class ConnectivityCheckerApi23 implements ConnectivityChecker {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConnectivityManager f21539b;

    public ConnectivityCheckerApi23(ConnectivityManager connectivityManager) {
        this.f21539b = connectivityManager;
    }

    @Override // coil3.network.ConnectivityChecker
    public final boolean a() {
        ConnectivityManager connectivityManager = this.f21539b;
        NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
        return networkCapabilities != null && networkCapabilities.hasCapability(12);
    }
}
