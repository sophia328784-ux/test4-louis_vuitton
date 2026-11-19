package com.vuitton.android.presentation.compose.animation;

import androidx.compose.animation.AnimatedContentTransitionScope;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.EnterTransition;
import androidx.compose.animation.core.AnimationSpecKt;
import defpackage.iv;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class EnterTransitionKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final EnterTransition f50932a = EnterExitTransitionKt.q(new iv(12), AnimationSpecKt.c(400, 200, null, 4)).b(EnterExitTransitionKt.f(AnimationSpecKt.c(400, 200, null, 4), Call.Parameters.DEFAULT_CAMERA_ZOOM, 2));

    public static EnterTransition a(AnimatedContentTransitionScope animatedContentTransitionScope, int i2, int i3) {
        if ((i3 & 2) != 0) {
            AnimatedContentTransitionScope.SlideDirection.f3451a.getClass();
            i2 = 0;
        }
        animatedContentTransitionScope.getClass();
        return AnimatedContentTransitionScope.f(animatedContentTransitionScope, i2, AnimationSpecKt.c(300, 0, null, 6));
    }

    public static EnterTransition b(AnimatedContentTransitionScope animatedContentTransitionScope, int i2, int i3) {
        if ((i3 & 2) != 0) {
            AnimatedContentTransitionScope.SlideDirection.f3451a.getClass();
            i2 = AnimatedContentTransitionScope.SlideDirection.f3452b;
        }
        animatedContentTransitionScope.getClass();
        return AnimatedContentTransitionScope.f(animatedContentTransitionScope, i2, AnimationSpecKt.c(300, 0, null, 6));
    }
}
