package coil3.network;

import android.content.Context;
import android.net.ConnectivityManager;
import androidx.core.content.ContextCompat;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"io.coil-kt.coil3:coil-network-core"}, k = 2, mv = {2, 2, 0}, xi = 48)
public abstract class ConnectivityCheckerKt {
    public static final ConnectivityChecker a(Context context) {
        Context applicationContext = context.getApplicationContext();
        ConnectivityManager connectivityManager = (ConnectivityManager) ContextCompat.getSystemService(applicationContext, ConnectivityManager.class);
        if (connectivityManager != null && ContextCompat.checkSelfPermission(applicationContext, "android.permission.ACCESS_NETWORK_STATE") == 0) {
            try {
                return new ConnectivityCheckerApi23(connectivityManager);
            } catch (Exception unused) {
            }
        }
        return ConnectivityChecker.f21538a;
    }
}
