package com.vuitton.android.presentation.screen.filter.quickaccess.components;

import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.EnterTransition;
import androidx.compose.animation.ExitTransition;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.Dp;
import defpackage.h3;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "isGradientVisible", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ActiveFiltersBackGradientKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f58048a;

    static {
        Dp.Companion companion = Dp.f11004c;
        f58048a = 80.0f;
    }

    public static final void a(int i2, Composer composer, Modifier modifier, boolean z) {
        int i3;
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "ActiveFiltersBackGradient");
        }
        Modifier modifier2 = modifier;
        GapComposer gapComposerH = composer.h(1453423543);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.b(z) ? 32 : 16;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) objX;
            Boolean boolValueOf = Boolean.valueOf(z);
            boolean z2 = (i3 & 112) == 32;
            Object objX2 = gapComposerH.x();
            if (z2 || objX2 == composer$Companion$Empty$1) {
                objX2 = new ActiveFiltersBackGradientKt$ActiveFiltersBackGradient$1$1(z, mutableState, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, boolValueOf, (Function2) objX2);
            boolean zBooleanValue = ((Boolean) mutableState.getF10755b()).booleanValue();
            EnterTransition enterTransitionF = EnterExitTransitionKt.f(AnimationSpecKt.c(600, 300, null, 4), Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            ExitTransition exitTransitionH = EnterExitTransitionKt.h(AnimationSpecKt.c(600, 0, null, 6), 2);
            ComposableSingletons$ActiveFiltersBackGradientKt.f58067a.getClass();
            AnimatedVisibilityKt.e(zBooleanValue, modifier2, enterTransitionF, exitTransitionH, null, ComposableSingletons$ActiveFiltersBackGradientKt.f58068b, gapComposerH, ((i3 << 3) & 112) | 200064, 16);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new h3(modifier2, z, i2);
        }
    }
}
