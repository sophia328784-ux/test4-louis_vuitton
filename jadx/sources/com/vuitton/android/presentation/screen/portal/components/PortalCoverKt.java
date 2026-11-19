package com.vuitton.android.presentation.screen.portal.components;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Center$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ScaleKt;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.unit.TextUnitKt;
import com.airbnb.lottie.compose.LottieAnimationKt;
import com.airbnb.lottie.compose.LottieCompositionResultImpl;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.AlphaKt;
import com.vuitton.android.designkit.ui.theme.GradientKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import defpackage.aj0;
import defpackage.aq;
import defpackage.cj;
import defpackage.n00;
import defpackage.tr;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u0004\u0018\u00010\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/airbnb/lottie/LottieComposition;", "composition", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PortalCoverKt {
    public static final void a(String str, String str2, AssetUiModel assetUiModel, float f2, float f3, boolean z, boolean z2, Composer composer, int i2) {
        Function0 function0;
        Function2 function2;
        Function2 function3;
        Arrangement$Center$1 arrangement$Center$1;
        String str3;
        Function2 function4;
        Function1 function1;
        Function2 function5;
        boolean z3;
        String str4;
        GapComposer gapComposerH = composer.h(1930891580);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | (gapComposerH.K(str) ? 4 : 2) | (gapComposerH.K(str2) ? 32 : 16) | (gapComposerH.y(assetUiModel) ? 256 : 128) | (gapComposerH.c(f2) ? 2048 : 1024) | (gapComposerH.c(f3) ? 16384 : 8192) | (gapComposerH.b(z) ? 131072 : 65536) | (gapComposerH.b(z2) ? 1048576 : 524288);
        if (gapComposerH.p(i3 & 1, (599187 & i3) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LottieCompositionResultImpl lottieCompositionResultImplH = n00.h(R.raw.animation_swipe, gapComposerH, 0);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("PortalCover");
            Dp.Companion companion = Dp.f11004c;
            Modifier modifierM = PaddingKt.m(dTFunctionNameModifier, f2, Call.Parameters.DEFAULT_CAMERA_ZOOM, f3, Call.Parameters.DEFAULT_CAMERA_ZOOM, 10);
            SolidColor solidColor = AlphaKt.f48327a;
            modifierM.getClass();
            PortalSliderComponentKt.b(GradientKt.a(modifierM, AlphaKt.f48328b), assetUiModel, z, gapComposerH, ((i3 >> 3) & 112) | ((i3 >> 9) & 896));
            Modifier modifierO = new DTFunctionNameModifier("PortalCover").o(SizeKt.f5052c);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierO);
            ComposeUiNode.b0.getClass();
            Function0 function6 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function6);
            } else {
                gapComposerH.o();
            }
            Function2 function7 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, measurePolicyD, function7);
            Function2 function8 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function8);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function9 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function9);
            Function1 function10 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function10);
            Function2 function11 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function11);
            Modifier modifierB = ModifierExtKt.b(PaddingKt.k(BoxScopeInstance.f4938a.g(new DTFunctionNameModifier("PortalCover"), Alignment.Companion.f8587f), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), z2, new aj0(22), gapComposerH, (i3 >> 15) & 112);
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.f8591k, gapComposerH, 0);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function6);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, function7);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function8);
            cj.t(iHashCode2, gapComposerH, function9, gapComposerH, function10);
            Updater.c(gapComposerH, modifierC2, function11);
            Modifier modifierB2 = cj.b("PortalCover", RowScopeInstance.f5040a, 1.0f, false);
            BiasAlignment.Horizontal horizontal = Alignment.Companion.o;
            Arrangement$Center$1 arrangement$Center$2 = Arrangement.f4921e;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Center$2, horizontal, gapComposerH, 54);
            int iHashCode3 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierB2);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function6);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, function7);
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function8);
            cj.t(iHashCode3, gapComposerH, function9, gapComposerH, function10);
            Updater.c(gapComposerH, modifierC3, function11);
            if (str == null) {
                gapComposerH.L(1563896531);
                gapComposerH.Z(false);
                function0 = function6;
                function2 = function7;
                arrangement$Center$1 = arrangement$Center$2;
                function3 = function11;
                str3 = "PortalCover";
                z3 = false;
                function4 = function8;
                function1 = function10;
                function5 = function9;
            } else {
                Modifier modifierM2 = PaddingKt.m(n00.i(gapComposerH, 1563896532, "PortalCover"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 7);
                TextAlign.f10959b.getClass();
                int i4 = TextAlign.f10961e;
                TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48429j;
                long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
                TextOverflow.f10989a.getClass();
                function0 = function6;
                function2 = function7;
                function3 = function11;
                arrangement$Center$1 = arrangement$Center$2;
                str3 = "PortalCover";
                function4 = function8;
                function1 = function10;
                function5 = function9;
                TextKt.c(str, modifierM2, j2, 0L, null, 0L, null, new TextAlign(i4), 0L, TextOverflow.f10991c, false, 1, 0, null, textStyle, gapComposerH, 0, 24960, 109560);
                z3 = false;
                gapComposerH.Z(false);
            }
            if (str2 == null) {
                gapComposerH = gapComposerH;
                gapComposerH.L(1564512439);
                gapComposerH.Z(z3);
                str4 = str3;
            } else {
                gapComposerH = gapComposerH;
                String str5 = str3;
                Modifier modifierM3 = PaddingKt.m(n00.i(gapComposerH, 1564512440, str5), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).m, 7);
                TextAlign.f10959b.getClass();
                int i5 = TextAlign.f10961e;
                TextStyle textStyleA = TextStyle.a(LVAppDesignKitTheme.n(gapComposerH).d, 0L, TextUnitKt.c(40), null, null, 0L, null, 0, 0, TextUnitKt.c(48), null, null, 16646141);
                long j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
                TextOverflow.f10989a.getClass();
                GapComposer gapComposer = gapComposerH;
                str4 = str5;
                TextKt.c(str2, modifierM3, j3, 0L, null, 0L, null, new TextAlign(i5), 0L, TextOverflow.f10991c, false, 2, 0, null, textStyleA, gapComposer, 0, 24960, 109560);
                gapComposerH = gapComposer;
                gapComposerH.Z(false);
            }
            String str6 = str4;
            Modifier modifierV = SizeKt.v(SizeKt.d(new DTFunctionNameModifier(str6), 1.0f), null, 3);
            RowMeasurePolicy rowMeasurePolicyA2 = RowKt.a(arrangement$Center$1, Alignment.Companion.l, gapComposerH, 54);
            int iHashCode4 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU4 = gapComposerH.U();
            Modifier modifierC4 = ComposedModifierKt.c(gapComposerH, modifierV);
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
            Updater.c(gapComposerH, rowMeasurePolicyA2, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU4, function4);
            cj.t(iHashCode4, gapComposerH, function5, gapComposerH, function1);
            Modifier modifierM4 = PaddingKt.m(tr.e(gapComposerH, modifierC4, function3, str6), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11);
            String upperCase = StringResources_androidKt.c(gapComposerH, R.string.event_slider_swipe_slide).toUpperCase(Locale.ROOT);
            upperCase.getClass();
            TextStyle textStyle2 = LVAppDesignKitTheme.n(gapComposerH).m;
            TextAlign.f10959b.getClass();
            GapComposer gapComposer2 = gapComposerH;
            TextKt.c(upperCase, modifierM4, LVAppDesignKitTheme.c(gapComposerH).f48361b.m, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, 0, false, 0, 0, null, textStyle2, gapComposer2, 0, 0, 130040);
            gapComposerH = gapComposer2;
            LottieAnimationKt.a(lottieCompositionResultImplH.getF10755b(), SizeKt.o(ScaleKt.a(new DTFunctionNameModifier(str6), gapComposerH.k(CompositionLocalsKt.n) == LayoutDirection.Rtl ? -1.0f : 1.0f, 1.0f), LVAppDesignKitTheme.d(gapComposerH).q), false, Integer.MAX_VALUE, null, gapComposerH, 1572864, 0, 4194236);
            gapComposerH.Z(true);
            gapComposerH.Z(true);
            gapComposerH.Z(true);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new aq(str, str2, assetUiModel, f2, f3, z, z2, i2);
        }
    }
}
