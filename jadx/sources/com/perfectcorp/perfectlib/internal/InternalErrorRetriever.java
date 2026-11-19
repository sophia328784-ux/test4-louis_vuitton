package com.perfectcorp.perfectlib.internal;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.exceptions.NoNetworkConnectionException;
import com.perfectcorp.perfectlib.ymk.Globals;

/* JADX INFO: loaded from: classes3.dex */
public abstract class InternalErrorRetriever {
    public static Throwable a(Throwable th) {
        NetworkInfo activeNetworkInfo;
        Object systemService = Globals.f41932a.getSystemService("connectivity");
        if ((systemService instanceof ConnectivityManager) && (activeNetworkInfo = ((ConnectivityManager) systemService).getActiveNetworkInfo()) != null && activeNetworkInfo.isConnected()) {
            return th;
        }
        Log.e("InternalErrorRetriever", "Network is not available.", th);
        return new NoNetworkConnectionException(th);
    }
}
