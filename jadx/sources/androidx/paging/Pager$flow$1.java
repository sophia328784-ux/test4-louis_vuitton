package androidx.paging;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendFunction;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: Add missing generic type declarations: [Value, Key] */
/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
public /* synthetic */ class Pager$flow$1<Key, Value> extends FunctionReferenceImpl implements Function1<Continuation<? super PagingSource<Key, Value>>, Object>, SuspendFunction {
    @Override // kotlin.jvm.functions.Function1
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public final Object invoke(Continuation continuation) {
        SuspendingPagingSourceFactory suspendingPagingSourceFactory = (SuspendingPagingSourceFactory) this.receiver;
        return BuildersKt.f(suspendingPagingSourceFactory.f18977b, new SuspendingPagingSourceFactory$create$2(suspendingPagingSourceFactory, null), continuation);
    }
}
