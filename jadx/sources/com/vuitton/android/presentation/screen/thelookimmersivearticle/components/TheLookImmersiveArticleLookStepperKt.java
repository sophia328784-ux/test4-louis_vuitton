package com.vuitton.android.presentation.screen.thelookimmersivearticle.components;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$SpaceBetween$1;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.IconKt;
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
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.unit.LayoutDirection;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.components.components.LVAnimatedDigitsKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVLinkKt;
import com.vuitton.android.presentation.screen.immersivearticle.models.LookSkuTypeUiModel;
import defpackage.b0;
import defpackage.cj;
import defpackage.n00;
import defpackage.sm0;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class TheLookImmersiveArticleLookStepperKt {
    public static final void a(Modifier modifier, String str, String str2, boolean z, String str3, LookSkuTypeUiModel lookSkuTypeUiModel, int i2, int i3, Function2 function2, Function1 function1, Function1 function3, Composer composer, int i4) {
        Modifier modifier2;
        GapComposer gapComposer;
        Modifier modifierM;
        long j2;
        long j3;
        Modifier modifierE = modifier;
        final int i5 = i2;
        final int i6 = i3;
        final Function1 function4 = function1;
        final Function1 function5 = function3;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "TheLookImmersiveArticleStepper-qM_MBqc");
        }
        str.getClass();
        str2.getClass();
        function2.getClass();
        function4.getClass();
        function5.getClass();
        GapComposer gapComposerH = composer.h(1391842174);
        Applier applier = gapComposerH.f7976a;
        int i7 = i4 | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.K(str2) ? 256 : 128) | (gapComposerH.b(z) ? 2048 : 1024) | (gapComposerH.K(str3) ? 16384 : 8192) | (gapComposerH.d(lookSkuTypeUiModel == null ? -1 : lookSkuTypeUiModel.ordinal()) ? 131072 : 65536) | (gapComposerH.d(i5) ? 1048576 : 524288) | (gapComposerH.d(i6) ? 8388608 : 4194304) | (gapComposerH.y(function2) ? 67108864 : 33554432) | (gapComposerH.y(function4) ? PKIFailureInfo.duplicateCertReq : 268435456);
        if (gapComposerH.p(i7 & 1, ((i7 & 306783379) == 306783378 && ((gapComposerH.y(function5) ? (char) 4 : (char) 2) & 3) == 2) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Brush.Companion companion = Brush.f8862a;
            Color.f8866b.getClass();
            Modifier modifierL = PaddingKt.l(BackgroundKt.a(modifierE, Brush.Companion.b(companion, CollectionsKt.P(new Color(Color.f8870h), new Color(Color.b(0.75f, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k))), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14)), LVAppDesignKitTheme.d(gapComposerH).m, LVAppDesignKitTheme.d(gapComposerH).C, LVAppDesignKitTheme.d(gapComposerH).m, LVAppDesignKitTheme.d(gapComposerH).u);
            Alignment.f8582a.getClass();
            BiasAlignment.Vertical vertical = Alignment.Companion.l;
            Arrangement$SpaceBetween$1 arrangement$SpaceBetween$1 = Arrangement.g;
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$SpaceBetween$1, vertical, gapComposerH, 54);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierL);
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
            Modifier modifierD = SizeKt.d(new DTFunctionNameModifier("TheLookImmersiveArticleStepper-qM_MBqc"), 1.0f);
            RowScopeInstance rowScopeInstance = RowScopeInstance.f5040a;
            Modifier modifierA = rowScopeInstance.a(modifierD, 0.8f, true);
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, gapComposerH, 54);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierA);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            Modifier modifier3 = modifierE;
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, function6);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function7);
            cj.t(iHashCode2, gapComposerH, function8, gapComposerH, function9);
            DTFunctionNameModifier dTFunctionNameModifierE = tr.e(gapComposerH, modifierC2, function10, "TheLookImmersiveArticleStepper-qM_MBqc");
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            BiasAlignment.Vertical vertical2 = Alignment.Companion.f8591k;
            RowMeasurePolicy rowMeasurePolicyA2 = RowKt.a(arrangement$Start$1, vertical2, gapComposerH, 0);
            int iHashCode3 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifierE);
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
            Updater.c(gapComposerH, rowMeasurePolicyA2, function6);
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function7);
            cj.t(iHashCode3, gapComposerH, function8, gapComposerH, function9);
            TextKt.c(str, SizeKt.x(tr.e(gapComposerH, modifierC3, function10, "TheLookImmersiveArticleStepper-qM_MBqc"), null, 3), LVAppDesignKitTheme.c(gapComposerH).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48425e, gapComposerH, ((i7 >> 3) & 14) | 48, 0, 131064);
            if (gapComposerH.k(CompositionLocalsKt.n) == LayoutDirection.Rtl) {
                modifierM = PaddingKt.m(n00.i(gapComposerH, 1029864536, "TheLookImmersiveArticleStepper-qM_MBqc"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.d(gapComposerH).f48387f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11);
                gapComposerH.Z(false);
            } else {
                modifierM = PaddingKt.m(n00.i(gapComposerH, 1029975702, "TheLookImmersiveArticleStepper-qM_MBqc"), LVAppDesignKitTheme.d(gapComposerH).f48387f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                gapComposerH.Z(false);
            }
            LVAnimatedDigitsKt.a(SizeKt.x(modifierM, null, 3), 2, i2 + 1, false, LVAppDesignKitTheme.n(gapComposerH).f48425e, LVAppDesignKitTheme.c(gapComposerH).f48361b.m, gapComposerH, 48, 8);
            gapComposerH.Z(true);
            String str4 = z ? str2 : "";
            LVColorScheme lVColorScheme = LVColorScheme.INVERT;
            boolean z2 = ((i7 & 234881024) == 67108864) | ((i7 & 57344) == 16384) | ((i7 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072);
            Object objX = gapComposerH.x();
            if (z2 || objX == Composer.Companion.f7939a) {
                objX = new sm0(function2, str3, lookSkuTypeUiModel, 20);
                gapComposerH.q(objX);
            }
            LVLinkKt.a(null, str4, false, lVColorScheme, false, (Function0) objX, gapComposerH, 3072, 21);
            gapComposerH.Z(true);
            Modifier modifierA2 = rowScopeInstance.a(SizeKt.d(modifier3, 1.0f), 0.2f, true);
            RowMeasurePolicy rowMeasurePolicyA3 = RowKt.a(arrangement$SpaceBetween$1, vertical2, gapComposerH, 54);
            int iHashCode4 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU4 = gapComposerH.U();
            Modifier modifierC4 = ComposedModifierKt.c(gapComposerH, modifierA2);
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
            Updater.c(gapComposerH, rowMeasurePolicyA3, function6);
            Updater.c(gapComposerH, persistentCompositionLocalMapU4, function7);
            cj.t(iHashCode4, gapComposerH, function8, gapComposerH, function9);
            Modifier modifierO = SizeKt.o(tr.e(gapComposerH, modifierC4, function10, "TheLookImmersiveArticleStepper-qM_MBqc"), LVAppDesignKitTheme.d(gapComposerH).o);
            i5 = i2;
            i6 = i3;
            function5 = function3;
            final int i8 = 0;
            Modifier modifierB = ModifierExtKt.b(modifierO, i2 > 0, new Function2() { // from class: v31
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    int i9 = i8;
                    Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    Function1 function11 = function5;
                    int i10 = i6;
                    int i11 = i5;
                    Composer composer2 = (Composer) obj;
                    ((Integer) obj2).getClass();
                    switch (i9) {
                        case 0:
                            composer2.L(1329850189);
                            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("TheLookImmersiveArticleStepper_qM_MBqc$lambda$0$1$0");
                            boolean zD = composer2.d(i11) | composer2.d(i10) | composer2.K(function11);
                            Object objX2 = composer2.x();
                            if (zD || objX2 == composer$Companion$Empty$1) {
                                objX2 = new s01(i11, i10, function11, 1);
                                composer2.q(objX2);
                            }
                            Modifier modifierD2 = ClickableKt.d(dTFunctionNameModifier, false, null, null, (Function0) objX2, 15);
                            composer2.F();
                            return modifierD2;
                        default:
                            composer2.L(-2077470383);
                            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                            DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("TheLookImmersiveArticleStepper_qM_MBqc$lambda$0$1$1");
                            boolean zD2 = composer2.d(i11) | composer2.d(i10) | composer2.K(function11);
                            Object objX3 = composer2.x();
                            if (zD2 || objX3 == composer$Companion$Empty$1) {
                                objX3 = new s01(i11, i10, function11, 2);
                                composer2.q(objX3);
                            }
                            Modifier modifierD3 = ClickableKt.d(dTFunctionNameModifier2, false, null, null, (Function0) objX3, 15);
                            composer2.F();
                            return modifierD3;
                    }
                }
            }, gapComposerH, 0);
            Painter painterA = PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).H, gapComposerH, 0);
            String strC = StringResources_androidKt.c(gapComposerH, R.string.alt_previous);
            if (i5 > 0) {
                gapComposerH.L(-1720979983);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1720883790);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.n;
                gapComposerH.Z(false);
            }
            modifier2 = modifier3;
            IconKt.a(painterA, strC, modifierB, j2, gapComposerH, 8, 0);
            int i9 = i6 - 1;
            function4 = function1;
            final int i10 = 1;
            Modifier modifierB2 = ModifierExtKt.b(SizeKt.o(new DTFunctionNameModifier("TheLookImmersiveArticleStepper-qM_MBqc"), LVAppDesignKitTheme.d(gapComposerH).o), i5 < i9, new Function2() { // from class: v31
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    int i11 = i10;
                    Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    Function1 function11 = function4;
                    int i12 = i6;
                    int i13 = i5;
                    Composer composer2 = (Composer) obj;
                    ((Integer) obj2).getClass();
                    switch (i11) {
                        case 0:
                            composer2.L(1329850189);
                            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("TheLookImmersiveArticleStepper_qM_MBqc$lambda$0$1$0");
                            boolean zD = composer2.d(i13) | composer2.d(i12) | composer2.K(function11);
                            Object objX2 = composer2.x();
                            if (zD || objX2 == composer$Companion$Empty$1) {
                                objX2 = new s01(i13, i12, function11, 1);
                                composer2.q(objX2);
                            }
                            Modifier modifierD2 = ClickableKt.d(dTFunctionNameModifier, false, null, null, (Function0) objX2, 15);
                            composer2.F();
                            return modifierD2;
                        default:
                            composer2.L(-2077470383);
                            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                            DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("TheLookImmersiveArticleStepper_qM_MBqc$lambda$0$1$1");
                            boolean zD2 = composer2.d(i13) | composer2.d(i12) | composer2.K(function11);
                            Object objX3 = composer2.x();
                            if (zD2 || objX3 == composer$Companion$Empty$1) {
                                objX3 = new s01(i13, i12, function11, 2);
                                composer2.q(objX3);
                            }
                            Modifier modifierD3 = ClickableKt.d(dTFunctionNameModifier2, false, null, null, (Function0) objX3, 15);
                            composer2.F();
                            return modifierD3;
                    }
                }
            }, gapComposerH, 0);
            Painter painterA2 = PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).I, gapComposerH, 0);
            String strC2 = StringResources_androidKt.c(gapComposerH, R.string.alt_next);
            if (i5 < i9) {
                gapComposerH.L(-1720088175);
                j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1719991982);
                j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.n;
                gapComposerH.Z(false);
            }
            IconKt.a(painterA2, strC2, modifierB2, j3, gapComposerH, 8, 0);
            gapComposer = gapComposerH;
            gapComposer.Z(true);
            gapComposer.Z(true);
        } else {
            modifier2 = modifierE;
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new b0(modifier2, str, str2, z, str3, lookSkuTypeUiModel, i5, i6, function2, function4, function5, i4);
        }
    }
}
