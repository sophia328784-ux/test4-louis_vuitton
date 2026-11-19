package com.vuitton.android.designkit.ui.theme.molecules.topbar;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.layout.WindowInsetsPaddingKt;
import androidx.compose.material3.RippleConfiguration;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.TopAppBarDefaults;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.RippleKt;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVHeaderTopBarKt;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.TopBarActionScopeInstance;
import defpackage.c60;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u0007\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"", "stateAnimationFraction", "system"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVHeaderTopBarKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f48745a;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f48746a;

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
            f48746a = iArr;
        }
    }

    static {
        Dp.Companion companion = Dp.f11004c;
        f48745a = 64.0f;
    }

    public static final void a(Modifier modifier, final String str, final Function4 function4, WindowInsets windowInsets, LVColorScheme lVColorScheme, float f2, float f3, Composer composer, int i2, int i3) {
        int i4;
        WindowInsets windowInsets2;
        LVColorScheme lVColorScheme2;
        float f4;
        float f5;
        final Modifier modifier2;
        float f6;
        final WindowInsets windowInsets3;
        final LVColorScheme lVColorScheme3;
        float f7;
        Pair pair;
        RippleConfiguration rippleConfigurationA;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "LVHeaderTopBar");
        }
        str.getClass();
        GapComposer gapComposerH = composer.h(-95135480);
        int i5 = i3 & 1;
        if (i5 != 0) {
            i4 = i2 | 6;
        } else {
            i4 = i2 | (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2);
        }
        int i6 = i4 | (gapComposerH.K(str) ? 32 : 16) | 4940800;
        if (gapComposerH.p(i6 & 1, (4793491 & i6) != 4793490)) {
            gapComposerH.y0();
            if ((i2 & 1) == 0 || gapComposerH.h0()) {
                if (i5 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LVHeaderTopBar");
                }
                WindowInsets windowInsetsC = TopAppBarDefaults.c(gapComposerH);
                LVColorScheme lVColorScheme4 = LVColorScheme.DEFAULT;
                f6 = LVAppDesignKitTheme.h(gapComposerH).g;
                modifier2 = dTFunctionNameModifier;
                windowInsets3 = windowInsetsC;
                lVColorScheme3 = lVColorScheme4;
                f7 = LVAppDesignKitTheme.h(gapComposerH).f48403c;
            } else {
                gapComposerH.D();
                windowInsets3 = windowInsets;
                lVColorScheme3 = lVColorScheme;
                f6 = f2;
                modifier2 = dTFunctionNameModifier;
                f7 = f3;
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            int[] iArr = WhenMappings.f48746a;
            int i7 = iArr[lVColorScheme3.ordinal()];
            if (i7 == 1) {
                gapComposerH.L(-1230865015);
                pair = new Pair(new Color(LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a), new Color(LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k));
                gapComposerH.Z(false);
            } else {
                if (i7 != 2) {
                    throw d21.u(gapComposerH, -1230866529, false);
                }
                gapComposerH.L(-1230860459);
                pair = new Pair(new Color(LVAppDesignKitTheme.c(gapComposerH).f48361b.f48378f), new Color(LVAppDesignKitTheme.c(gapComposerH).f48361b.m));
                gapComposerH.Z(false);
            }
            final long j2 = ((Color) pair.f71705b).f8872a;
            float f8 = f6;
            final long j3 = ((Color) pair.f71706c).f8872a;
            int i8 = iArr[lVColorScheme3.ordinal()];
            if (i8 == 1) {
                gapComposerH.L(-1230854105);
                rippleConfigurationA = RippleKt.a(gapComposerH);
                gapComposerH.Z(false);
            } else {
                if (i8 != 2) {
                    throw d21.u(gapComposerH, -1230855710, false);
                }
                gapComposerH.L(-1230852058);
                rippleConfigurationA = RippleKt.b(gapComposerH);
                gapComposerH.Z(false);
            }
            final float fU1 = ((Density) gapComposerH.k(CompositionLocalsKt.f10031h)).u1(f48745a);
            boolean zK = gapComposerH.K(null);
            Object objX = gapComposerH.x();
            if (zK || objX == Composer.Companion.f7939a) {
                objX = SnapshotStateKt.e(new Function0() { // from class: a60
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        float f9 = LVHeaderTopBarKt.f48745a;
                        float fAbs = Math.abs(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        float f10 = fU1;
                        return Float.valueOf(fAbs >= f10 ? 1.0f : fAbs / f10);
                    }
                });
                gapComposerH.q(objX);
            }
            gapComposerH.L(499338056);
            final float f9 = LVAppDesignKitTheme.h(gapComposerH).f48401a;
            gapComposerH.Z(false);
            CompositionLocalKt.a(androidx.compose.material3.RippleKt.f7164a.c(rippleConfigurationA), ComposableLambdaKt.b(433323464, new Function2() { // from class: b60
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Integer) obj2).intValue();
                    float f10 = LVHeaderTopBarKt.f48745a;
                    Modifier modifierE = modifier2;
                    if (modifierE != null) {
                        modifierE = a.e(modifierE, "LVHeaderTopBar$lambda$3");
                    }
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        Modifier modifierK = PaddingKt.k(SizeKt.f(WindowInsetsPaddingKt.d(BackgroundKt.b(SizeKt.d(modifierE, 1.0f), Color.b(f9, j2), RectangleShapeKt.f8913a), windowInsets3), LVHeaderTopBarKt.f48745a), LVAppDesignKitTheme.l(composer2).f48414b, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                        Alignment.f8582a.getClass();
                        BiasAlignment.Vertical vertical = Alignment.Companion.l;
                        Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                        RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Start$1, vertical, composer2, 48);
                        int iHashCode = Long.hashCode(composer2.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                        Modifier modifierC = ComposedModifierKt.c(composer2, modifierK);
                        ComposeUiNode.b0.getClass();
                        Function0 function0 = ComposeUiNode.Companion.f9641b;
                        if (composer2.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer2.B();
                        if (composer2.getS()) {
                            composer2.C(function0);
                        } else {
                            composer2.o();
                        }
                        Function2 function2 = ComposeUiNode.Companion.f9644f;
                        Updater.c(composer2, rowMeasurePolicyA, function2);
                        Function2 function3 = ComposeUiNode.Companion.f9643e;
                        Updater.c(composer2, persistentCompositionLocalMapN, function3);
                        Integer numValueOf = Integer.valueOf(iHashCode);
                        Function2 function5 = ComposeUiNode.Companion.g;
                        Updater.c(composer2, numValueOf, function5);
                        Function1 function1 = ComposeUiNode.Companion.f9645h;
                        Updater.b(composer2, function1);
                        Function2 function6 = ComposeUiNode.Companion.d;
                        Updater.c(composer2, modifierC, function6);
                        Modifier modifierB = cj.b("LVHeaderTopBar$lambda$3", RowScopeInstance.f5040a, 1.0f, true);
                        MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                        int iHashCode2 = Long.hashCode(composer2.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                        Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierB);
                        if (composer2.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer2.B();
                        if (composer2.getS()) {
                            composer2.C(function0);
                        } else {
                            composer2.o();
                        }
                        Updater.c(composer2, measurePolicyD, function2);
                        Updater.c(composer2, persistentCompositionLocalMapN2, function3);
                        cj.s(iHashCode2, composer2, function5, composer2, function1);
                        Modifier modifierC3 = n00.c(composer2, modifierC2, function6, "LVHeaderTopBar$lambda$3", 1.0f);
                        Dp.Companion companion = Dp.f11004c;
                        Modifier modifierM = PaddingKt.m(modifierC3, 12.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                        Object objX2 = composer2.x();
                        if (objX2 == Composer.Companion.f7939a) {
                            objX2 = new x20(26);
                            composer2.q(objX2);
                        }
                        Modifier modifierB2 = SemanticsModifierKt.b(modifierM, false, (Function1) objX2);
                        TextStyle textStyle = LVAppDesignKitTheme.n(composer2).f48425e;
                        TextOverflow.f10989a.getClass();
                        TextKt.c(str, modifierB2, j3, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 1, 0, null, textStyle, composer2, 0, 24960, 110584);
                        composer2.r();
                        Function4 function7 = function4;
                        if (function7 != null) {
                            DTFunctionNameModifier dTFunctionNameModifierJ = pq0.j(1049584741, composer2, "LVHeaderTopBar$lambda$3");
                            RowMeasurePolicy rowMeasurePolicyA2 = RowKt.a(arrangement$Start$1, vertical, composer2, 48);
                            int iHashCode3 = Long.hashCode(composer2.getT());
                            PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer2.n();
                            Modifier modifierC4 = ComposedModifierKt.c(composer2, dTFunctionNameModifierJ);
                            if (composer2.getF7976a() == null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            composer2.B();
                            if (composer2.getS()) {
                                composer2.C(function0);
                            } else {
                                composer2.o();
                            }
                            Updater.c(composer2, rowMeasurePolicyA2, function2);
                            Updater.c(composer2, persistentCompositionLocalMapN3, function3);
                            cj.s(iHashCode3, composer2, function5, composer2, function1);
                            Updater.c(composer2, modifierC4, function6);
                            function7.g(TopBarActionScopeInstance.f48763a, lVColorScheme3, composer2, 6);
                            composer2.r();
                            composer2.F();
                        } else {
                            composer2.L(1049785590);
                            composer2.F();
                        }
                        composer2.r();
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, 56);
            f4 = f8;
            f5 = f7;
            windowInsets2 = windowInsets3;
            lVColorScheme2 = lVColorScheme3;
        } else {
            gapComposerH.D();
            windowInsets2 = windowInsets;
            lVColorScheme2 = lVColorScheme;
            f4 = f2;
            f5 = f3;
            modifier2 = dTFunctionNameModifier;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new c60(modifier2, str, function4, windowInsets2, lVColorScheme2, f4, f5, i2, i3);
        }
    }
}
