package androidx.compose.runtime;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B \u0012\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002¢\u0006\u0002\b\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/runtime/DisposableEffectImpl;", "Landroidx/compose/runtime/RememberObserver;", "Lkotlin/Function1;", "Landroidx/compose/runtime/DisposableEffectScope;", "Landroidx/compose/runtime/DisposableEffectResult;", "Lkotlin/ExtensionFunctionType;", "effect", "<init>", "(Lkotlin/jvm/functions/Function1;)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class DisposableEffectImpl implements RememberObserver {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function1 f7971b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public DisposableEffectResult f7972c;

    public DisposableEffectImpl(Function1<? super DisposableEffectScope, ? extends DisposableEffectResult> function1) {
        this.f7971b = function1;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void d() {
        this.f7972c = (DisposableEffectResult) this.f7971b.invoke(EffectsKt.f7975a);
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void f() {
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void i() {
        DisposableEffectResult disposableEffectResult = this.f7972c;
        if (disposableEffectResult != null) {
            disposableEffectResult.dispose();
        }
        this.f7972c = null;
    }
}
