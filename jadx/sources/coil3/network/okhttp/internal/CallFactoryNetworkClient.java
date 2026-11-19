package coil3.network.okhttp.internal;

import coil3.network.NetworkClient;
import coil3.network.NetworkRequest;
import coil3.network.NetworkResponse;
import com.dynatrace.android.callback.OkCallback;
import defpackage.md;
import java.io.Closeable;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.io.CloseableKt;
import kotlin.jvm.JvmInline;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuationImpl;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.connection.RealCall;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0081@\u0018\u00002\u00020\u0001\u0088\u0001\u0002\u0092\u0001\u00020\u0003¨\u0006\u0004"}, d2 = {"Lcoil3/network/okhttp/internal/CallFactoryNetworkClient;", "Lcoil3/network/NetworkClient;", "callFactory", "Lokhttp3/Call$Factory;", "io.coil-kt.coil3:coil-network-okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
@JvmInline
public final class CallFactoryNetworkClient implements NetworkClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Call.Factory f21592a;

    public /* synthetic */ CallFactoryNetworkClient(Call.Factory factory) {
        this.f21592a = factory;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static Object b(Call.Factory factory, NetworkRequest networkRequest, Function2 function2, ContinuationImpl continuationImpl) {
        CallFactoryNetworkClient$executeRequest$1 callFactoryNetworkClient$executeRequest$1;
        Function2 function3;
        Closeable closeable;
        Throwable th;
        Closeable closeable2;
        if (continuationImpl instanceof CallFactoryNetworkClient$executeRequest$1) {
            callFactoryNetworkClient$executeRequest$1 = (CallFactoryNetworkClient$executeRequest$1) continuationImpl;
            int i2 = callFactoryNetworkClient$executeRequest$1.f21595e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                callFactoryNetworkClient$executeRequest$1.f21595e = i2 - Integer.MIN_VALUE;
            } else {
                callFactoryNetworkClient$executeRequest$1 = new CallFactoryNetworkClient$executeRequest$1(continuationImpl);
            }
        } else {
            callFactoryNetworkClient$executeRequest$1 = new CallFactoryNetworkClient$executeRequest$1(continuationImpl);
        }
        Object objB = callFactoryNetworkClient$executeRequest$1.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = callFactoryNetworkClient$executeRequest$1.f21595e;
        if (i3 == 0) {
            ResultKt.b(objB);
            callFactoryNetworkClient$executeRequest$1.f21593b = function2;
            callFactoryNetworkClient$executeRequest$1.f21594c = factory;
            callFactoryNetworkClient$executeRequest$1.f21595e = 1;
            objB = CallFactoryNetworkClientKt.b(networkRequest, callFactoryNetworkClient$executeRequest$1);
            if (objB != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i3 != 1) {
            if (i3 != 2) {
                if (i3 != 3) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                closeable2 = (Closeable) callFactoryNetworkClient$executeRequest$1.f21594c;
                try {
                    ResultKt.b(objB);
                    CloseableKt.a(closeable2, null);
                    return objB;
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        throw th;
                    } catch (Throwable th3) {
                        CloseableKt.a(closeable2, th);
                        throw th3;
                    }
                }
            }
            function3 = callFactoryNetworkClient$executeRequest$1.f21593b;
            ResultKt.b(objB);
            closeable = (Closeable) objB;
            try {
                NetworkResponse networkResponseA = CallFactoryNetworkClientKt.a((Response) closeable);
                callFactoryNetworkClient$executeRequest$1.f21593b = null;
                callFactoryNetworkClient$executeRequest$1.f21594c = closeable;
                callFactoryNetworkClient$executeRequest$1.f21595e = 3;
                objB = function3.invoke(networkResponseA, callFactoryNetworkClient$executeRequest$1);
                if (objB != coroutineSingletons) {
                    closeable2 = closeable;
                    CloseableKt.a(closeable2, null);
                    return objB;
                }
                return coroutineSingletons;
            } catch (Throwable th4) {
                th = th4;
                closeable2 = closeable;
                throw th;
            }
        }
        factory = (Call.Factory) callFactoryNetworkClient$executeRequest$1.f21594c;
        function2 = callFactoryNetworkClient$executeRequest$1.f21593b;
        ResultKt.b(objB);
        final RealCall realCallA = factory.a((Request) objB);
        callFactoryNetworkClient$executeRequest$1.f21593b = function2;
        callFactoryNetworkClient$executeRequest$1.f21594c = null;
        callFactoryNetworkClient$executeRequest$1.f21595e = 2;
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.b(callFactoryNetworkClient$executeRequest$1), 1);
        cancellableContinuationImpl.initCancellability();
        cancellableContinuationImpl.invokeOnCancellation(new Function1<Throwable, Unit>() { // from class: coil3.network.okhttp.internal.CallsKt$await$2$1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                realCallA.cancel();
                return Unit.f71739a;
            }
        });
        OkCallback.a(realCallA, new Callback() { // from class: coil3.network.okhttp.internal.CallsKt$await$2$2
            @Override // okhttp3.Callback
            public final void onFailure(Call call, IOException iOException) {
                OkCallback.d(call, iOException);
                try {
                    CancellableContinuationImpl cancellableContinuationImpl2 = cancellableContinuationImpl;
                    Result.Companion companion = Result.INSTANCE;
                    cancellableContinuationImpl2.resumeWith(new Result.Failure(iOException));
                } catch (Throwable th5) {
                    int i4 = OkCallback.f27607a;
                    throw th5;
                }
            }

            @Override // okhttp3.Callback
            public final void onResponse(Call call, Response response) {
                OkCallback.e(call, response);
                try {
                    cancellableContinuationImpl.resume(response, CallsKt$await$2$2$onResponse$1.f21604b);
                } catch (Throwable th5) {
                    int i4 = OkCallback.f27607a;
                    throw th5;
                }
            }
        });
        objB = cancellableContinuationImpl.getResult();
        if (objB != coroutineSingletons) {
            function3 = function2;
            closeable = (Closeable) objB;
            NetworkResponse networkResponseA2 = CallFactoryNetworkClientKt.a((Response) closeable);
            callFactoryNetworkClient$executeRequest$1.f21593b = null;
            callFactoryNetworkClient$executeRequest$1.f21594c = closeable;
            callFactoryNetworkClient$executeRequest$1.f21595e = 3;
            objB = function3.invoke(networkResponseA2, callFactoryNetworkClient$executeRequest$1);
            if (objB != coroutineSingletons) {
                closeable2 = closeable;
                CloseableKt.a(closeable2, null);
                return objB;
            }
        }
        return coroutineSingletons;
    }

    @Override // coil3.network.NetworkClient
    public final Object a(NetworkRequest networkRequest, Function2 function2, Continuation continuation) {
        return b(this.f21592a, networkRequest, function2, (ContinuationImpl) continuation);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof CallFactoryNetworkClient) {
            return Intrinsics.c(this.f21592a, ((CallFactoryNetworkClient) obj).f21592a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f21592a.hashCode();
    }

    public final String toString() {
        return "CallFactoryNetworkClient(callFactory=" + this.f21592a + ")";
    }
}
