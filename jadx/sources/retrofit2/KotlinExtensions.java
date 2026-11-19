package retrofit2;

import defpackage.md;
import defpackage.os;
import io.jsonwebtoken.JwtParser;
import kotlin.KotlinNullPointerException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.Dispatchers;
import okhttp3.Request;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"retrofit"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class KotlinExtensions {
    public static final Object a(final Call call, Continuation continuation) {
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.b(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        cancellableContinuationImpl.invokeOnCancellation(new Function1<Throwable, Unit>() { // from class: retrofit2.KotlinExtensions$await$2$1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                call.cancel();
                return Unit.f71739a;
            }
        });
        call.p(new Callback<Object>() { // from class: retrofit2.KotlinExtensions$await$2$2
            @Override // retrofit2.Callback
            public final void onFailure(Call call2, Throwable th) {
                Result.Companion companion = Result.INSTANCE;
                cancellableContinuationImpl.resumeWith(new Result.Failure(th));
            }

            @Override // retrofit2.Callback
            public final void onResponse(Call call2, Response response) {
                boolean z = response.f79449a.r;
                CancellableContinuationImpl cancellableContinuationImpl2 = cancellableContinuationImpl;
                if (!z) {
                    Result.Companion companion = Result.INSTANCE;
                    cancellableContinuationImpl2.resumeWith(new Result.Failure(new HttpException(response)));
                    return;
                }
                Object obj = response.f79450b;
                if (obj != null) {
                    Result.Companion companion2 = Result.INSTANCE;
                    cancellableContinuationImpl2.resumeWith(obj);
                    return;
                }
                Request request = call2.request();
                request.getClass();
                Object objA = request.a(kotlin.jvm.internal.Reflection.f71922a.b(Invocation.class));
                objA.getClass();
                Invocation invocation = (Invocation) objA;
                KotlinNullPointerException kotlinNullPointerException = new KotlinNullPointerException("Response from " + invocation.f79352a.getName() + JwtParser.SEPARATOR_CHAR + invocation.f79354c.getName() + " was null but response body type was declared as non-null");
                Result.Companion companion3 = Result.INSTANCE;
                cancellableContinuationImpl2.resumeWith(new Result.Failure(kotlinNullPointerException));
            }
        });
        Object result = cancellableContinuationImpl.getResult();
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        return result;
    }

    public static final Object b(final Call call, Continuation continuation) {
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.b(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        cancellableContinuationImpl.invokeOnCancellation(new Function1<Throwable, Unit>() { // from class: retrofit2.KotlinExtensions$await$4$1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                call.cancel();
                return Unit.f71739a;
            }
        });
        call.p(new Callback<Object>() { // from class: retrofit2.KotlinExtensions$await$4$2
            @Override // retrofit2.Callback
            public final void onFailure(Call call2, Throwable th) {
                Result.Companion companion = Result.INSTANCE;
                cancellableContinuationImpl.resumeWith(new Result.Failure(th));
            }

            @Override // retrofit2.Callback
            public final void onResponse(Call call2, Response response) {
                boolean z = response.f79449a.r;
                CancellableContinuationImpl cancellableContinuationImpl2 = cancellableContinuationImpl;
                if (z) {
                    Result.Companion companion = Result.INSTANCE;
                    cancellableContinuationImpl2.resumeWith(response.f79450b);
                } else {
                    Result.Companion companion2 = Result.INSTANCE;
                    cancellableContinuationImpl2.resumeWith(new Result.Failure(new HttpException(response)));
                }
            }
        });
        Object result = cancellableContinuationImpl.getResult();
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        return result;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final CoroutineSingletons c(Continuation continuation, final Throwable th) {
        final KotlinExtensions$suspendAndThrow$1 kotlinExtensions$suspendAndThrow$1;
        if (continuation instanceof KotlinExtensions$suspendAndThrow$1) {
            kotlinExtensions$suspendAndThrow$1 = (KotlinExtensions$suspendAndThrow$1) continuation;
            int i2 = kotlinExtensions$suspendAndThrow$1.f79362c;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                kotlinExtensions$suspendAndThrow$1.f79362c = i2 - Integer.MIN_VALUE;
            } else {
                kotlinExtensions$suspendAndThrow$1 = new KotlinExtensions$suspendAndThrow$1(continuation);
            }
        } else {
            kotlinExtensions$suspendAndThrow$1 = new KotlinExtensions$suspendAndThrow$1(continuation);
        }
        Object obj = kotlinExtensions$suspendAndThrow$1.f79361b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = kotlinExtensions$suspendAndThrow$1.f79362c;
        if (i3 == 0) {
            ResultKt.b(obj);
            kotlinExtensions$suspendAndThrow$1.f79362c = 1;
            Dispatchers.f74659a.dispatch(kotlinExtensions$suspendAndThrow$1.getContext(), new Runnable() { // from class: retrofit2.KotlinExtensions$suspendAndThrow$2$1
                @Override // java.lang.Runnable
                public final void run() {
                    Continuation continuationB = IntrinsicsKt.b(kotlinExtensions$suspendAndThrow$1);
                    Result.Companion companion = Result.INSTANCE;
                    continuationB.resumeWith(ResultKt.a(th));
                }
            });
            return coroutineSingletons;
        }
        if (i3 != 1) {
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        os.d();
        return null;
    }
}
