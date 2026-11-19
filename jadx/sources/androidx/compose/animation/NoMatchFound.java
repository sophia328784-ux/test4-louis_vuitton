package androidx.compose.animation;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÁ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/animation/NoMatchFound;", "Landroidx/compose/animation/SharedTransitionStateMachine$State;", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class NoMatchFound extends SharedTransitionStateMachine.State {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final NoMatchFound f3641a = new NoMatchFound(null);

    @Override // androidx.compose.animation.SharedTransitionStateMachine.State
    public final SharedTransitionStateMachine.State g(BoundsProvider boundsProvider) {
        return new ActiveMatchFoundConfigPending(boundsProvider, null, null, 6, null);
    }

    @Override // androidx.compose.animation.SharedTransitionStateMachine.State
    public final SharedTransitionStateMachine.State h() {
        return this;
    }
}
