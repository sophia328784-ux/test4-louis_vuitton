package com.vuitton.android.presentation.screen.catalog.thematicplp.components;

import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$SpaceBetween$1;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.compose.components.FabNoElevationKt;
import com.vuitton.android.presentation.compose.components.FabStyle;
import com.vuitton.android.presentation.screen.catalog.thematicplp.components.ThematicPlpToolBoxKt;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.GridModes;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.ThemeUiModel;
import com.vuitton.android.presentation.screen.catalog.thematicplp.screen.ThemeAnimationState;
import com.vuitton.android.presentation.screen.catalog.thematicplp.screen.ThemeCapsuleRenderContext;
import defpackage.cj;
import defpackage.d21;
import defpackage.es;
import defpackage.fl0;
import defpackage.j1;
import defpackage.la;
import defpackage.n00;
import defpackage.nj0;
import defpackage.v40;
import defpackage.w11;
import kotlin.Metadata;
import kotlin.Triple;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0004¨\u0006\u0004²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u00008\n@\nX\u008a\u008e\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Landroidx/compose/ui/unit/Dp;", "fabSize", "rowWidth", "animatedWidth", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ThematicPlpToolBoxKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f55417a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f55418b;

        static {
            int[] iArr = new int[ThematicPlpCapsuleStyle.values().length];
            try {
                iArr[ThematicPlpCapsuleStyle.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ThematicPlpCapsuleStyle.SELECTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ThematicPlpCapsuleStyle.UNSELECTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f55417a = iArr;
            int[] iArr2 = new int[ThemeCapsuleRenderContext.values().length];
            try {
                iArr2[ThemeCapsuleRenderContext.TOOLBOX.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[ThemeCapsuleRenderContext.OVERLAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            f55418b = iArr2;
        }
    }

    public static final void a(Modifier modifier, float f2, String str, String str2, ThematicPlpCapsuleStyle thematicPlpCapsuleStyle, ThemeAnimationState themeAnimationState, Function0 function0, ThemeCapsuleRenderContext themeCapsuleRenderContext, Composer composer, int i2) {
        int i3;
        Triple triple;
        float f3;
        Modifier modifierX;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "ThematicPlpThemeCapsule-Uww-Ezs");
        }
        str.getClass();
        str2.getClass();
        thematicPlpCapsuleStyle.getClass();
        themeAnimationState.getClass();
        function0.getClass();
        themeCapsuleRenderContext.getClass();
        GapComposer gapComposerH = composer.h(1395192449);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.c(f2) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(str) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.K(str2) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.d(thematicPlpCapsuleStyle.ordinal()) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.K(themeAnimationState) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i3 |= gapComposerH.y(function0) ? 1048576 : 524288;
        }
        if ((12582912 & i2) == 0) {
            i3 |= gapComposerH.d(themeCapsuleRenderContext.ordinal()) ? 8388608 : 4194304;
        }
        if (gapComposerH.p(i3 & 1, (4793491 & i3) != 4793490)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            int i4 = WhenMappings.f55417a[thematicPlpCapsuleStyle.ordinal()];
            if (i4 == 1) {
                gapComposerH.L(750160109);
                Color.f8866b.getClass();
                triple = new Triple(new Color(Color.f8870h), new Color(LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k), new Color(LVAppDesignKitTheme.c(gapComposerH).f48361b.m));
                gapComposerH.Z(false);
            } else if (i4 == 2) {
                gapComposerH.L(750167106);
                triple = new Triple(new Color(LVAppDesignKitTheme.c(gapComposerH).f48361b.q), new Color(LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a), new Color(LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k));
                gapComposerH.Z(false);
            } else {
                if (i4 != 3) {
                    throw d21.u(gapComposerH, 750158774, false);
                }
                gapComposerH.L(750174795);
                Color color = new Color(LVAppDesignKitTheme.c(gapComposerH).f48361b.p);
                Color.f8866b.getClass();
                triple = new Triple(color, new Color(Color.f8870h), new Color(LVAppDesignKitTheme.c(gapComposerH).f48361b.m));
                gapComposerH.Z(false);
            }
            long j2 = ((Color) triple.f71716b).f8872a;
            long j3 = ((Color) triple.f71717c).f8872a;
            long j4 = ((Color) triple.d).f8872a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(null);
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) objX;
            Density density = (Density) gapComposerH.k(CompositionLocalsKt.f10031h);
            if (((Dp) mutableState.getF10755b()) == null || !(themeAnimationState instanceof ThemeAnimationState.Stable)) {
                f3 = f2;
            } else {
                Dp dp = (Dp) mutableState.getF10755b();
                dp.getClass();
                f3 = dp.f11006b;
            }
            int i5 = i3;
            State stateA = AnimateAsStateKt.a(f3, AnimationSpecKt.c(150, 0, null, 6), null, null, gapComposerH, 48, 12);
            int i6 = WhenMappings.f55418b[themeCapsuleRenderContext.ordinal()];
            if (i6 == 1) {
                modifierX = (((Dp) mutableState.getF10755b()) == null || (themeAnimationState instanceof ThemeAnimationState.Stable)) ? SizeKt.x(new DTFunctionNameModifier("ThematicPlpThemeCapsule-Uww-Ezs"), null, 3) : SizeKt.s(new DTFunctionNameModifier("ThematicPlpThemeCapsule-Uww-Ezs"), ((Dp) stateA.getF10755b()).f11006b);
            } else {
                if (i6 != 2) {
                    v40.g();
                    return;
                }
                modifierX = SizeKt.x(new DTFunctionNameModifier("ThematicPlpThemeCapsule-Uww-Ezs"), null, 3);
            }
            Modifier modifierA = BorderKt.a(BackgroundKt.b(ClipKt.a(SizeKt.f(modifierE.o(modifierX), f2), LVAppDesignKitTheme.j(gapComposerH).f48412e), j3, RectangleShapeKt.f8913a), LVAppDesignKitTheme.d(gapComposerH).f48385c, j2, LVAppDesignKitTheme.j(gapComposerH).f48412e);
            boolean z = (i5 & 3670016) == 1048576;
            Object objX2 = gapComposerH.x();
            if (z || objX2 == composer$Companion$Empty$1) {
                objX2 = new w11(function0, 4);
                gapComposerH.q(objX2);
            }
            Modifier modifierC = ModifierExtKt.c(modifierA, false, null, null, (Function0) objX2, 31);
            boolean zK = gapComposerH.K(density);
            Object objX3 = gapComposerH.x();
            if (zK || objX3 == composer$Companion$Empty$1) {
                objX3 = new j1(density, mutableState, 7);
                gapComposerH.q(objX3);
            }
            Modifier modifierM = PaddingKt.m(OnGloballyPositionedModifierKt.a(modifierC, (Function1) objX3), LVAppDesignKitTheme.l(gapComposerH).f48414b, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
            Arrangement$SpaceBetween$1 arrangement$SpaceBetween$1 = Arrangement.g;
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$SpaceBetween$1, Alignment.Companion.l, gapComposerH, 54);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierM);
            ComposeUiNode.b0.getClass();
            Function0 function1 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC2, ComposeUiNode.Companion.d);
            boolean z2 = themeAnimationState instanceof ThemeAnimationState.ToolboxRestoring;
            AnimatedVisibilityKt.d(RowScopeInstance.f5040a, !z2, null, EnterExitTransitionKt.f(AnimationSpecKt.c(150, 0, null, 6), Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), EnterExitTransitionKt.h(AnimationSpecKt.c(150, 0, null, 6), 2), null, ComposableLambdaKt.b(1690280901, new la(str, 9), gapComposerH), gapComposerH, 1600518, 18);
            gapComposerH = gapComposerH;
            if (z2) {
                gapComposerH.L(-208041531);
                gapComposerH.Z(false);
            } else {
                Modifier modifierE2 = ModifierExtKt.e(PaddingKt.m(com.vuitton.android.presentation.extensions.ModifierExtKt.a(n00.i(gapComposerH, -208628051, "ThematicPlpThemeCapsule-Uww-Ezs"), null, null, 7), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, 10), "thematicPlp_themeCapsuleTitle_text");
                TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).l;
                TextOverflow.f10989a.getClass();
                TextKt.c(str2, modifierE2, j4, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 1, 0, null, textStyle, gapComposerH, (i5 >> 9) & 14, 24960, 110584);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new es(modifierE, f2, str, str2, thematicPlpCapsuleStyle, themeAnimationState, function0, themeCapsuleRenderContext, i2);
        }
    }

    public static final void b(Modifier modifier, final ThemeUiModel themeUiModel, GridModes gridModes, float f2, final ThemeAnimationState themeAnimationState, final boolean z, final boolean z2, final Function0 function0, final Function0 function1, Composer composer, final int i2) {
        int i3;
        Function0 function2;
        float f3;
        String str;
        Arrangement.Horizontal horizontal;
        char c2;
        Modifier modifierA;
        String str2;
        Function2 function3;
        Function1 function4;
        boolean z3;
        Modifier modifierA2;
        Modifier modifierE = modifier;
        final GridModes gridModes2 = gridModes;
        float f4 = f2;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "ThematicPlpToolBox-_-WMjBM");
        }
        gridModes2.getClass();
        themeAnimationState.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(543630648);
        Applier applier = gapComposerH.f7976a;
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(themeUiModel) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(gridModes2) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.c(f4) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.K(themeAnimationState) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.b(z) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i3 |= gapComposerH.b(z2) ? 1048576 : 524288;
        }
        if ((12582912 & i2) == 0) {
            i3 |= gapComposerH.y(function0) ? 8388608 : 4194304;
        }
        if ((100663296 & i2) == 0) {
            function2 = function1;
            i3 |= gapComposerH.y(function2) ? 67108864 : 33554432;
        } else {
            function2 = function1;
        }
        int i4 = i3;
        if (gapComposerH.p(i4 & 1, (i4 & 38347923) != 38347922)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean z4 = themeAnimationState instanceof ThemeAnimationState.Stable;
            if (z4) {
                f3 = f4;
            } else {
                Dp.Companion companion = Dp.f11004c;
                f3 = 0.0f;
            }
            State stateA = AnimateAsStateKt.a(f3, AnimationSpecKt.c(150, 0, null, 6), null, null, gapComposerH, 48, 12);
            String strC = StringResources_androidKt.c(gapComposerH, R.string.alert_grid_vue);
            if (themeUiModel == null || (str = themeUiModel.f55436b) == null) {
                str = new String();
            }
            String strB = StringResources_androidKt.b(R.string.alert_chapter, new Object[]{str}, gapComposerH);
            String strC2 = StringResources_androidKt.c(gapComposerH, R.string.alt_button_theme);
            String strC3 = StringResources_androidKt.c(gapComposerH, R.string.alt_button_grid);
            if (z4) {
                gapComposerH.L(-1019907146);
                Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).d);
                gapComposerH.Z(false);
                horizontal = spacedAlignedF;
            } else {
                gapComposerH.L(-1019819199);
                gapComposerH.Z(false);
                horizontal = Arrangement.f4918a;
            }
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(horizontal, Alignment.Companion.l, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierE);
            ComposeUiNode.b0.getClass();
            Function0 function5 = ComposeUiNode.Companion.f9641b;
            if (applier == 0) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function5);
            } else {
                gapComposerH.o();
            }
            Function2 function6 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, rowMeasurePolicyA, function6);
            Function2 function7 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function7);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function8 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function8);
            Function1 function9 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function9);
            Function2 function10 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function10);
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (themeUiModel == null) {
                gapComposerH.L(160305361);
                z3 = false;
                gapComposerH.Z(false);
                function3 = function7;
                function4 = function9;
                str2 = strC;
                f4 = f2;
            } else {
                Modifier modifierD = n00.d(gapComposerH, 160305362, "ThematicPlpToolBox-_-WMjBM", "thematicPlp_currentThemeCapsuleItem");
                if (z2) {
                    DTFunctionNameModifier dTFunctionNameModifierI = n00.i(gapComposerH, 809285333, "ThematicPlpToolBox-_-WMjBM");
                    boolean zK = gapComposerH.K(strB);
                    Object objX = gapComposerH.x();
                    if (zK || objX == composer$Companion$Empty$1) {
                        objX = new nj0(strB, 25);
                        gapComposerH.q(objX);
                    }
                    modifierA = com.vuitton.android.presentation.extensions.ModifierExtKt.a(dTFunctionNameModifierI, null, (Function1) objX, 3);
                    gapComposerH.Z(false);
                    c2 = 3;
                } else {
                    DTFunctionNameModifier dTFunctionNameModifierI2 = n00.i(gapComposerH, 809566224, "ThematicPlpToolBox-_-WMjBM");
                    boolean zK2 = gapComposerH.K(strC2);
                    Object objX2 = gapComposerH.x();
                    if (zK2 || objX2 == composer$Companion$Empty$1) {
                        objX2 = new nj0(strC2, 26);
                        gapComposerH.q(objX2);
                    }
                    c2 = 3;
                    modifierA = com.vuitton.android.presentation.extensions.ModifierExtKt.a(dTFunctionNameModifierI2, null, (Function1) objX2, 3);
                    gapComposerH.Z(false);
                }
                int i5 = i4 >> 6;
                str2 = strC;
                function3 = function7;
                function4 = function9;
                f4 = f2;
                a(modifierD.o(modifierA), f4, themeUiModel.d.f51778b, StringResources_androidKt.c(gapComposerH, R.string.cta_theme_gift), ThematicPlpCapsuleStyle.DEFAULT, themeAnimationState, function2, ThemeCapsuleRenderContext.TOOLBOX, gapComposerH, (i5 & 112) | 12607488 | ((i4 << 3) & ImageMetadata.JPEG_GPS_COORDINATES) | (i5 & 3670016));
                gapComposerH = gapComposerH;
                z3 = false;
                gapComposerH.Z(false);
            }
            Modifier modifierO = SizeKt.o(new DTFunctionNameModifier(r4), ((Dp) stateA.getF10755b()).f11006b);
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, z3);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierO);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function5);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, function6);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function8, gapComposerH, function4);
            Updater.c(gapComposerH, modifierC2, function10);
            if (z4) {
                gapComposerH.L(252846758);
                Modifier modifierE2 = ModifierExtKt.e(SizeKt.o(new DTFunctionNameModifier("ThematicPlpToolBox-_-WMjBM"), f4), "thematicPlp_changeGrid_button");
                if (z) {
                    DTFunctionNameModifier dTFunctionNameModifierI3 = n00.i(gapComposerH, 253098571, r4);
                    String str3 = str2;
                    boolean zK3 = gapComposerH.K(str3);
                    Object objX3 = gapComposerH.x();
                    if (zK3 || objX3 == composer$Companion$Empty$1) {
                        objX3 = new nj0(str3, 27);
                        gapComposerH.q(objX3);
                    }
                    modifierA2 = com.vuitton.android.presentation.extensions.ModifierExtKt.a(dTFunctionNameModifierI3, null, (Function1) objX3, 3);
                    gapComposerH.Z(false);
                } else {
                    DTFunctionNameModifier dTFunctionNameModifierI4 = n00.i(gapComposerH, 253398248, r4);
                    boolean zK4 = gapComposerH.K(strC3);
                    Object objX4 = gapComposerH.x();
                    if (zK4 || objX4 == composer$Companion$Empty$1) {
                        objX4 = new nj0(strC3, 28);
                        gapComposerH.q(objX4);
                    }
                    modifierA2 = com.vuitton.android.presentation.extensions.ModifierExtKt.a(dTFunctionNameModifierI4, null, (Function1) objX4, 3);
                    gapComposerH.Z(false);
                }
                gridModes2 = gridModes;
                FabNoElevationKt.a(modifierE2.o(modifierA2), FabStyle.DEFAULT, function0, ComposableLambdaKt.b(-1240394098, new fl0(gridModes2), gapComposerH), gapComposerH, ((i4 >> 15) & 896) | 3120, 0);
                gapComposerH.Z(false);
            } else {
                gridModes2 = gridModes;
                gapComposerH.L(254459316);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            final float f5 = f4;
            final Modifier modifier2 = modifierE;
            recomposeScopeImplB0.d = new Function2() { // from class: e41
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    ThematicPlpToolBoxKt.b(modifier2, themeUiModel, gridModes2, f5, themeAnimationState, z, z2, function0, function1, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1));
                    return Unit.f71739a;
                }
            };
        }
    }
}
