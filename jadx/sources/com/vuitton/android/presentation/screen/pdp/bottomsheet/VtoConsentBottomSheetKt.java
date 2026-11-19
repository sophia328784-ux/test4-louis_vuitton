package com.vuitton.android.presentation.screen.pdp.bottomsheet;

import android.content.res.Configuration;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.state.ToggleableStateKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.Html_androidKt;
import androidx.compose.ui.text.PlatformSpanStyle;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextLinkStyles;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVCheckboxKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyLegalConsentUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.ConsentRequirementUiModel;
import defpackage.a;
import defpackage.cj;
import defpackage.o51;
import defpackage.oi0;
import defpackage.p01;
import defpackage.r31;
import defpackage.rm;
import defpackage.tr;
import defpackage.w11;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "hasScrolledToBottom", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class VtoConsentBottomSheetKt {
    public static final void a(Modifier modifier, ConsentRequirementUiModel consentRequirementUiModel, Function1 function1, Composer composer, int i2) {
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "RequirementItem");
        }
        Modifier modifier2 = modifierE;
        consentRequirementUiModel.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(1712157802);
        int i3 = i2 | (gapComposerH.K(modifier2) ? 4 : 2) | (gapComposerH.y(consentRequirementUiModel) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierM = PaddingKt.m(ModifierExtKt.d(modifier2, LVAppDesignKitTheme.l(gapComposerH).f48416e), LVAppDesignKitTheme.l(gapComposerH).f48414b, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 12);
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.f8591k, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierM);
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
            LVCheckboxKt.a(com.vuitton.android.presentation.extensions.ModifierExtKt.a(tr.e(gapComposerH, modifierC, ComposeUiNode.Companion.d, "RequirementItem"), null, null, 7), false, ((Boolean) consentRequirementUiModel.f62164e.getF10755b()).booleanValue(), null, false, function1, gapComposerH, (i3 << 9) & ImageMetadata.JPEG_GPS_COORDINATES, 26);
            TextKt.c(consentRequirementUiModel.f62162b, PaddingKt.m(new DTFunctionNameModifier("RequirementItem"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).d, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 9), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, 0, 0, 131064);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new r31(i2, 8, modifier2, consentRequirementUiModel, function1);
        }
    }

    /* JADX WARN: Code duplicated, block: B:97:0x03d4  */
    public static final void b(BeautyLegalConsentUiModel beautyLegalConsentUiModel, Function1 function1, Function0 function0, Function1 function2, Composer composer, int i2) {
        Object objA;
        boolean z;
        BeautyLegalConsentUiModel beautyLegalConsentUiModel2 = beautyLegalConsentUiModel;
        Function0 function3 = function0;
        beautyLegalConsentUiModel2.getClass();
        String str = beautyLegalConsentUiModel2.f62140a;
        function1.getClass();
        function3.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(-221791973);
        Applier applier = gapComposerH.f7976a;
        int i3 = (i2 & 6) == 0 ? (gapComposerH.y(beautyLegalConsentUiModel2) ? 4 : 2) | i2 : i2;
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(function1) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function3) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function2) ? 2048 : 1024;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            float f2 = ((Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a)).screenHeightDp;
            Dp.Companion companion = Dp.f11004c;
            ScrollState scrollStateB = ScrollKt.b(gapComposerH);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) objX;
            Integer numValueOf = Integer.valueOf(((SnapshotMutableIntStateImpl) scrollStateB.f4290a).f());
            boolean zK = gapComposerH.K(scrollStateB);
            Object objX2 = gapComposerH.x();
            if (zK || objX2 == composer$Companion$Empty$1) {
                objX2 = new VtoConsentBottomSheetKt$VtoConsentBottomSheet$1$1(scrollStateB, mutableState, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, numValueOf, (Function2) objX2);
            Modifier modifierM = PaddingKt.m(WindowInsetsPadding_androidKt.b(SizeKt.d(SizeKt.h(new DTFunctionNameModifier("VtoConsentBottomSheet"), Call.Parameters.DEFAULT_CAMERA_ZOOM, f2 * 0.9f, 1), 1.0f)), LVAppDesignKitTheme.l(gapComposerH).f48417f, LVAppDesignKitTheme.l(gapComposerH).f48415c, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int i4 = i3;
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierM);
            ComposeUiNode.b0.getClass();
            Function0 function4 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function4);
            } else {
                gapComposerH.o();
            }
            Function2 function5 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function5);
            Function2 function6 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function6);
            Integer numValueOf2 = Integer.valueOf(iHashCode);
            Function2 function7 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf2, function7);
            Function1 function8 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function8);
            Function2 function9 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function9);
            Modifier modifierD = ScrollKt.d(ColumnScopeInstance.f4944a.a(new DTFunctionNameModifier("VtoConsentBottomSheet"), 1.0f, false), scrollStateB, false, 14);
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierD);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function4);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA2, function5);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function6);
            cj.t(iHashCode2, gapComposerH, function7, gapComposerH, function8);
            DTFunctionNameModifier dTFunctionNameModifierE = tr.e(gapComposerH, modifierC2, function9, "VtoConsentBottomSheet");
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = new o51(3);
                gapComposerH.q(objX3);
            }
            final int i5 = 1;
            final int i6 = 0;
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.try_on_consent_title), PaddingKt.m(SemanticsModifierKt.b(dTFunctionNameModifierE, false, (Function1) objX3), LVAppDesignKitTheme.d(gapComposerH).f48383a, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).d, 4).o(com.vuitton.android.designkit.ui.common.ModifierExtKt.e(new DTFunctionNameModifier("VtoConsentBottomSheet"), "bottomSheet_title_text")), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48426f, gapComposerH, 0, 0, 131068);
            List list = beautyLegalConsentUiModel.f62141b;
            boolean zK2 = gapComposerH.K(str);
            Object objX4 = gapComposerH.x();
            if (zK2 || objX4 == composer$Companion$Empty$1) {
                int i7 = AnnotatedString.f10418f;
                TextDecoration.f10965b.getClass();
                objA = Html_androidKt.a(str, new TextLinkStyles(new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, TextDecoration.d, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 61439, (DefaultConstructorMarker) null), null, null, null, 14, null), new rm(function1, 8));
                gapComposerH.q(objA);
            } else {
                objA = objX4;
            }
            AnnotatedString annotatedString = (AnnotatedString) objA;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("VtoConsentBottomSheet");
            Object objX5 = gapComposerH.x();
            if (objX5 == composer$Companion$Empty$1) {
                objX5 = new o51(4);
                gapComposerH.q(objX5);
            }
            Modifier modifierB = SemanticsModifierKt.b(dTFunctionNameModifier, true, (Function1) objX5);
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48427h;
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
            TextAlign.f10959b.getClass();
            beautyLegalConsentUiModel2 = beautyLegalConsentUiModel;
            TextKt.d(annotatedString, modifierB, j2, 0L, 0L, new TextAlign(TextAlign.g), 0L, 0, false, 0, 0, null, null, textStyle, gapComposerH, 0, 0, 261112);
            gapComposerH = gapComposerH;
            gapComposerH.L(1642046209);
            List<ConsentRequirementUiModel> list2 = list;
            for (final ConsentRequirementUiModel consentRequirementUiModel : list2) {
                Modifier modifierD2 = tr.d("VtoConsentBottomSheet", 1.0f);
                boolean zY = gapComposerH.y(consentRequirementUiModel);
                Object objX6 = gapComposerH.x();
                if (zY || objX6 == composer$Companion$Empty$1) {
                    objX6 = new Function1() { // from class: x51
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            int i8 = i6;
                            ConsentRequirementUiModel consentRequirementUiModel2 = consentRequirementUiModel;
                            switch (i8) {
                                case 0:
                                    SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                                    semanticsPropertyReceiver.getClass();
                                    Role.f10289b.getClass();
                                    SemanticsPropertiesKt.o(semanticsPropertyReceiver, Role.f10290c);
                                    SemanticsPropertiesKt.u(semanticsPropertyReceiver, ToggleableStateKt.a(((Boolean) consentRequirementUiModel2.f62164e.getF10755b()).booleanValue()));
                                    SemanticsPropertiesKt.e(semanticsPropertyReceiver, null, new hv0(consentRequirementUiModel2, 25));
                                    break;
                                default:
                                    Boolean bool = (Boolean) obj;
                                    bool.booleanValue();
                                    consentRequirementUiModel2.f62164e.setValue(bool);
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    gapComposerH.q(objX6);
                }
                Modifier modifierB2 = SemanticsModifierKt.b(modifierD2, true, (Function1) objX6);
                boolean zY2 = gapComposerH.y(consentRequirementUiModel);
                Object objX7 = gapComposerH.x();
                if (zY2 || objX7 == composer$Companion$Empty$1) {
                    objX7 = new Function1() { // from class: x51
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            int i8 = i5;
                            ConsentRequirementUiModel consentRequirementUiModel2 = consentRequirementUiModel;
                            switch (i8) {
                                case 0:
                                    SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                                    semanticsPropertyReceiver.getClass();
                                    Role.f10289b.getClass();
                                    SemanticsPropertiesKt.o(semanticsPropertyReceiver, Role.f10290c);
                                    SemanticsPropertiesKt.u(semanticsPropertyReceiver, ToggleableStateKt.a(((Boolean) consentRequirementUiModel2.f62164e.getF10755b()).booleanValue()));
                                    SemanticsPropertiesKt.e(semanticsPropertyReceiver, null, new hv0(consentRequirementUiModel2, 25));
                                    break;
                                default:
                                    Boolean bool = (Boolean) obj;
                                    bool.booleanValue();
                                    consentRequirementUiModel2.f62164e.setValue(bool);
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    gapComposerH.q(objX7);
                }
                a(modifierB2, consentRequirementUiModel, (Function1) objX7, gapComposerH, 0);
            }
            gapComposerH.Z(false);
            gapComposerH.Z(true);
            ConfigurationButton configurationButton = LVAppDesignKitTheme.b(gapComposerH).f48446a;
            Modifier modifierM2 = PaddingKt.m(tr.d("VtoConsentBottomSheet", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, 5);
            String strC = StringResources_androidKt.c(gapComposerH, R.string.shade_finder_consent_popin_accepted);
            ArrayList arrayList = new ArrayList();
            for (Object obj : list2) {
                if (((ConsentRequirementUiModel) obj).f62163c) {
                    arrayList.add(obj);
                }
            }
            if (!arrayList.isEmpty()) {
                Iterator it = arrayList.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (!((Boolean) ((ConsentRequirementUiModel) it.next()).f62164e.getF10755b()).booleanValue()) {
                        }
                    } else if (((Boolean) mutableState.getF10755b()).booleanValue()) {
                        z = true;
                    }
                    z = false;
                }
            } else if (((Boolean) mutableState.getF10755b()).booleanValue()) {
                z = true;
            } else {
                z = false;
            }
            boolean zY3 = ((i4 & 7168) == 2048) | gapComposerH.y(beautyLegalConsentUiModel2);
            Object objX8 = gapComposerH.x();
            if (zY3 || objX8 == composer$Companion$Empty$1) {
                objX8 = new p01(function2, beautyLegalConsentUiModel2, 22);
                gapComposerH.q(objX8);
            }
            LVButtonKt.b(0, 376, gapComposerH, modifierM2, configurationButton, null, null, strC, (Function0) objX8, false, z, false);
            ConfigurationButton configurationButton2 = LVAppDesignKitTheme.b(gapComposerH).f48449e;
            Modifier modifierM3 = PaddingKt.m(tr.d("VtoConsentBottomSheet", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 7);
            String strC2 = StringResources_androidKt.c(gapComposerH, R.string.shade_finder_consent_popin_refused);
            i6 = (i4 & 896) == 256 ? 1 : 0;
            Object objX9 = gapComposerH.x();
            if (i6 != 0 || objX9 == composer$Companion$Empty$1) {
                function3 = function0;
                objX9 = new w11(function3, 8);
                gapComposerH.q(objX9);
            } else {
                function3 = function0;
            }
            LVButtonKt.b(0, 504, gapComposerH, modifierM3, configurationButton2, null, null, strC2, (Function0) objX9, false, false, false);
            gapComposerH.Z(true);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new oi0(beautyLegalConsentUiModel2, function1, function3, function2, i2, 15);
        }
    }
}
