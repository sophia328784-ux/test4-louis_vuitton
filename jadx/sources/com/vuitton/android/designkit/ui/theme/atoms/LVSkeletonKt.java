package com.vuitton.android.designkit.ui.theme.atoms;

import androidx.compose.animation.TransitionKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.animation.core.InfiniteTransitionKt;
import androidx.compose.animation.core.RepeatMode;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.draw.DrawModifierKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationSkeleton;
import defpackage.c70;
import defpackage.d21;
import defpackage.m70;
import defpackage.n70;
import defpackage.o70;
import defpackage.ya;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Landroidx/compose/ui/graphics/Color;", "colour", "system"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVSkeletonKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final StaticProvidableCompositionLocal f48504a = new StaticProvidableCompositionLocal(new c70(6));

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f48505a;

        static {
            int[] iArr = new int[LVColorScheme.values().length];
            try {
                iArr[LVColorScheme.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LVColorScheme.INVERT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f48505a = iArr;
        }
    }

    public static final void a(Modifier modifier, LVColorScheme lVColorScheme, InfiniteTransition infiniteTransition, Composer composer, int i2) {
        int i3;
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "LVSkeletonBody");
        }
        Modifier modifier2 = modifier;
        GapComposer gapComposerH = composer.h(1251888326);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        int i4 = i3 | 176;
        if (gapComposerH.p(i4 & 1, (i4 & 147) != 146)) {
            gapComposerH.y0();
            if ((i2 & 1) == 0 || gapComposerH.h0()) {
                lVColorScheme = LVColorScheme.DEFAULT;
                infiniteTransition = InfiniteTransitionKt.c(0, gapComposerH, "");
            } else {
                gapComposerH.D();
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            d(SizeKt.f(ClipKt.a(modifier2, LVAppDesignKitTheme.j(gapComposerH).f48409a), LVAppDesignKitTheme.d(gapComposerH).f48388h), lVColorScheme, infiniteTransition, gapComposerH, 560);
        } else {
            gapComposerH.D();
        }
        LVColorScheme lVColorScheme2 = lVColorScheme;
        InfiniteTransition infiniteTransition2 = infiniteTransition;
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new m70(modifier2, lVColorScheme2, infiniteTransition2, i2, 0);
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0032  */
    public static final void b(Modifier modifier, LVColorScheme lVColorScheme, InfiniteTransition infiniteTransition, Composer composer, int i2, int i3) {
        int i4;
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "LVSkeletonContent");
        }
        Modifier modifier2 = modifier;
        GapComposer gapComposerH = composer.h(-110612423);
        int i5 = (gapComposerH.K(modifier2) ? 4 : 2) | i2 | 48;
        if ((i3 & 4) != 0) {
            i4 = 128;
        } else {
            if ((i2 & 512) == 0 ? gapComposerH.K(infiniteTransition) : gapComposerH.y(infiniteTransition)) {
                i4 = 256;
            } else {
                i4 = 128;
            }
        }
        int i6 = i5 | i4;
        if (gapComposerH.p(i6 & 1, (i6 & 147) != 146)) {
            gapComposerH.y0();
            if ((i2 & 1) == 0 || gapComposerH.h0()) {
                lVColorScheme = LVColorScheme.DEFAULT;
                if ((i3 & 4) != 0) {
                    infiniteTransition = InfiniteTransitionKt.c(0, gapComposerH, "");
                    i6 &= -897;
                }
            } else {
                gapComposerH.D();
                if ((i3 & 4) != 0) {
                    i6 &= -897;
                }
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            d(modifier2, lVColorScheme, infiniteTransition, gapComposerH, (i6 & 896) | (i6 & 126) | 512);
        } else {
            gapComposerH.D();
        }
        LVColorScheme lVColorScheme2 = lVColorScheme;
        InfiniteTransition infiniteTransition2 = infiniteTransition;
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new n70(modifier2, lVColorScheme2, infiniteTransition2, i2, i3, 1);
        }
    }

    public static final void c(Modifier modifier, float f2, LVColorScheme lVColorScheme, InfiniteTransition infiniteTransition, Composer composer, int i2, int i3) {
        int i4;
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "LVSkeletonImage");
        }
        GapComposer gapComposerH = composer.h(1768073255);
        int i5 = i3 & 1;
        if (i5 != 0) {
            i4 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(modifier) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        int i6 = i3 & 2;
        if (i6 != 0) {
            i4 |= 48;
        } else if ((i2 & 48) == 0) {
            i4 |= gapComposerH.c(f2) ? 32 : 16;
        }
        int i7 = i4 | 1408;
        if (gapComposerH.p(i7 & 1, (i7 & 1171) != 1170)) {
            gapComposerH.y0();
            if ((i2 & 1) == 0 || gapComposerH.h0()) {
                if (i5 != 0) {
                    modifier = new DTFunctionNameModifier("LVSkeletonImage");
                }
                if (i6 != 0) {
                    f2 = 1.0f;
                }
                lVColorScheme = LVColorScheme.DEFAULT;
                infiniteTransition = InfiniteTransitionKt.c(0, gapComposerH, "");
            } else {
                gapComposerH.D();
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            d(AspectRatioKt.a(ClipKt.a(modifier, LVAppDesignKitTheme.j(gapComposerH).f48410b), f2, false), lVColorScheme, infiniteTransition, gapComposerH, 560);
        } else {
            gapComposerH.D();
        }
        Modifier modifier2 = modifier;
        float f3 = f2;
        LVColorScheme lVColorScheme2 = lVColorScheme;
        InfiniteTransition infiniteTransition2 = infiniteTransition;
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new o70(modifier2, f3, lVColorScheme2, infiniteTransition2, i2, i3);
        }
    }

    public static final void d(Modifier modifier, LVColorScheme lVColorScheme, InfiniteTransition infiniteTransition, Composer composer, int i2) {
        int i3;
        ConfigurationSkeleton configurationSkeleton;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LVSkeletonInternal");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(780937803);
        int i4 = 4;
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.d(lVColorScheme == null ? -1 : lVColorScheme.ordinal()) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= (i2 & 512) == 0 ? gapComposerH.K(infiniteTransition) : gapComposerH.y(infiniteTransition) ? 256 : 128;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            int i5 = WhenMappings.f48505a[lVColorScheme.ordinal()];
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = f48504a;
            if (i5 == 1) {
                gapComposerH.L(-1138039726);
                configurationSkeleton = ((LVSkeleton) gapComposerH.k(staticProvidableCompositionLocal)).f48502a;
                gapComposerH.Z(false);
            } else {
                if (i5 != 2) {
                    throw d21.u(gapComposerH, -1138042225, false);
                }
                gapComposerH.L(-1138037519);
                configurationSkeleton = ((LVSkeleton) gapComposerH.k(staticProvidableCompositionLocal)).f48503b;
                gapComposerH.Z(false);
            }
            InfiniteTransition.TransitionAnimationState transitionAnimationStateA = TransitionKt.a(infiniteTransition, configurationSkeleton.f48579a, configurationSkeleton.f48580b, AnimationSpecKt.a(new TweenSpec(configurationSkeleton.d, configurationSkeleton.f48581c, configurationSkeleton.f48582e), RepeatMode.Reverse, 0L, 4), gapComposerH, (((((i3 >> 3) & 112) | 64) >> 3) & 14) | 28680);
            boolean zK = gapComposerH.K(transitionAnimationStateA);
            Object objX = gapComposerH.x();
            if (zK || objX == Composer.Companion.f7939a) {
                objX = new ya(transitionAnimationStateA, i4);
                gapComposerH.q(objX);
            }
            BoxKt.a(DrawModifierKt.b(modifier2, (Function1) objX), gapComposerH, 0);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new m70(modifier2, lVColorScheme, infiniteTransition, i2, 1);
        }
    }

    public static final void e(Modifier modifier, LVColorScheme lVColorScheme, InfiniteTransition infiniteTransition, Composer composer, int i2, int i3) {
        int i4;
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "LVSkeletonTitle");
        }
        GapComposer gapComposerH = composer.h(-1678177990);
        int i5 = i3 & 1;
        if (i5 != 0) {
            i4 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(modifier) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        int i6 = i4 | 176;
        if (gapComposerH.p(i6 & 1, (i6 & 147) != 146)) {
            gapComposerH.y0();
            if ((i2 & 1) == 0 || gapComposerH.h0()) {
                if (i5 != 0) {
                    modifier = new DTFunctionNameModifier("LVSkeletonTitle");
                }
                lVColorScheme = LVColorScheme.DEFAULT;
                infiniteTransition = InfiniteTransitionKt.c(0, gapComposerH, "");
            } else {
                gapComposerH.D();
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            d(SizeKt.f(ClipKt.a(modifier, LVAppDesignKitTheme.j(gapComposerH).f48410b), LVAppDesignKitTheme.d(gapComposerH).m), lVColorScheme, infiniteTransition, gapComposerH, 560);
        } else {
            gapComposerH.D();
        }
        Modifier modifier2 = modifier;
        LVColorScheme lVColorScheme2 = lVColorScheme;
        InfiniteTransition infiniteTransition2 = infiniteTransition;
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new n70(modifier2, lVColorScheme2, infiniteTransition2, i2, i3, 0);
        }
    }
}
