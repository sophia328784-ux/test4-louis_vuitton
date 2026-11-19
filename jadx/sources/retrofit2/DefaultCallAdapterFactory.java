package retrofit2;

import defpackage.md;
import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Objects;
import java.util.concurrent.Executor;
import okhttp3.Request;

/* JADX INFO: loaded from: classes5.dex */
final class DefaultCallAdapterFactory extends CallAdapter.Factory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Executor f79338a;

    public static final class ExecutorCallbackCall<T> implements Call<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Executor f79341b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Call f79342c;

        /* JADX INFO: renamed from: retrofit2.DefaultCallAdapterFactory$ExecutorCallbackCall$1, reason: invalid class name */
        class AnonymousClass1 implements Callback<Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ Callback f79343b;

            public AnonymousClass1(Callback callback) {
                this.f79343b = callback;
            }

            @Override // retrofit2.Callback
            public final void onFailure(Call call, Throwable th) {
                ExecutorCallbackCall.this.f79341b.execute(new a(this, this.f79343b, th, 1));
            }

            @Override // retrofit2.Callback
            public final void onResponse(Call call, Response response) {
                ExecutorCallbackCall.this.f79341b.execute(new a(this, this.f79343b, response, 0));
            }
        }

        public ExecutorCallbackCall(Executor executor, Call call) {
            this.f79341b = executor;
            this.f79342c = call;
        }

        @Override // retrofit2.Call
        public final void cancel() {
            this.f79342c.cancel();
        }

        @Override // retrofit2.Call
        public final Call clone() {
            return new ExecutorCallbackCall(this.f79341b, this.f79342c.clone());
        }

        @Override // retrofit2.Call
        public final Response execute() {
            return this.f79342c.execute();
        }

        @Override // retrofit2.Call
        public final boolean isCanceled() {
            return this.f79342c.isCanceled();
        }

        @Override // retrofit2.Call
        public final void p(Callback callback) {
            Objects.requireNonNull(callback, "callback == null");
            this.f79342c.p(new AnonymousClass1(callback));
        }

        @Override // retrofit2.Call
        public final Request request() {
            return this.f79342c.request();
        }
    }

    public DefaultCallAdapterFactory(Executor executor) {
        this.f79338a = executor;
    }

    @Override // retrofit2.CallAdapter.Factory
    public final CallAdapter a(Type type, Annotation[] annotationArr) {
        if (Utils.e(type) != Call.class) {
            return null;
        }
        if (!(type instanceof ParameterizedType)) {
            md.n("Call return type must be parameterized as Call<Foo> or Call<? extends Foo>");
            return null;
        }
        final Type typeD = Utils.d(0, (ParameterizedType) type);
        final Executor executor = Utils.h(annotationArr, SkipCallbackExecutor.class) ? null : this.f79338a;
        return new CallAdapter<Object, Call<?>>() { // from class: retrofit2.DefaultCallAdapterFactory.1
            @Override // retrofit2.CallAdapter
            public final Type a() {
                return typeD;
            }

            @Override // retrofit2.CallAdapter
            public final Object b(Call call) {
                Executor executor2 = executor;
                return executor2 == null ? call : new ExecutorCallbackCall(executor2, call);
            }
        };
    }
}
