package coil3.network.internal;

import coil3.network.NetworkResponseBody;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jdk7.AutoCloseableKt;
import okio.Buffer;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"io.coil-kt.coil3:coil-network-core"}, k = 2, mv = {2, 2, 0}, xi = 48)
public abstract class UtilsKt {
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object a(NetworkResponseBody networkResponseBody, ContinuationImpl continuationImpl) {
        UtilsKt$readBuffer$1 utilsKt$readBuffer$1;
        NetworkResponseBody networkResponseBody2;
        Throwable th;
        Buffer buffer;
        if (continuationImpl instanceof UtilsKt$readBuffer$1) {
            utilsKt$readBuffer$1 = (UtilsKt$readBuffer$1) continuationImpl;
            int i2 = utilsKt$readBuffer$1.f21591e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                utilsKt$readBuffer$1.f21591e = i2 - Integer.MIN_VALUE;
            } else {
                utilsKt$readBuffer$1 = new UtilsKt$readBuffer$1(continuationImpl);
            }
        } else {
            utilsKt$readBuffer$1 = new UtilsKt$readBuffer$1(continuationImpl);
        }
        Object obj = utilsKt$readBuffer$1.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = utilsKt$readBuffer$1.f21591e;
        if (i3 != 0) {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            buffer = utilsKt$readBuffer$1.f21590c;
            networkResponseBody2 = utilsKt$readBuffer$1.f21589b;
            try {
                ResultKt.b(obj);
                AutoCloseableKt.a(networkResponseBody2, null);
                return buffer;
            } catch (Throwable th2) {
                th = th2;
                try {
                    throw th;
                } catch (Throwable th3) {
                    AutoCloseableKt.a(networkResponseBody2, th);
                    throw th3;
                }
            }
        }
        ResultKt.b(obj);
        try {
            Buffer buffer2 = new Buffer();
            utilsKt$readBuffer$1.f21589b = networkResponseBody;
            utilsKt$readBuffer$1.f21590c = buffer2;
            utilsKt$readBuffer$1.f21591e = 1;
            if (networkResponseBody.v1(buffer2) == coroutineSingletons) {
                return coroutineSingletons;
            }
            networkResponseBody2 = networkResponseBody;
            buffer = buffer2;
            AutoCloseableKt.a(networkResponseBody2, null);
            return buffer;
        } catch (Throwable th4) {
            networkResponseBody2 = networkResponseBody;
            th = th4;
            throw th;
        }
    }
}
