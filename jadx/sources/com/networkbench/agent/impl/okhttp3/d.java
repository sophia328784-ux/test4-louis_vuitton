package com.networkbench.agent.impl.okhttp3;

import com.networkbench.agent.impl.instrumentation.NBSTransactionState;
import com.networkbench.agent.impl.instrumentation.NetworkLibInit;
import com.networkbench.agent.impl.okhttp3.tcp.NBSHttpTcpFactory;
import com.networkbench.agent.impl.okhttp3.tcp.NBSHttpTcpListener;
import com.networkbench.agent.impl.util.r;
import java.lang.reflect.Field;
import java.util.ArrayList;
import okhttp3.EventListener;
import okhttp3.OkHttpClient;

/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static ThreadLocal<NBSTransactionState> f37578a = new ThreadLocal<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f37579b = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static ArrayList<String> f37580c;

    static {
        ArrayList<String> arrayList = new ArrayList<>();
        f37580c = arrayList;
        arrayList.add("com.RNFetchBlob.Response.RNFetchBlobFileResp");
        f37580c.add("com.facebook.react.modules.network.ProgressResponseBody");
        f37580c.add("com.ReactNativeBlobUtil.Response.ReactNativeBlobUtilFileResp");
    }

    public static OkHttpClient a(OkHttpClient.Builder builder) {
        try {
            r.u().d = b();
            if (!r.u().d) {
                return b(builder);
            }
            try {
                NBSHttpTcpFactory nBSHttpTcpFactory = new NBSHttpTcpFactory();
                NBSOkHttp3Interceptor_ nBSOkHttp3Interceptor_ = new NBSOkHttp3Interceptor_();
                if (!f37579b || !a(builder, nBSHttpTcpFactory)) {
                    return b(builder);
                }
                builder.getClass();
                builder.f76962c.add(nBSOkHttp3Interceptor_);
                builder.f76963e = nBSHttpTcpFactory;
                OkHttpClient okHttpClient = new OkHttpClient(builder);
                nBSOkHttp3Interceptor_.setClient(okHttpClient);
                return okHttpClient;
            } catch (NullPointerException unused) {
                return b(builder);
            }
        } catch (Throwable unused2) {
            return b(builder);
        }
    }

    private static OkHttpClient b(NBSOkHttp3Interceptor_ nBSOkHttp3Interceptor_) {
        try {
            OkHttpClient.Builder builder = new OkHttpClient.Builder();
            builder.a(nBSOkHttp3Interceptor_);
            OkHttpClient okHttpClient = new OkHttpClient(builder);
            nBSOkHttp3Interceptor_.setClient(okHttpClient);
            return okHttpClient;
        } catch (Throwable unused) {
            return new OkHttpClient();
        }
    }

    private static boolean b() {
        return NetworkLibInit.checkOkhttpVersionForTcp();
    }

    public static OkHttpClient b(OkHttpClient.Builder builder) {
        NBSOkHttp3Interceptor_ nBSOkHttp3Interceptor_ = new NBSOkHttp3Interceptor_();
        builder.getClass();
        builder.f76962c.add(nBSOkHttp3Interceptor_);
        OkHttpClient okHttpClient = new OkHttpClient(builder);
        nBSOkHttp3Interceptor_.setClient(okHttpClient);
        return okHttpClient;
    }

    public static OkHttpClient a() {
        NBSOkHttp3Interceptor_ nBSOkHttp3Interceptor_ = new NBSOkHttp3Interceptor_();
        r.u().d = b();
        return a(nBSOkHttp3Interceptor_);
    }

    private static boolean a(NBSHttpTcpFactory nBSHttpTcpFactory) {
        return nBSHttpTcpFactory != null;
    }

    private static boolean a(OkHttpClient.Builder builder, NBSHttpTcpFactory nBSHttpTcpFactory) {
        try {
            Field declaredField = builder.getClass().getDeclaredField("eventListenerFactory");
            declaredField.setAccessible(true);
            nBSHttpTcpFactory.setFactory((EventListener.Factory) declaredField.get(builder));
            return true;
        } catch (IllegalAccessException | NoSuchFieldException unused) {
            return false;
        }
    }

    private static OkHttpClient a(NBSOkHttp3Interceptor_ nBSOkHttp3Interceptor_) {
        if (f37579b && b()) {
            try {
                OkHttpClient.Builder builder = new OkHttpClient.Builder();
                builder.a(nBSOkHttp3Interceptor_);
                NBSHttpTcpFactory nBSHttpTcpFactory = NBSHttpTcpListener.FACTORY;
                nBSHttpTcpFactory.getClass();
                builder.f76963e = nBSHttpTcpFactory;
                OkHttpClient okHttpClient = new OkHttpClient(builder);
                nBSOkHttp3Interceptor_.setClient(okHttpClient);
                return okHttpClient;
            } catch (NullPointerException unused) {
                return b(nBSOkHttp3Interceptor_);
            }
        }
        return b(nBSOkHttp3Interceptor_);
    }
}
