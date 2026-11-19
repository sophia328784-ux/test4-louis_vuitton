package com.vuitton.android.presentation.compose.components;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.presentation.compose.components.AccessibilityPagerButtonsKt;
import defpackage.d21;
import defpackage.g2;
import defpackage.h2;
import defpackage.t;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AccessibilityPagerButtonsKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f50938a;

        static {
            int[] iArr = new int[LVColorScheme.values().length];
            try {
                iArr[LVColorScheme.INVERT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LVColorScheme.DEFAULT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f50938a = iArr;
        }
    }

    public static final void a(Modifier modifier, int i2, LVColorScheme lVColorScheme, boolean z, String str, Function0 function0, Composer composer, int i3, int i4) {
        int i5;
        LVColorScheme lVColorScheme2;
        long jB;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "AccessibilityArrowButton");
        }
        str.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-1085879509);
        int i6 = i4 & 1;
        if (i6 != 0) {
            i5 = i3 | 6;
        } else if ((i3 & 6) == 0) {
            i5 = (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2) | i3;
        } else {
            i5 = i3;
        }
        if ((i3 & 48) == 0) {
            i5 |= gapComposerH.d(i2) ? 32 : 16;
        }
        int i7 = i4 & 4;
        if (i7 != 0) {
            i5 |= KyberEngine.KyberPolyBytes;
        } else if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i5 |= gapComposerH.d(lVColorScheme == null ? -1 : lVColorScheme.ordinal()) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            i5 |= gapComposerH.b(z) ? 2048 : 1024;
        }
        if ((i3 & 24576) == 0) {
            i5 |= gapComposerH.K(str) ? 16384 : 8192;
        }
        if ((196608 & i3) == 0) {
            i5 |= gapComposerH.y(function0) ? 131072 : 65536;
        }
        if (gapComposerH.p(i5 & 1, (74899 & i5) != 74898)) {
            if (i6 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("AccessibilityArrowButton");
            }
            LVColorScheme lVColorScheme3 = i7 != 0 ? LVColorScheme.DEFAULT : lVColorScheme;
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierB = ModifierExtKt.b(dTFunctionNameModifier, !z, new t(3), gapComposerH, i5 & 14);
            int i8 = WhenMappings.f50938a[lVColorScheme3.ordinal()];
            if (i8 == 1) {
                gapComposerH.L(146862989);
                jB = Color.b(LVAppDesignKitTheme.h(gapComposerH).f48402b, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48378f);
                gapComposerH.Z(false);
            } else {
                if (i8 != 2) {
                    throw d21.u(gapComposerH, 146859481, false);
                }
                gapComposerH.L(146869197);
                jB = Color.b(LVAppDesignKitTheme.h(gapComposerH).f48402b, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a);
                gapComposerH.Z(false);
            }
            IconButtonKt.a(function0, SizeKt.o(BackgroundKt.b(modifierB, jB, RoundedCornerShapeKt.f5846a), LVAppDesignKitTheme.d(gapComposerH).q), z, null, null, ComposableLambdaKt.b(1664581833, new g2(i2, lVColorScheme3, str), gapComposerH), gapComposerH, ((i5 >> 15) & 14) | 1572864 | ((i5 >> 3) & 896), 56);
            lVColorScheme2 = lVColorScheme3;
        } else {
            gapComposerH.D();
            lVColorScheme2 = lVColorScheme;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new h2(dTFunctionNameModifier, i2, lVColorScheme2, z, str, function0, i3, i4);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void b(Modifier modifier, final PagerState pagerState, LVColorScheme lVColorScheme, final Arrangement.Horizontal horizontal, final Alignment.Vertical vertical, float f2, Composer composer, final int i2, final int i3) {
        int i4;
        final LVColorScheme lVColorScheme2;
        final float f3;
        int i5;
        LVColorScheme lVColorScheme3;
        float f4;
        final int i6;
        Object obj;
        boolean z;
        Object obj2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "AccessibilityPagerButtons-HYR8e34");
        }
        pagerState.getClass();
        vertical.getClass();
        GapComposer gapComposerH = composer.h(924381540);
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.K(pagerState) ? 32 : 16;
        }
        int i7 = i3 & 4;
        if (i7 != 0) {
            i4 |= KyberEngine.KyberPolyBytes;
        } else if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.d(lVColorScheme == null ? -1 : lVColorScheme.ordinal()) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i4 |= gapComposerH.K(horizontal) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i4 |= gapComposerH.K(vertical) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i4 |= 65536;
        }
        if (gapComposerH.p(i4 & 1, (74899 & i4) != 74898)) {
            gapComposerH.y0();
            if ((i2 & 1) == 0 || gapComposerH.h0()) {
                i5 = i4 & (-458753);
                lVColorScheme3 = i7 != 0 ? LVColorScheme.DEFAULT : lVColorScheme;
                f4 = LVAppDesignKitTheme.l(gapComposerH).f48415c;
            } else {
                gapComposerH.D();
                i5 = i4 & (-458753);
                lVColorScheme3 = lVColorScheme;
                f4 = f2;
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            Object obj3 = objX;
            if (objX == composer$Companion$Empty$1) {
                CoroutineScope coroutineScopeJ = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                gapComposerH.q(coroutineScopeJ);
                obj3 = coroutineScopeJ;
            }
            final CoroutineScope coroutineScope = (CoroutineScope) obj3;
            int i8 = i5 >> 6;
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(horizontal, vertical, gapComposerH, ((((i5 & 14) | (i8 & 112)) | (i8 & 896)) >> 3) & 126);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierE);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            float f5 = f4;
            Modifier modifierM = PaddingKt.m(tr.e(gapComposerH, modifierC, ComposeUiNode.Companion.d, "AccessibilityPagerButtons-HYR8e34"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, f5, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11);
            int i9 = LVAppDesignKitTheme.g(gapComposerH).H;
            boolean z2 = pagerState.k() > 0;
            String strC = StringResources_androidKt.c(gapComposerH, R.string.alt_previous);
            int i10 = i5 & 112;
            boolean zY = gapComposerH.y(coroutineScope) | (i10 == 32);
            Object objX2 = gapComposerH.x();
            if (zY || objX2 == composer$Companion$Empty$1) {
                i6 = 0;
                Function0 function1 = new Function0() { // from class: com.vuitton.android.presentation.compose.components.a
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        switch (i6) {
                            case 0:
                                BuildersKt.c(coroutineScope, null, null, new AccessibilityPagerButtonsKt$AccessibilityPagerButtons$1$1$1$1(pagerState, null), 3);
                                break;
                            default:
                                BuildersKt.c(coroutineScope, null, null, new AccessibilityPagerButtonsKt$AccessibilityPagerButtons$1$2$1$1(pagerState, null), 3);
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(function1);
                obj = function1;
            } else {
                i6 = 0;
                obj = objX2;
            }
            int i11 = i5 & 896;
            int i12 = i6;
            a(modifierM, i9, lVColorScheme3, z2, strC, (Function0) obj, gapComposerH, i11, 0);
            Modifier modifierM2 = PaddingKt.m(new DTFunctionNameModifier("AccessibilityPagerButtons-HYR8e34"), f5, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
            int i13 = LVAppDesignKitTheme.g(gapComposerH).I;
            boolean z3 = (pagerState.k() < 0 || pagerState.k() >= pagerState.o() + (-1)) ? i12 : 1;
            String strC2 = StringResources_androidKt.c(gapComposerH, R.string.alt_next);
            boolean zY2 = gapComposerH.y(coroutineScope);
            if (i10 == 32) {
                i12 = 1;
            }
            int i14 = (zY2 ? 1 : 0) | i12;
            Object objX3 = gapComposerH.x();
            if (i14 != 0 || objX3 == composer$Companion$Empty$1) {
                z = true;
                final int i15 = z ? 1 : 0;
                Function0 function2 = new Function0() { // from class: com.vuitton.android.presentation.compose.components.a
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        switch (i15) {
                            case 0:
                                BuildersKt.c(coroutineScope, null, null, new AccessibilityPagerButtonsKt$AccessibilityPagerButtons$1$1$1$1(pagerState, null), 3);
                                break;
                            default:
                                BuildersKt.c(coroutineScope, null, null, new AccessibilityPagerButtonsKt$AccessibilityPagerButtons$1$2$1$1(pagerState, null), 3);
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(function2);
                obj2 = function2;
            } else {
                z = true;
                obj2 = objX3;
            }
            a(modifierM2, i13, lVColorScheme3, z3, strC2, (Function0) obj2, gapComposerH, i11, 0);
            gapComposerH.Z(z);
            lVColorScheme2 = lVColorScheme3;
            f3 = f5;
        } else {
            gapComposerH.D();
            lVColorScheme2 = lVColorScheme;
            f3 = f2;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            final Modifier modifier2 = modifierE;
            recomposeScopeImplB0.d = new Function2() { // from class: i2
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj4, Object obj5) {
                    ((Integer) obj5).getClass();
                    AccessibilityPagerButtonsKt.b(modifier2, pagerState, lVColorScheme2, horizontal, vertical, f3, (Composer) obj4, RecomposeScopeImplKt.a(i2 | 1), i3);
                    return Unit.f71739a;
                }
            };
        }
    }
}
