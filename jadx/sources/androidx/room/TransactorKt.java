package androidx.room;

import defpackage.z21;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"room-runtime_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class TransactorKt {
    public static final Object a(PooledConnection pooledConnection, String str, ContinuationImpl continuationImpl) {
        Object objB = pooledConnection.b(str, new z21(28), continuationImpl);
        return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : Unit.f71739a;
    }
}
