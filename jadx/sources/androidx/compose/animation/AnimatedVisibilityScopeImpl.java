package androidx.compose.animation;

import androidx.compose.animation.core.Transition;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.unit.IntSize;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u0017\b\u0000\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/animation/AnimatedVisibilityScopeImpl;", "Landroidx/compose/animation/AnimatedVisibilityScope;", "Landroidx/compose/animation/core/Transition;", "Landroidx/compose/animation/EnterExitState;", "transition", "<init>", "(Landroidx/compose/animation/core/Transition;)V", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AnimatedVisibilityScopeImpl implements AnimatedVisibilityScope {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Transition f3532a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableState f3533b;

    public AnimatedVisibilityScopeImpl(Transition<EnterExitState> transition) {
        this.f3532a = transition;
        IntSize.f11020b.getClass();
        this.f3533b = SnapshotStateKt.g(new IntSize(0L));
    }

    @Override // androidx.compose.animation.AnimatedVisibilityScope
    /* JADX INFO: renamed from: a, reason: from getter */
    public final Transition getF3532a() {
        return this.f3532a;
    }
}
