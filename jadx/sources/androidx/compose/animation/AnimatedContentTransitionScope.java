package androidx.compose.animation;

import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TweenSpec;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bv\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002:\u0001\u0003\u0082\u0001\u0001\u0004ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0005À\u0006\u0001"}, d2 = {"Landroidx/compose/animation/AnimatedContentTransitionScope;", "S", "Landroidx/compose/animation/core/Transition$Segment;", "SlideDirection", "Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface AnimatedContentTransitionScope<S> extends Transition.Segment<S> {

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/animation/AnimatedContentTransitionScope$SlideDirection;", "", "Companion", "value", "", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @JvmInline
    public static final class SlideDirection {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Companion f3451a = new Companion(null);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final int f3452b = 1;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final int f3453c = 2;
        public static final int d = 3;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final int f3454e = 4;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final int f3455f = 5;

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/animation/AnimatedContentTransitionScope$SlideDirection$Companion;", "", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }
        }
    }

    static ExitTransition a(AnimatedContentTransitionScope animatedContentTransitionScope, int i2, TweenSpec tweenSpec) {
        return animatedContentTransitionScope.b(i2, tweenSpec, AnimatedContentTransitionScope$slideOutOfContainer$1.f3457c);
    }

    static EnterTransition f(AnimatedContentTransitionScope animatedContentTransitionScope, int i2, TweenSpec tweenSpec) {
        return animatedContentTransitionScope.c(i2, tweenSpec, AnimatedContentTransitionScope$slideIntoContainer$1.f3456c);
    }

    ExitTransition b(int i2, TweenSpec tweenSpec, Function1 function1);

    EnterTransition c(int i2, TweenSpec tweenSpec, Function1 function1);

    ContentTransform d(ContentTransform contentTransform, SizeTransform sizeTransform);
}
