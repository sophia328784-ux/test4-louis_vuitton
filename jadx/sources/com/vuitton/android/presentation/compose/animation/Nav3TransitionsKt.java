package com.vuitton.android.presentation.compose.animation;

import androidx.compose.animation.AnimatedContentKt;
import androidx.compose.animation.AnimatedContentTransitionScope;
import androidx.compose.animation.ContentTransform;
import androidx.compose.animation.core.AnimationSpecKt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class Nav3TransitionsKt {
    public static ContentTransform a(AnimatedContentTransitionScope animatedContentTransitionScope) {
        animatedContentTransitionScope.getClass();
        AnimatedContentTransitionScope.SlideDirection.f3451a.getClass();
        return AnimatedContentKt.e(AnimatedContentTransitionScope.f(animatedContentTransitionScope, 0, AnimationSpecKt.c(300, 0, null, 6)), AnimatedContentTransitionScope.a(animatedContentTransitionScope, 0, AnimationSpecKt.c(300, 0, null, 6)));
    }

    public static ContentTransform b(AnimatedContentTransitionScope animatedContentTransitionScope) {
        animatedContentTransitionScope.getClass();
        AnimatedContentTransitionScope.SlideDirection.f3451a.getClass();
        int i2 = AnimatedContentTransitionScope.SlideDirection.f3452b;
        return AnimatedContentKt.e(AnimatedContentTransitionScope.f(animatedContentTransitionScope, i2, AnimationSpecKt.c(300, 0, null, 6)), AnimatedContentTransitionScope.a(animatedContentTransitionScope, i2, AnimationSpecKt.c(300, 0, null, 6)));
    }
}
