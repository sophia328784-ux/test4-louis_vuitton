package com.google.android.gms.auth.api.signin.internal;

import com.dynatrace.android.callback.Callback;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.PendingResults;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.StatusPendingResult;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.logging.Logger;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;

/* JADX INFO: loaded from: classes2.dex */
public final class zbb implements Runnable {
    private static final Logger zba = new Logger("RevokeAccessOperation", new String[0]);
    private final String zbb;
    private final StatusPendingResult zbc;

    public zbb(String str) {
        Preconditions.e(str);
        this.zbb = str;
        this.zbc = new StatusPendingResult((GoogleApiClient) null);
    }

    public static PendingResult zba(String str) {
        if (str == null) {
            return PendingResults.a(new Status(4));
        }
        zbb zbbVar = new zbb(str);
        new Thread(zbbVar).start();
        return zbbVar.zbc;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Status status = Status.f29005h;
        try {
            URLConnection uRLConnectionOpenConnection = new URL("https://accounts.google.com/o/oauth2/revoke?token=" + this.zbb).openConnection();
            Callback.C(uRLConnectionOpenConnection);
            HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
            httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
            int iK = Callback.k(httpURLConnection);
            if (iK == 200) {
                status = Status.f29004f;
            } else {
                zba.a("Unable to revoke access!", new Object[0]);
            }
            Logger logger = zba;
            String str = "Response Code: " + iK;
            Object[] objArr = new Object[0];
            if (logger.f29284c <= 3) {
                logger.a(str, objArr);
            }
        } catch (IOException e2) {
            zba.a("IOException when revoking access: ".concat(String.valueOf(e2.toString())), new Object[0]);
        } catch (Exception e3) {
            zba.a("Exception when revoking access: ".concat(String.valueOf(e3.toString())), new Object[0]);
        }
        this.zbc.f(status);
    }
}
