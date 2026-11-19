package androidx.compose.runtime;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\b7\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002\u0082\u0001\u0001\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/runtime/CompositionLocal;", "T", "", "Landroidx/compose/runtime/ProvidableCompositionLocal;", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class CompositionLocal<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LazyValueHolder f7956a;

    public CompositionLocal(Function0 function0, DefaultConstructorMarker defaultConstructorMarker) {
        this.f7956a = new LazyValueHolder(function0);
    }

    public ValueHolder a() {
        return this.f7956a;
    }

    public abstract ValueHolder b(ProvidedValue providedValue, ValueHolder valueHolder);
}
