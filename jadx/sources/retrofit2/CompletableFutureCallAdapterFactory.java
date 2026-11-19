package retrofit2;

import defpackage.md;
import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.concurrent.CompletableFuture;

/* JADX INFO: loaded from: classes5.dex */
final class CompletableFutureCallAdapterFactory extends CallAdapter.Factory {

    public static final class BodyCallAdapter<R> implements CallAdapter<R, CompletableFuture<R>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Type f79333a;

        public class BodyCallback implements Callback<R> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final CompletableFuture f79334b;

            public BodyCallback(BodyCallAdapter bodyCallAdapter, CompletableFuture<R> completableFuture) {
                this.f79334b = completableFuture;
            }

            @Override // retrofit2.Callback
            public final void onFailure(Call call, Throwable th) {
                this.f79334b.completeExceptionally(th);
            }

            @Override // retrofit2.Callback
            public final void onResponse(Call call, Response response) {
                boolean z = response.f79449a.r;
                CompletableFuture completableFuture = this.f79334b;
                if (z) {
                    completableFuture.complete(response.f79450b);
                } else {
                    completableFuture.completeExceptionally(new HttpException(response));
                }
            }
        }

        public BodyCallAdapter(Type type) {
            this.f79333a = type;
        }

        @Override // retrofit2.CallAdapter
        public final Type a() {
            return this.f79333a;
        }

        @Override // retrofit2.CallAdapter
        public final Object b(Call call) {
            CallCancelCompletableFuture callCancelCompletableFuture = new CallCancelCompletableFuture(call);
            ((OkHttpCall) call).p(new BodyCallback(this, callCancelCompletableFuture));
            return callCancelCompletableFuture;
        }
    }

    public static final class CallCancelCompletableFuture<T> extends CompletableFuture<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Call f79335b;

        public CallCancelCompletableFuture(Call call) {
            this.f79335b = call;
        }

        @Override // java.util.concurrent.CompletableFuture, java.util.concurrent.Future
        public final boolean cancel(boolean z) {
            if (z) {
                this.f79335b.cancel();
            }
            return super.cancel(z);
        }
    }

    public static final class ResponseCallAdapter<R> implements CallAdapter<R, CompletableFuture<Response<R>>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Type f79336a;

        public class ResponseCallback implements Callback<R> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final CompletableFuture f79337b;

            public ResponseCallback(ResponseCallAdapter responseCallAdapter, CompletableFuture<Response<R>> completableFuture) {
                this.f79337b = completableFuture;
            }

            @Override // retrofit2.Callback
            public final void onFailure(Call call, Throwable th) {
                this.f79337b.completeExceptionally(th);
            }

            @Override // retrofit2.Callback
            public final void onResponse(Call call, Response response) {
                this.f79337b.complete(response);
            }
        }

        public ResponseCallAdapter(Type type) {
            this.f79336a = type;
        }

        @Override // retrofit2.CallAdapter
        public final Type a() {
            return this.f79336a;
        }

        @Override // retrofit2.CallAdapter
        public final Object b(Call call) {
            CallCancelCompletableFuture callCancelCompletableFuture = new CallCancelCompletableFuture(call);
            ((OkHttpCall) call).p(new ResponseCallback(this, callCancelCompletableFuture));
            return callCancelCompletableFuture;
        }
    }

    @Override // retrofit2.CallAdapter.Factory
    public final CallAdapter a(Type type, Annotation[] annotationArr) {
        if (Utils.e(type) != CompletableFuture.class) {
            return null;
        }
        if (!(type instanceof ParameterizedType)) {
            md.k("CompletableFuture return type must be parameterized as CompletableFuture<Foo> or CompletableFuture<? extends Foo>");
            return null;
        }
        Type typeD = Utils.d(0, (ParameterizedType) type);
        if (Utils.e(typeD) != Response.class) {
            return new BodyCallAdapter(typeD);
        }
        if (typeD instanceof ParameterizedType) {
            return new ResponseCallAdapter(Utils.d(0, (ParameterizedType) typeD));
        }
        md.k("Response must be parameterized as Response<Foo> or Response<? extends Foo>");
        return null;
    }
}
