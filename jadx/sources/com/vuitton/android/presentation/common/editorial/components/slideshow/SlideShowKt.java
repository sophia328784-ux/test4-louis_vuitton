package com.vuitton.android.presentation.common.editorial.components.slideshow;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$SpaceBetween$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.pager.PagerStateKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
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
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.molecules.LVCapsulePageControlKt;
import com.vuitton.android.presentation.common.editorial.components.slideshow.SlideShowKt;
import com.vuitton.android.presentation.compose.components.AccessibilityPagerButtonsKt;
import com.vuitton.android.presentation.extensions.ModifierExtKt;
import defpackage.a;
import defpackage.av0;
import defpackage.cj;
import defpackage.d21;
import defpackage.db;
import defpackage.n00;
import defpackage.v40;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class SlideShowKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f50779a;

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
            f50779a = iArr;
        }
    }

    public static final void a(Modifier modifier, final String str, final List list, final LVColorScheme lVColorScheme, final boolean z, final boolean z2, final boolean z3, final Function1 function1, final Function1 function2, Composer composer, final int i2) {
        int i3;
        float f2;
        long j2;
        boolean z4;
        LVColorScheme lVColorScheme2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "SlideShow");
        }
        final Modifier modifier2 = modifierE;
        str.getClass();
        list.getClass();
        lVColorScheme.getClass();
        function1.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(1762922519);
        Applier applier = gapComposerH.f7976a;
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(str) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(list) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.d(lVColorScheme.ordinal()) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.b(z) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.b(z2) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i3 |= gapComposerH.b(z3) ? 1048576 : 524288;
        }
        if ((12582912 & i2) == 0) {
            i3 |= gapComposerH.y(function1) ? 8388608 : 4194304;
        }
        if ((100663296 & i2) == 0) {
            i3 |= gapComposerH.y(function2) ? 67108864 : 33554432;
        }
        if (gapComposerH.p(i3 & 1, (38347923 & i3) != 38347922)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean zY = gapComposerH.y(list);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zY || objX == composer$Companion$Empty$1) {
                objX = new db(list, 16);
                gapComposerH.q(objX);
            }
            PagerState pagerStateB = PagerStateKt.b(0, (Function0) objX, gapComposerH, 0, 3);
            boolean zK = gapComposerH.K(pagerStateB) | ((234881024 & i3) == 67108864);
            Object objX2 = gapComposerH.x();
            if (zK || objX2 == composer$Companion$Empty$1) {
                objX2 = new SlideShowKt$SlideShow$1$1(pagerStateB, function2, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, pagerStateB, (Function2) objX2);
            Modifier modifierO = modifier2.o(SizeKt.f5052c);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            int i4 = i3;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierO);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Function2 function3 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function3);
            Function2 function4 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function4);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function5 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function5);
            Function1 function6 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function6);
            Function2 function7 = ComposeUiNode.Companion.d;
            Modifier modifierK = PaddingKt.k(n00.e(gapComposerH, modifierC, function7, "SlideShow", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            if (z3) {
                gapComposerH.L(2054012011);
                f2 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(2054103244);
                f2 = LVAppDesignKitTheme.l(gapComposerH).f48415c;
                gapComposerH.Z(false);
            }
            Modifier modifierM = PaddingKt.m(modifierK, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, 7);
            Arrangement$SpaceBetween$1 arrangement$SpaceBetween$1 = Arrangement.g;
            BiasAlignment.Vertical vertical = Alignment.Companion.m;
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$SpaceBetween$1, vertical, gapComposerH, 54);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierM);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, function3);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function4);
            cj.t(iHashCode2, gapComposerH, function5, gapComposerH, function6);
            Updater.c(gapComposerH, modifierC2, function7);
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48426f;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("SlideShow");
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = new av0(24);
                gapComposerH.q(objX3);
            }
            Modifier modifierB = SemanticsModifierKt.b(dTFunctionNameModifier, false, (Function1) objX3);
            TextOverflow.f10989a.getClass();
            int i5 = TextOverflow.f10991c;
            int[] iArr = WhenMappings.f50779a;
            int i6 = iArr[lVColorScheme.ordinal()];
            if (i6 == 1) {
                gapComposerH.L(1857993809);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
                gapComposerH.Z(false);
            } else {
                if (i6 != 2) {
                    throw d21.u(gapComposerH, 1857990942, false);
                }
                gapComposerH.L(1857996907);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                gapComposerH.Z(false);
            }
            int i7 = i4 >> 3;
            TextKt.c(str, modifierB, j2, 0L, null, 0L, null, null, 0L, i5, false, 2, 0, null, textStyle, gapComposerH, i7 & 14, 24960, 110584);
            gapComposerH.Z(true);
            BiasAlignment.Horizontal horizontal = Alignment.Companion.o;
            DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("SlideShow");
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 48);
            int iHashCode3 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier2);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA2, function3);
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function4);
            cj.t(iHashCode3, gapComposerH, function5, gapComposerH, function6);
            Updater.c(gapComposerH, modifierC3, function7);
            SlideShowCardKt.a(list, pagerStateB, z, z2, function1, gapComposerH, ((i4 >> 6) & 8078) | ((i4 >> 9) & 57344));
            if (list.size() > 1) {
                Modifier modifierD = SizeKt.d(PaddingKt.m(n00.i(gapComposerH, 540766416, "SlideShow"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f);
                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                int iHashCode4 = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU4 = gapComposerH.U();
                Modifier modifierC4 = ComposedModifierKt.c(gapComposerH, modifierD);
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, measurePolicyD, function3);
                Updater.c(gapComposerH, persistentCompositionLocalMapU4, function4);
                cj.t(iHashCode4, gapComposerH, function5, gapComposerH, function6);
                Updater.c(gapComposerH, modifierC4, function7);
                DTFunctionNameModifier dTFunctionNameModifier3 = new DTFunctionNameModifier("SlideShow");
                BiasAlignment biasAlignment = Alignment.Companion.f8585c;
                BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                z4 = true;
                LVCapsulePageControlKt.a(ModifierExtKt.a(boxScopeInstance.g(dTFunctionNameModifier3, biasAlignment), null, null, 7), pagerStateB, lVColorScheme, false, gapComposerH, i7 & 896, 8);
                if (z3) {
                    Modifier modifierK2 = PaddingKt.k(boxScopeInstance.g(n00.i(gapComposerH, 425869494, "SlideShow"), Alignment.Companion.d), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                    int i8 = iArr[lVColorScheme.ordinal()];
                    if (i8 == 1) {
                        lVColorScheme2 = LVColorScheme.DEFAULT;
                    } else {
                        if (i8 != 2) {
                            v40.g();
                            return;
                        }
                        lVColorScheme2 = LVColorScheme.INVERT;
                    }
                    AccessibilityPagerButtonsKt.b(modifierK2, pagerStateB, lVColorScheme2, Arrangement.f4919b, vertical, Call.Parameters.DEFAULT_CAMERA_ZOOM, gapComposerH, 27648, 32);
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(426578712);
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(true);
                gapComposerH.Z(false);
            } else {
                z4 = true;
                gapComposerH.L(542064727);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(z4);
            gapComposerH.Z(z4);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: lz0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    SlideShowKt.a(modifier2, str, list, lVColorScheme, z, z2, z3, function1, function2, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1));
                    return Unit.f71739a;
                }
            };
        }
    }
}
