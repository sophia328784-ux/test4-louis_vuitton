package androidx.compose.runtime;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b'\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u0017\b\u0000\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/runtime/ProvidableCompositionLocal;", "T", "Landroidx/compose/runtime/CompositionLocal;", "Lkotlin/Function0;", "defaultFactory", "<init>", "(Lkotlin/jvm/functions/Function0;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class ProvidableCompositionLocal<T> extends CompositionLocal<T> {
    public ProvidableCompositionLocal(Function0<? extends T> function0) {
        super(function0, null);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0034 A[PHI: r4
      0x0034: PHI (r4v2 androidx.compose.runtime.ValueHolder) = (r4v9 androidx.compose.runtime.ValueHolder), (r4v10 androidx.compose.runtime.ValueHolder) binds: [B:21:0x0040, B:16:0x0032] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.compose.runtime.CompositionLocal
    public final ValueHolder b(ProvidedValue providedValue, ValueHolder valueHolder) {
        ComputedValueHolder computedValueHolder;
        ValueHolder valueHolder2;
        StaticValueHolder staticValueHolder;
        DynamicValueHolder dynamicValueHolder;
        ValueHolder valueHolder3 = null;
        valueHolder3 = null;
        valueHolder3 = null;
        valueHolder3 = null;
        valueHolder3 = null;
        valueHolder3 = null;
        if (valueHolder instanceof DynamicValueHolder) {
            if (providedValue.f8073f) {
                dynamicValueHolder = (DynamicValueHolder) valueHolder;
                dynamicValueHolder.f7974a.setValue(providedValue.a());
            }
        } else if (valueHolder instanceof StaticValueHolder) {
            if ((providedValue.f8070b || providedValue.g != null) && !providedValue.f8073f) {
                staticValueHolder = (StaticValueHolder) valueHolder;
                if (Intrinsics.c(providedValue.a(), staticValueHolder.f8157a)) {
                    valueHolder2 = computedValueHolder;
                    valueHolder2 = staticValueHolder;
                    valueHolder3 = valueHolder2;
                }
            }
        } else if (valueHolder instanceof ComputedValueHolder) {
            computedValueHolder = (ComputedValueHolder) valueHolder;
            if (providedValue.f8072e == computedValueHolder.f7963a) {
                valueHolder2 = computedValueHolder;
                valueHolder2 = staticValueHolder;
                valueHolder3 = valueHolder2;
            }
        }
        if (valueHolder3 != null) {
            valueHolder3 = dynamicValueHolder;
            return valueHolder3;
        }
        boolean z = providedValue.f8073f;
        MutableState parcelableSnapshotMutableState = providedValue.d;
        if (!z) {
            Function1 function1 = providedValue.f8072e;
            if (function1 == null) {
                return parcelableSnapshotMutableState != null ? new DynamicValueHolder(parcelableSnapshotMutableState) : new StaticValueHolder(providedValue.a());
            }
            valueHolder3 = dynamicValueHolder;
            return new ComputedValueHolder(function1);
        }
        if (parcelableSnapshotMutableState == null) {
            Object obj = providedValue.g;
            SnapshotMutationPolicy snapshotMutationPolicy = providedValue.f8071c;
            if (snapshotMutationPolicy == null) {
                valueHolder3 = dynamicValueHolder;
                snapshotMutationPolicy = StructuralEqualityPolicy.f8158a;
            }
            valueHolder3 = dynamicValueHolder;
            parcelableSnapshotMutableState = new ParcelableSnapshotMutableState(obj, snapshotMutationPolicy);
        }
        valueHolder3 = dynamicValueHolder;
        return new DynamicValueHolder(parcelableSnapshotMutableState);
    }

    public abstract ProvidedValue c(Object obj);
}
