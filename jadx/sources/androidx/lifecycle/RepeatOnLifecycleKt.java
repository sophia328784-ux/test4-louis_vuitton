package androidx.lifecycle;

import defpackage.md;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScopeKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"lifecycle-runtime"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class RepeatOnLifecycleKt {
    public static final Object a(Lifecycle lifecycle, Lifecycle.State state, Function2 function2, Continuation continuation) {
        Object objD;
        if (state != Lifecycle.State.INITIALIZED) {
            return (lifecycle.getF13454i() != Lifecycle.State.DESTROYED && (objD = CoroutineScopeKt.d(new RepeatOnLifecycleKt$repeatOnLifecycle$3(lifecycle, state, function2, null), continuation)) == CoroutineSingletons.COROUTINE_SUSPENDED) ? objD : Unit.f71739a;
        }
        md.n("repeatOnLifecycle cannot start work with the INITIALIZED lifecycle state.");
        return null;
    }

    public static final Object b(LifecycleOwner lifecycleOwner, Lifecycle.State state, Function2 function2, SuspendLambda suspendLambda) {
        Object objA = a(lifecycleOwner.getF13561b(), state, function2, suspendLambda);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : Unit.f71739a;
    }
}
