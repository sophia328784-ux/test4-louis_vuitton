package com.vuitton.android.presentation.screen.portal.components;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import defpackage.aq;
import defpackage.cj;
import defpackage.d21;
import defpackage.po;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ContentSlideStructureKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f63265a;

        static {
            int[] iArr = new int[ContentSlideType.values().length];
            try {
                iArr[ContentSlideType.WITHOUT_COUNTDOWN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ContentSlideType.WITH_COUNTDOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f63265a = iArr;
        }
    }

    public static final void a(float f2, float f3, boolean z, boolean z2, AssetUiModel assetUiModel, ContentSlideType contentSlideType, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i2) {
        ComposableLambdaImpl composableLambdaImpl2;
        float f4;
        float f5;
        Arrangement.Vertical verticalG;
        assetUiModel.getClass();
        contentSlideType.getClass();
        GapComposer gapComposerH = composer.h(-590314690);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | (gapComposerH.c(f2) ? 4 : 2) | (gapComposerH.c(f3) ? 32 : 16) | (gapComposerH.b(z) ? 256 : 128) | (gapComposerH.b(z2) ? 2048 : 1024) | (gapComposerH.y(assetUiModel) ? 16384 : 8192);
        if (gapComposerH.p(i3 & 1, (599187 & i3) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("ContentSlideStructure");
            Dp.Companion companion = Dp.f11004c;
            PortalSliderComponentKt.b(ModifierExtKt.b(ModifierExtKt.b(PaddingKt.m(dTFunctionNameModifier, f2, Call.Parameters.DEFAULT_CAMERA_ZOOM, f3, Call.Parameters.DEFAULT_CAMERA_ZOOM, 10), contentSlideType == ContentSlideType.WITHOUT_COUNTDOWN, new po(27), gapComposerH, 0), contentSlideType == ContentSlideType.WITH_COUNTDOWN, new po(28), gapComposerH, 0), assetUiModel, z, gapComposerH, ((i3 >> 9) & 112) | (i3 & 896));
            Modifier modifierO = new DTFunctionNameModifier("ContentSlideStructure").o(SizeKt.f5052c);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
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
            Function2 function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, measurePolicyD, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function1 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function1);
            Function2 function5 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function5);
            Modifier modifierG = BoxScopeInstance.f4938a.g(new DTFunctionNameModifier("ContentSlideStructure"), Alignment.Companion.f8589i);
            int[] iArr = WhenMappings.f63265a;
            int i4 = iArr[contentSlideType.ordinal()];
            if (i4 == 1) {
                gapComposerH.L(1234896129);
                f4 = LVAppDesignKitTheme.l(gapComposerH).f48418h;
                gapComposerH.Z(false);
            } else {
                if (i4 != 2) {
                    throw d21.u(gapComposerH, 1234892621, false);
                }
                gapComposerH.L(1234899264);
                f4 = LVAppDesignKitTheme.l(gapComposerH).f48415c;
                gapComposerH.Z(false);
            }
            float f6 = f4;
            int i5 = iArr[contentSlideType.ordinal()];
            if (i5 == 1) {
                gapComposerH.L(1234904865);
                f5 = LVAppDesignKitTheme.l(gapComposerH).f48418h;
                gapComposerH.Z(false);
            } else {
                if (i5 != 2) {
                    throw d21.u(gapComposerH, 1234901357, false);
                }
                gapComposerH.L(1234908000);
                f5 = LVAppDesignKitTheme.l(gapComposerH).f48415c;
                gapComposerH.Z(false);
            }
            Modifier modifierB = ModifierExtKt.b(PaddingKt.m(modifierG, f6, Call.Parameters.DEFAULT_CAMERA_ZOOM, f5, LVAppDesignKitTheme.d(gapComposerH).F, 2), z2, new po(29), gapComposerH, (i3 >> 6) & 112);
            BiasAlignment.Horizontal horizontal = Alignment.Companion.o;
            int i6 = iArr[contentSlideType.ordinal()];
            if (i6 == 1) {
                gapComposerH.L(-371806160);
                gapComposerH.Z(false);
                verticalG = Arrangement.d;
            } else {
                if (i6 != 2) {
                    throw d21.u(gapComposerH, 1234929959, false);
                }
                gapComposerH.L(-371693816);
                Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                verticalG = Arrangement.g(LVAppDesignKitTheme.l(gapComposerH).f48417f, Alignment.Companion.m);
                gapComposerH.Z(false);
            }
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(verticalG, horizontal, gapComposerH, 48);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB);
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
            Updater.c(gapComposerH, columnMeasurePolicyA, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function1);
            Updater.c(gapComposerH, modifierC2, function5);
            composableLambdaImpl2 = composableLambdaImpl;
            composableLambdaImpl2.A(ColumnScopeInstance.f4944a, gapComposerH, 54);
            gapComposerH.Z(true);
            gapComposerH.Z(true);
        } else {
            composableLambdaImpl2 = composableLambdaImpl;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new aq(f2, f3, z, z2, assetUiModel, contentSlideType, composableLambdaImpl2, i2);
        }
    }
}
