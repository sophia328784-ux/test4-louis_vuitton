package coil3.compose.internal;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b!\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcoil3/compose/internal/ForwardingCoroutineContext;", "Lkotlin/coroutines/CoroutineContext;", "delegate", "<init>", "(Lkotlin/coroutines/CoroutineContext;)V", "io.coil-kt.coil3:coil-compose-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public abstract class ForwardingCoroutineContext implements CoroutineContext {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CoroutineContext f21333b;

    public ForwardingCoroutineContext(CoroutineContext coroutineContext) {
        this.f21333b = coroutineContext;
    }

    public abstract ForwardingCoroutineContext a(ForwardingCoroutineContext forwardingCoroutineContext, CoroutineContext coroutineContext);

    public final boolean equals(Object obj) {
        return Intrinsics.c(this.f21333b, obj);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final Object fold(Object obj, Function2 function2) {
        return this.f21333b.fold(obj, function2);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext.Element get(CoroutineContext.Key key) {
        return this.f21333b.get(key);
    }

    public final int hashCode() {
        return this.f21333b.hashCode();
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext minusKey(CoroutineContext.Key key) {
        return a(this, this.f21333b.minusKey(key));
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext plus(CoroutineContext coroutineContext) {
        return a(this, this.f21333b.plus(coroutineContext));
    }

    public final String toString() {
        return "ForwardingCoroutineContext(delegate=" + this.f21333b + ")";
    }
}
