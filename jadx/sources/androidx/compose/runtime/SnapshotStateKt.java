package androidx.compose.runtime;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.internal.SnapshotThreadLocal;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"androidx/compose/runtime/SnapshotStateKt__DerivedStateKt"}, d2 = {}, k = 4, mv = {2, 1, 0}, xi = 48)
public abstract class SnapshotStateKt {
    public static final MutableState a(Flow flow, Object obj, CoroutineContext coroutineContext, Composer composer, int i2, int i3) {
        if ((i3 & 2) != 0) {
            coroutineContext = EmptyCoroutineContext.f71840b;
        }
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        boolean zY = composer.y(coroutineContext) | composer.y(flow);
        Object objX = composer.x();
        Object obj2 = Composer.Companion.f7939a;
        if (zY || objX == obj2) {
            objX = new SnapshotStateKt__SnapshotFlowKt$collectAsState$1$1(coroutineContext, flow, null);
            composer.q(objX);
        }
        Function2 function2 = (Function2) objX;
        Object objX2 = composer.x();
        if (objX2 == obj2) {
            objX2 = g(obj);
            composer.q(objX2);
        }
        MutableState mutableState = (MutableState) objX2;
        boolean zY2 = composer.y(function2);
        Object objX3 = composer.x();
        if (zY2 || objX3 == obj2) {
            objX3 = new SnapshotStateKt__ProduceStateKt$produceState$3$1(function2, mutableState, null);
            composer.q(objX3);
        }
        EffectsKt.g(flow, coroutineContext, (Function2) objX3, composer);
        return mutableState;
    }

    public static final MutableState b(StateFlow stateFlow, Composer composer) {
        EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.f71840b;
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        return a(stateFlow, stateFlow.getValue(), emptyCoroutineContext, composer, 0, 0);
    }

    public static final MutableVector c() {
        SnapshotThreadLocal snapshotThreadLocal = SnapshotStateKt__DerivedStateKt.f8136b;
        MutableVector mutableVector = (MutableVector) snapshotThreadLocal.a();
        if (mutableVector != null) {
            return mutableVector;
        }
        MutableVector mutableVector2 = new MutableVector(new DerivedStateObserver[0], 0);
        snapshotThreadLocal.b(mutableVector2);
        return mutableVector2;
    }

    public static final State d(SnapshotMutationPolicy snapshotMutationPolicy, Function0 function0) {
        SnapshotThreadLocal snapshotThreadLocal = SnapshotStateKt__DerivedStateKt.f8135a;
        return new DerivedSnapshotState(function0, snapshotMutationPolicy);
    }

    public static final State e(Function0 function0) {
        SnapshotThreadLocal snapshotThreadLocal = SnapshotStateKt__DerivedStateKt.f8135a;
        return new DerivedSnapshotState(function0, null);
    }

    public static final MutableState f(Object obj, SnapshotMutationPolicy snapshotMutationPolicy) {
        return new ParcelableSnapshotMutableState(obj, snapshotMutationPolicy);
    }

    public static MutableState g(Object obj) {
        return new ParcelableSnapshotMutableState(obj, StructuralEqualityPolicy.f8158a);
    }

    public static final SnapshotMutationPolicy h() {
        return NeverEqualPolicy.f8041a;
    }

    public static final MutableState i(Composer composer, Object obj, Function2 function2) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        Object objX = composer.x();
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        if (objX == composer$Companion$Empty$1) {
            objX = g(obj);
            composer.q(objX);
        }
        MutableState mutableState = (MutableState) objX;
        Unit unit = Unit.f71739a;
        boolean zY = composer.y(function2);
        Object objX2 = composer.x();
        if (zY || objX2 == composer$Companion$Empty$1) {
            objX2 = new SnapshotStateKt__ProduceStateKt$produceState$1$1(function2, mutableState, null);
            composer.q(objX2);
        }
        EffectsKt.e(composer, unit, (Function2) objX2);
        return mutableState;
    }

    public static final MutableState j(Object obj, Object[] objArr, Function2 function2, Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        Object objX = composer.x();
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        if (objX == composer$Companion$Empty$1) {
            objX = g(obj);
            composer.q(objX);
        }
        MutableState mutableState = (MutableState) objX;
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
        boolean zY = composer.y(function2);
        Object objX2 = composer.x();
        if (zY || objX2 == composer$Companion$Empty$1) {
            objX2 = new SnapshotStateKt__ProduceStateKt$produceState$5$1(function2, mutableState, null);
            composer.q(objX2);
        }
        EffectsKt.h(objArrCopyOf, (Function2) objX2, composer);
        return mutableState;
    }

    public static final SnapshotMutationPolicy k() {
        return ReferentialEqualityPolicy.f8110a;
    }

    public static final MutableState l(Object obj, Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        Object objX = composer.x();
        if (objX == Composer.Companion.f7939a) {
            objX = g(obj);
            composer.q(objX);
        }
        MutableState mutableState = (MutableState) objX;
        mutableState.setValue(obj);
        return mutableState;
    }

    public static final Flow m(Function0 function0) {
        return FlowKt.t(new SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1(function0, null));
    }

    public static final SnapshotMutationPolicy n() {
        return StructuralEqualityPolicy.f8158a;
    }
}
