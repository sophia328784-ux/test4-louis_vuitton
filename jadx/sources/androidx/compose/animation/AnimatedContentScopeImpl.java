package androidx.compose.animation;

import androidx.compose.animation.core.Transition;
import androidx.compose.ui.Modifier;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/animation/AnimatedContentScopeImpl;", "Landroidx/compose/animation/AnimatedContentScope;", "Landroidx/compose/animation/AnimatedVisibilityScope;", "animatedVisibilityScope", "<init>", "(Landroidx/compose/animation/AnimatedVisibilityScope;)V", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class AnimatedContentScopeImpl implements AnimatedContentScope, AnimatedVisibilityScope {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AnimatedVisibilityScope f3450a;

    public AnimatedContentScopeImpl(AnimatedVisibilityScope animatedVisibilityScope) {
        this.f3450a = animatedVisibilityScope;
    }

    @Override // androidx.compose.animation.AnimatedVisibilityScope
    /* JADX INFO: renamed from: a */
    public final Transition getF3532a() {
        return this.f3450a.getF3532a();
    }

    @Override // androidx.compose.animation.AnimatedVisibilityScope
    public final Modifier b(DTFunctionNameModifier dTFunctionNameModifier, EnterTransition enterTransition, ExitTransition exitTransition) {
        return this.f3450a.b(dTFunctionNameModifier, enterTransition, exitTransition);
    }
}
