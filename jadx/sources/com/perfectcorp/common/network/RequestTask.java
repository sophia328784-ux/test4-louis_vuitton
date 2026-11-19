package com.perfectcorp.common.network;

import android.text.TextUtils;
import android.util.Pair;
import com.dynatrace.android.callback.Callback;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.agent.impl.harvest.HarvestConfiguration;
import com.perfectcorp.common.concurrent.NamedThreadFactory;
import com.perfectcorp.common.guava.FluentFuture;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.utility.HttpRequest;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.thirdparty.com.google.common.base.MoreObjects;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.bz;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFuture;
import com.perfectcorp.thirdparty.io.reactivex.Flowable;
import com.perfectcorp.thirdparty.io.reactivex.Scheduler;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.w;
import defpackage.a61;
import defpackage.lc0;
import defpackage.v7;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.net.UnknownHostException;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class RequestTask<Result> extends j<Response<Result>> {
    private static final List<Integer> g = ImmutableList.A(Integer.valueOf(HarvestConfiguration.SLOW_START_THRESHOLD), 6000);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HttpRequestProvider f39345a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ResponseConverter<Result> f39346b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final RequestMethod f39347c;
    private final List<Pair<String, String>> d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f39348e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f39349f;

    /* JADX INFO: renamed from: com.perfectcorp.common.network.RequestTask$1, reason: invalid class name */
    abstract /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f39350a;

        static {
            int[] iArr = new int[RequestMethod.values().length];
            f39350a = iArr;
            try {
                iArr[RequestMethod.POST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f39350a[RequestMethod.GET.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static final class Builder<Result> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final HttpRequestProvider f39351a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ResponseConverter f39352b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public NetworkTaskManager.TaskPriority f39353c = NetworkTaskManager.TaskPriority.NORMAL;
        public RequestMethod d = RequestMethod.GET;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final ImmutableList.Builder f39354e;

        public Builder(HttpRequestProvider httpRequestProvider, ResponseConverter<Result> responseConverter) {
            bz bzVar = ImmutableList.f42200c;
            this.f39354e = new ImmutableList.Builder();
            Objects.requireNonNull(httpRequestProvider, "urlUtils can't be null");
            this.f39351a = httpRequestProvider;
            Objects.requireNonNull(responseConverter, "responseConverter can't be null");
            this.f39352b = responseConverter;
        }

        public final Single a(final NetworkTaskManager networkTaskManager, Scheduler scheduler) {
            Log.g(3, "RequestTask", "[startWithResponseWrapper] start");
            final RequestTask requestTask = new RequestTask(this, (byte) 0);
            Log.g(3, "RequestTask", "[startWithResponseWrapper] requestRx");
            networkTaskManager.getClass();
            NetworkTaskManager.DebugLog.a("[requestRx] start");
            NetworkTaskManager.DebugLog.a("[requestFuture] start");
            ListenableFuture listenableFutureA = networkTaskManager.f39341b.a(networkTaskManager.f39342c);
            NetworkTaskManager.DebugLog.a("[requestFuture] chain future");
            FluentFuture fluentFutureC = FluentFuture.a(listenableFutureA).c(new com.perfectcorp.thirdparty.com.google.common.util.concurrent.i() { // from class: com.perfectcorp.common.network.i

                abstract class a {

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    public static final com.perfectcorp.common.downloader.b f39371a = new com.perfectcorp.common.downloader.b(8, NamedThreadFactory.b("MultipartDownloader"));
                }

                @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.i
                public final ListenableFuture apply(Object obj) {
                    int i2 = NetworkTaskManager.d;
                    NetworkTaskManager networkTaskManager2 = networkTaskManager;
                    networkTaskManager2.getClass();
                    NetworkTaskManager.DebugLog.a("[requestFuture] transformAsync start");
                    k kVar = networkTaskManager2.f39340a;
                    RequestTask requestTask2 = requestTask;
                    kVar.execute(requestTask2);
                    NetworkTaskManager.DebugLog.a("[requestFuture] task executed");
                    ListenableFuture<RequestTask.Response<Result>> future = requestTask2.getFuture();
                    NetworkTaskManager.DebugLog.a("[requestFuture] transformAsync end");
                    return future;
                }
            });
            NetworkTaskManager.DebugLog.a("[requestFuture] end");
            NetworkTaskManager.DebugLog.a("[requestRx] fromFuture");
            int i2 = Flowable.f42583a;
            Single wVar = new w(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.flowable.i(new com.perfectcorp.thirdparty.io.reactivex.internal.operators.flowable.f(fluentFutureC, 0L, null), null), new lc0(25));
            NetworkTaskManager.DebugLog.a("[requestRx] end");
            if (scheduler != null) {
                wVar = wVar.j(scheduler);
            }
            Log.g(3, "RequestTask", "[startWithResponseWrapper] end");
            return wVar;
        }
    }

    public enum RequestMethod {
        POST("POST"),
        GET("GET");


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final String f39356a;

        RequestMethod(String str) {
            this.f39356a = str;
        }
    }

    public static final class Response<RESULT> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f39357a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f39358b;

        public Response(HttpURLConnection httpURLConnection, Object obj) {
            this.f39357a = Callback.k(httpURLConnection);
            this.f39358b = obj;
        }
    }

    private RequestTask(Builder<Result> builder) {
        super(builder.f39353c);
        this.f39345a = builder.f39351a;
        this.f39346b = builder.f39352b;
        this.f39347c = builder.d;
        this.d = builder.f39354e.i();
        this.f39348e = com.perfectcorp.common.utility.k.f39454a.getAndIncrement();
    }

    private Pair<HttpURLConnection, String> a(HttpRequest httpRequest) {
        Iterator<Integer> it = g.iterator();
        while (it.hasNext()) {
            int iIntValue = it.next().intValue();
            try {
                return this.a(httpRequest, iIntValue);
            } catch (j.b e2) {
                throw e2;
            } catch (Throwable th) {
                Log.c("RequestTask", "[request#" + this.f39348e + "] failed. url=" + httpRequest.c() + ", retry timeout=" + iIntValue, th);
            }
        }
        return this.a(httpRequest, 21000);
    }

    private Pair<HttpURLConnection, String> b(HttpRequest httpRequest, int i2) {
        DataOutputStream dataOutputStream;
        HttpURLConnection httpURLConnection;
        c();
        InputStream inputStreamG = null;
        try {
            if (httpRequest == null) {
                throw new RuntimeException("Input HttpRequest is null");
            }
            String str = httpRequest.f39424a;
            if (str == null) {
                throw new RuntimeException("Bad post url");
            }
            URLConnection uRLConnectionOpenConnection = new URL(str).openConnection();
            Callback.C(uRLConnectionOpenConnection);
            httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
            try {
                httpURLConnection.setConnectTimeout(i2);
                httpURLConnection.setReadTimeout(i2);
                System.setProperty("http.maxConnections", "10");
                c();
                httpURLConnection.setRequestMethod(this.f39347c.f39356a);
                httpURLConnection.setRequestProperty("User-Agent", "Mozilla/5.0");
                httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
                for (Pair<String, String> pair : this.d) {
                    httpURLConnection.addRequestProperty((String) pair.first, (String) pair.second);
                }
                httpURLConnection.setDoOutput(true);
                String strB = httpRequest.b();
                try {
                    dataOutputStream = new DataOutputStream(Callback.i(httpURLConnection));
                    try {
                        dataOutputStream.write(strB.getBytes("UTF-8"));
                        dataOutputStream.flush();
                        dataOutputStream.close();
                        this.f39349f = Callback.k(httpURLConnection);
                        Log.g(3, "RequestTask", "response code #" + this.f39348e + "::" + this.f39349f);
                        inputStreamG = Callback.g(httpURLConnection);
                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStreamG, "UTF-8"));
                        StringBuilder sb = new StringBuilder();
                        while (true) {
                            String line = bufferedReader.readLine();
                            if (line == null) {
                                bufferedReader.close();
                                c();
                                Pair<HttpURLConnection, String> pairCreate = Pair.create(httpURLConnection, sb.toString());
                                IO.b(inputStreamG);
                                IO.b(dataOutputStream);
                                httpURLConnection.disconnect();
                                return pairCreate;
                            }
                            c();
                            sb.append(line);
                        }
                    } catch (Throwable th) {
                        th = th;
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            IO.b(inputStreamG);
                            IO.b(dataOutputStream);
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                            }
                            throw th2;
                        }
                    }
                } catch (UnknownHostException e2) {
                    Log.d("RequestTask", "UnknownHostException :" + e2.getMessage());
                    throw e2;
                }
            } catch (Throwable th3) {
                th = th3;
                dataOutputStream = null;
            }
        } catch (Throwable th4) {
            th = th4;
            dataOutputStream = null;
            httpURLConnection = null;
        }
    }

    private Pair<HttpURLConnection, String> c(HttpRequest httpRequest, int i2) {
        String str;
        HttpURLConnection httpURLConnection;
        InputStream inputStreamG = null;
        if (httpRequest != null) {
            String strC = httpRequest.c();
            if (TextUtils.isEmpty(strC)) {
                str = "Get empty url";
            } else {
                try {
                    URLConnection uRLConnectionOpenConnection = new URL(strC).openConnection();
                    Callback.C(uRLConnectionOpenConnection);
                    httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
                    try {
                        c();
                        httpURLConnection.setRequestMethod(this.f39347c.f39356a);
                        httpURLConnection.setRequestProperty("User-Agent", "Mozilla/5.0");
                        for (Pair<String, String> pair : this.d) {
                            httpURLConnection.addRequestProperty((String) pair.first, (String) pair.second);
                        }
                        httpURLConnection.setConnectTimeout(i2);
                        httpURLConnection.setReadTimeout(i2);
                        this.f39349f = Callback.k(httpURLConnection);
                        Log.g(3, "RequestTask", "response code #" + this.f39348e + "::" + this.f39349f);
                        StringBuilder sb = new StringBuilder();
                        if (this.f39349f < 400) {
                            inputStreamG = Callback.g(httpURLConnection);
                            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStreamG, "UTF-8"));
                            while (true) {
                                String line = bufferedReader.readLine();
                                if (line == null) {
                                    break;
                                }
                                c();
                                sb.append(line);
                            }
                            bufferedReader.close();
                        }
                        c();
                        Pair<HttpURLConnection, String> pairCreate = Pair.create(httpURLConnection, sb.toString());
                        IO.b(inputStreamG);
                        httpURLConnection.disconnect();
                        return pairCreate;
                    } catch (Throwable th) {
                        th = th;
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            IO.b(inputStreamG);
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                            }
                            throw th2;
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                    httpURLConnection = null;
                }
            }
        } else {
            str = "Input HttpRequest is null";
        }
        v7.h(str);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.perfectcorp.common.network.j
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public Response<Result> a() {
        HttpRequest httpRequest = this.f39345a.get();
        Log.g(3, "RequestTask", "[runImpl#" + this.f39348e + "] url=" + httpRequest.c());
        Pair<HttpURLConnection, String> pairA = a(httpRequest);
        HttpURLConnection httpURLConnection = (HttpURLConnection) pairA.first;
        String str = (String) pairA.second;
        Log.g(3, "RequestTask", "[runImpl#" + this.f39348e + "] responseCode=" + this.f39349f + ", response=" + str);
        Object objA = this.f39346b.a(str);
        StringBuilder sb = new StringBuilder("[runImpl#");
        sb.append(this.f39348e);
        sb.append("] convert response end");
        Log.g(3, "RequestTask", sb.toString());
        return new Response<>(httpURLConnection, objA);
    }

    public final HttpRequest getHttpRequest() {
        return this.f39345a.get();
    }

    public final String toString() {
        MoreObjects.ToStringHelper toStringHelper = new MoreObjects.ToStringHelper("RequestTask");
        toStringHelper.b("requestMethod", this.f39347c);
        toStringHelper.b(ConfigurationName.DOWNLOAD_PLUGIN_URL, this.f39345a.get().c());
        toStringHelper.b("priority", b());
        return toStringHelper.toString();
    }

    public /* synthetic */ RequestTask(Builder builder, byte b2) {
        this(builder);
    }

    private Pair<HttpURLConnection, String> a(HttpRequest httpRequest, int i2) {
        int i3 = AnonymousClass1.f39350a[this.f39347c.ordinal()];
        if (i3 == 1) {
            return b(httpRequest, i2);
        }
        if (i3 == 2) {
            return c(httpRequest, i2);
        }
        a61.h();
        return null;
    }
}
