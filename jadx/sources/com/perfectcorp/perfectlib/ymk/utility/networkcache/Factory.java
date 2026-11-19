package com.perfectcorp.perfectlib.ymk.utility.networkcache;

import com.perfectcorp.common.concurrent.NamedThreadFactory;
import com.perfectcorp.common.network.NetworkTaskManager;
import com.perfectcorp.common.network.RequestTask;
import com.perfectcorp.common.network.ResponseConverter;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.HttpRequestProviderAppender;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c;
import com.perfectcorp.thirdparty.io.reactivex.internal.schedulers.d;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import defpackage.yw;
import defpackage.zw;
import java.util.Objects;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Factory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ThreadPoolExecutor f42047a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final d f42048b;

    public static abstract class Builder<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public NetworkTaskManager.TaskPriority f42049a = NetworkTaskManager.TaskPriority.NORMAL;

        public final c a(RequestTask.Builder builder) {
            return new c(new yw(this, builder, 1));
        }

        public final c b(RequestTask.Builder builder) {
            return new c(new yw(this, builder, 0));
        }
    }

    public static class StringResponseBuilder extends Builder<RequestTask.Response<String>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f42050b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final RequestTask.RequestMethod f42051c;

        public StringResponseBuilder(String str, RequestTask.RequestMethod requestMethod) {
            Objects.requireNonNull(str);
            this.f42050b = str;
            Objects.requireNonNull(requestMethod);
            this.f42051c = requestMethod;
        }

        public final Single c() {
            RequestTask.Builder builder = new RequestTask.Builder(new HttpRequestProviderAppender(new zw(this, 0)), new ResponseConverter.StringConverter());
            RequestTask.RequestMethod requestMethod = this.f42051c;
            Objects.requireNonNull(requestMethod, "requestMethod can't be null");
            builder.d = requestMethod;
            return b(builder);
        }
    }

    static {
        int iAvailableProcessors = (Runtime.getRuntime().availableProcessors() << 1) - 1;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(iAvailableProcessors, iAvailableProcessors, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), NamedThreadFactory.c("RequestFactoryExecutor#"));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        f42047a = threadPoolExecutor;
        f42048b = Schedulers.a(threadPoolExecutor);
    }
}
