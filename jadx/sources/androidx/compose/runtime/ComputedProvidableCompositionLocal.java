package androidx.compose.runtime;

import defpackage.oo;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B \u0012\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00028\u00000\u0003¢\u0006\u0002\b\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/runtime/ComputedProvidableCompositionLocal;", "T", "Landroidx/compose/runtime/ProvidableCompositionLocal;", "Lkotlin/Function1;", "Landroidx/compose/runtime/CompositionLocalAccessorScope;", "Lkotlin/ExtensionFunctionType;", "defaultComputation", "<init>", "(Lkotlin/jvm/functions/Function1;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ComputedProvidableCompositionLocal<T> extends ProvidableCompositionLocal<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ComputedValueHolder f7962b;

    public ComputedProvidableCompositionLocal(Function1<? super CompositionLocalAccessorScope, ? extends T> function1) {
        super(new oo(26));
        this.f7962b = new ComputedValueHolder(function1);
    }

    @Override // androidx.compose.runtime.CompositionLocal
    public final ValueHolder a() {
        return this.f7962b;
    }

    @Override // androidx.compose.runtime.ProvidableCompositionLocal
    public final ProvidedValue c(Object obj) {
        return new ProvidedValue(this, obj, obj == null, null, null, null, true);
    }
}
