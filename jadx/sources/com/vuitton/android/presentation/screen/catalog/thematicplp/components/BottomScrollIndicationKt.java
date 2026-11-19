package com.vuitton.android.presentation.screen.catalog.thematicplp.components;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
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
import androidx.compose.ui.draw.AlphaKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.style.TextAlign;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVFlowerLoaderKt;
import com.vuitton.android.designkit.components.components.LVFlowerLoaderStyle;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.compose.components.ProgressViewKt;
import com.vuitton.android.presentation.screen.catalog.thematicplp.components.BottomScrollIndicationKt;
import com.vuitton.android.presentation.utils.MathUtilsKt;
import defpackage.a4;
import defpackage.cj;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BottomScrollIndicationKt {
    public static final void a(Modifier modifier, final boolean z, final long j2, final float f2, final float f3, Composer composer, final int i2) {
        GapComposer gapComposer;
        final Modifier modifier2;
        boolean z2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "BottomScrollIndication-T042LqI");
        }
        GapComposer gapComposerH = composer.h(41792641);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | 6 | (gapComposerH.b(z) ? 32 : 16) | (gapComposerH.e(j2) ? 256 : 128) | (gapComposerH.c(f2) ? 2048 : 1024) | (gapComposerH.c(f3) ? 16384 : 8192);
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("BottomScrollIndication-T042LqI");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            String strC = StringResources_androidKt.c(gapComposerH, R.string.alert_loading);
            boolean z3 = (i3 & 7168) == 2048;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z3 || objX == composer$Companion$Empty$1) {
                objX = Float.valueOf(MathUtilsKt.a(f2, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, f3, 1.0f));
                gapComposerH.q(objX);
            }
            float fFloatValue = ((Number) objX).floatValue();
            LVFlowerLoaderStyle lVFlowerLoaderStyle = Color.c(j2, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k) ? LVFlowerLoaderStyle.LIGHT_BACKGROUND : LVFlowerLoaderStyle.DARK_BACKGROUND;
            Modifier modifierJ = PaddingKt.j(SizeKt.d(dTFunctionNameModifier, 1.0f), LVAppDesignKitTheme.l(gapComposerH).m, LVAppDesignKitTheme.l(gapComposerH).f48417f);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierJ);
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
            if (z) {
                gapComposer = gapComposerH;
                z2 = true;
                DTFunctionNameModifier dTFunctionNameModifierI = n00.i(gapComposer, 351295801, "BottomScrollIndication-T042LqI");
                boolean zK = gapComposer.K(strC);
                Object objX2 = gapComposer.x();
                if (zK || objX2 == composer$Companion$Empty$1) {
                    objX2 = new a4(strC, 19);
                    gapComposer.q(objX2);
                }
                ProgressViewKt.a(SemanticsModifierKt.b(dTFunctionNameModifierI, false, (Function1) objX2), 0L, false, gapComposer, 0, 6);
                gapComposer.Z(false);
            } else {
                gapComposerH.L(350638601);
                BiasAlignment.Horizontal horizontal = Alignment.Companion.o;
                DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("BottomScrollIndication-T042LqI");
                ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, horizontal, gapComposerH, 48);
                int iHashCode2 = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
                Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier2);
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
                TextAlign.f10959b.getClass();
                z2 = true;
                TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.plp_gift_switch_theme), null, j2, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, i3 & 896, 0, 130042);
                LVFlowerLoaderKt.a(AlphaKt.a(PaddingKt.m(new DTFunctionNameModifier("BottomScrollIndication-T042LqI"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), fFloatValue), lVFlowerLoaderStyle, false, gapComposerH, 0, 4);
                gapComposer = gapComposerH;
                gapComposer.Z(true);
                gapComposer.Z(false);
            }
            gapComposer.Z(z2);
            modifier2 = dTFunctionNameModifier;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            modifier2 = modifierE;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2(z, j2, f2, f3, i2) { // from class: bh

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ boolean f20861c;
                public final /* synthetic */ long d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ float f20862e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ float f20863f;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(1);
                    BottomScrollIndicationKt.a(this.f20860b, this.f20861c, this.d, this.f20862e, this.f20863f, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }
}
