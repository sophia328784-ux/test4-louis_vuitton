package com.networkbench.agent.impl.plugin.g.a;

import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import com.dynatrace.android.callback.Callback;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;

/* JADX INFO: loaded from: classes3.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f38120a = 65536;

    public static String a(String str) throws IOException {
        byte[] bArrB = b(str);
        if (bArrB == null) {
            return null;
        }
        return new String(bArrB);
    }

    public static byte[] b(String str) throws IOException {
        URLConnection uRLConnectionOpenConnection = new URL(str).openConnection();
        Callback.C(uRLConnectionOpenConnection);
        HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
        httpURLConnection.setConnectTimeout(10000);
        httpURLConnection.setReadTimeout(20000);
        if (Callback.k(httpURLConnection) != 200) {
            return null;
        }
        int iC = Callback.c(httpURLConnection);
        if (iC < 0) {
            iC = 65536;
        }
        if (iC > 65536) {
            return null;
        }
        InputStream inputStreamG = Callback.g(httpURLConnection);
        byte[] bArr = new byte[65536];
        int i2 = inputStreamG.read(bArr);
        inputStreamG.close();
        if (i2 <= 0) {
            return null;
        }
        if (i2 >= 65536) {
            return bArr;
        }
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, 0, bArr2, 0, i2);
        return bArr2;
    }

    public static void a(Runnable runnable) {
        new Handler(Looper.getMainLooper()).post(runnable);
    }

    public static void b(Runnable runnable) {
        AsyncTask.execute(runnable);
    }
}
