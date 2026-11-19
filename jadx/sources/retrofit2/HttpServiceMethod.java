package retrofit2;

import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.CancellableContinuationImpl;

/* JADX INFO: loaded from: classes5.dex */
abstract class HttpServiceMethod<ResponseT, ReturnT> extends ServiceMethod<ReturnT> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RequestFactory f79348a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final okhttp3.Call.Factory f79349b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Converter f79350c;

    public static final class CallAdapted<ResponseT, ReturnT> extends HttpServiceMethod<ResponseT, ReturnT> {
        public final CallAdapter d;

        public CallAdapted(RequestFactory requestFactory, okhttp3.Call.Factory factory, Converter converter, CallAdapter callAdapter) {
            super(requestFactory, factory, converter);
            this.d = callAdapter;
        }

        @Override // retrofit2.HttpServiceMethod
        public final Object b(Call call, Object[] objArr) {
            return this.d.b(call);
        }
    }

    public static final class SuspendForBody<ResponseT> extends HttpServiceMethod<ResponseT, Object> {
        public final CallAdapter d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f79351e;

        public SuspendForBody(RequestFactory requestFactory, okhttp3.Call.Factory factory, Converter converter, CallAdapter callAdapter, boolean z) {
            super(requestFactory, factory, converter);
            this.d = callAdapter;
            this.f79351e = z;
        }

        @Override // retrofit2.HttpServiceMethod
        public final Object b(Call call, Object[] objArr) {
            Call call2 = (Call) this.d.b(call);
            Continuation continuation = (Continuation) objArr[objArr.length - 1];
            try {
                if (!this.f79351e) {
                    return KotlinExtensions.a(call2, continuation);
                }
                call2.getClass();
                return KotlinExtensions.b(call2, continuation);
            } catch (LinkageError | ThreadDeath | VirtualMachineError e2) {
                throw e2;
            } catch (Throwable th) {
                return KotlinExtensions.c(continuation, th);
            }
        }
    }

    public static final class SuspendForResponse<ResponseT> extends HttpServiceMethod<ResponseT, Object> {
        public final CallAdapter d;

        public SuspendForResponse(RequestFactory requestFactory, okhttp3.Call.Factory factory, Converter converter, CallAdapter callAdapter) {
            super(requestFactory, factory, converter);
            this.d = callAdapter;
        }

        @Override // retrofit2.HttpServiceMethod
        public final Object b(Call call, Object[] objArr) {
            final Call call2 = (Call) this.d.b(call);
            Continuation continuation = (Continuation) objArr[objArr.length - 1];
            try {
                final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.b(continuation), 1);
                cancellableContinuationImpl.initCancellability();
                cancellableContinuationImpl.invokeOnCancellation(new Function1<Throwable, Unit>() { // from class: retrofit2.KotlinExtensions$awaitResponse$2$1
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        call2.cancel();
                        return Unit.f71739a;
                    }
                });
                call2.p(new Callback<Object>() { // from class: retrofit2.KotlinExtensions$awaitResponse$2$2
                    @Override // retrofit2.Callback
                    public final void onFailure(Call call3, Throwable th) {
                        Result.Companion companion = Result.INSTANCE;
                        cancellableContinuationImpl.resumeWith(new Result.Failure(th));
                    }

                    @Override // retrofit2.Callback
                    public final void onResponse(Call call3, Response response) {
                        Result.Companion companion = Result.INSTANCE;
                        cancellableContinuationImpl.resumeWith(response);
                    }
                });
                Object result = cancellableContinuationImpl.getResult();
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                return result;
            } catch (Exception e2) {
                return KotlinExtensions.c(continuation, e2);
            }
        }
    }

    public HttpServiceMethod(RequestFactory requestFactory, okhttp3.Call.Factory factory, Converter converter) {
        this.f79348a = requestFactory;
        this.f79349b = factory;
        this.f79350c = converter;
    }

    public abstract Object b(Call call, Object[] objArr);
}
