package androidx.compose.animation;

import androidx.compose.animation.core.AnimationSpecKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Landroidx/compose/animation/ContentTransform;", "S", "Landroidx/compose/animation/AnimatedContentTransitionScope;", "invoke"}, k = 3, mv = {2, 1, 0}, xi = 48)
final class AnimatedContentKt$AnimatedContent$1$1 extends Lambda implements Function1<AnimatedContentTransitionScope<Object>, ContentTransform> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final AnimatedContentKt$AnimatedContent$1$1 f3415c = new AnimatedContentKt$AnimatedContent$1$1(1);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return AnimatedContentKt.e(EnterExitTransitionKt.f(AnimationSpecKt.c(220, 90, null, 4), Call.Parameters.DEFAULT_CAMERA_ZOOM, 2).b(EnterExitTransitionKt.i(AnimationSpecKt.c(220, 90, null, 4), 0.92f, 4)), EnterExitTransitionKt.h(AnimationSpecKt.c(90, 0, null, 6), 2));
    }
}
