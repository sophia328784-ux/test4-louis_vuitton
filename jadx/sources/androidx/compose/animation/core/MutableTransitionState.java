package androidx.compose.animation.core;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00028\u0000¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/animation/core/MutableTransitionState;", "S", "Landroidx/compose/animation/core/TransitionState;", "initialState", "<init>", "(Ljava/lang/Object;)V", "animation-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MutableTransitionState<S> extends TransitionState<S> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableState f3906b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableState f3907c;

    public MutableTransitionState(S s) {
        super(null);
        this.f3906b = SnapshotStateKt.g(s);
        this.f3907c = SnapshotStateKt.g(s);
    }

    @Override // androidx.compose.animation.core.TransitionState
    public final Object a() {
        return ((SnapshotMutableStateImpl) this.f3906b).getF10755b();
    }

    @Override // androidx.compose.animation.core.TransitionState
    public final Object b() {
        return ((SnapshotMutableStateImpl) this.f3907c).getF10755b();
    }

    @Override // androidx.compose.animation.core.TransitionState
    public final void c(Object obj) {
        ((SnapshotMutableStateImpl) this.f3906b).setValue(obj);
    }

    @Override // androidx.compose.animation.core.TransitionState
    public final void d(Transition transition) {
    }

    @Override // androidx.compose.animation.core.TransitionState
    public final void e() {
    }

    public final boolean f() {
        return Intrinsics.c(((SnapshotMutableStateImpl) this.f3906b).getF10755b(), ((SnapshotMutableStateImpl) this.f3907c).getF10755b()) && !((Boolean) ((SnapshotMutableStateImpl) this.f4030a).getF10755b()).booleanValue();
    }

    public final void g(Boolean bool) {
        ((SnapshotMutableStateImpl) this.f3907c).setValue(bool);
    }
}
