package androidx.compose.runtime;

import defpackage.os;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002Bl\b\u0000\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00018\u0000\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\b\u0012\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\n\u0012\u0019\u0010\u000f\u001a\u0015\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00028\u0000\u0018\u00010\f¢\u0006\u0002\b\u000e\u0012\u0006\u0010\u0010\u001a\u00020\u0006¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Landroidx/compose/runtime/ProvidedValue;", "T", "", "Landroidx/compose/runtime/CompositionLocal;", "compositionLocal", "value", "", "explicitNull", "Landroidx/compose/runtime/SnapshotMutationPolicy;", "mutationPolicy", "Landroidx/compose/runtime/MutableState;", "state", "Lkotlin/Function1;", "Landroidx/compose/runtime/CompositionLocalAccessorScope;", "Lkotlin/ExtensionFunctionType;", "compute", "isDynamic", "<init>", "(Landroidx/compose/runtime/CompositionLocal;Ljava/lang/Object;ZLandroidx/compose/runtime/SnapshotMutationPolicy;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Z)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ProvidedValue<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CompositionLocal f8069a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f8070b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SnapshotMutationPolicy f8071c;
    public final MutableState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Function1 f8072e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f8073f;
    public final Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f8074h = true;

    public ProvidedValue(CompositionLocal<T> compositionLocal, T t, boolean z, SnapshotMutationPolicy<T> snapshotMutationPolicy, MutableState<T> mutableState, Function1<? super CompositionLocalAccessorScope, ? extends T> function1, boolean z2) {
        this.f8069a = compositionLocal;
        this.f8070b = z;
        this.f8071c = snapshotMutationPolicy;
        this.d = mutableState;
        this.f8072e = function1;
        this.f8073f = z2;
        this.g = t;
    }

    public final Object a() {
        if (this.f8070b) {
            return null;
        }
        MutableState mutableState = this.d;
        if (mutableState != null) {
            return mutableState.getF10755b();
        }
        Object obj = this.g;
        if (obj != null) {
            return obj;
        }
        ComposerKt.b("Unexpected form of a provided value");
        os.d();
        return null;
    }
}
