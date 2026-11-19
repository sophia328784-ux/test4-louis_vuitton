package com.linkplay.lpmdpkit.okhttp;

/* JADX INFO: loaded from: classes2.dex */
public class OkHttpUtils extends HttpRequestUtils {
    private static OkHttpUtils mInstance;

    private OkHttpUtils() {
    }

    public static synchronized OkHttpUtils getInstance() {
        try {
            if (mInstance == null) {
                mInstance = new OkHttpUtils();
            }
        } catch (Throwable th) {
            throw th;
        }
        return mInstance;
    }
}
