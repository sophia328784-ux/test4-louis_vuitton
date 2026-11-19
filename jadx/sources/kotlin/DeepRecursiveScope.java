package kotlin;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\b7\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u00020\u0003\u0082\u0001\u0001\u0004¨\u0006\u0005"}, d2 = {"Lkotlin/DeepRecursiveScope;", "T", "R", "", "Lkotlin/DeepRecursiveScopeImpl;", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
public abstract class DeepRecursiveScope<T, R> {
    public DeepRecursiveScope(DefaultConstructorMarker defaultConstructorMarker) {
    }

    public abstract CoroutineSingletons a(Unit unit, Continuation continuation);
}
