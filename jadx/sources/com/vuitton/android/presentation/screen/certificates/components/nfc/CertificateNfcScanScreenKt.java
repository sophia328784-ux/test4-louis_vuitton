package com.vuitton.android.presentation.screen.certificates.components.nfc;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.material3.ScaffoldKt;
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
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.compose.AnimateLottieCompositionAsStateKt;
import com.airbnb.lottie.compose.LottieAnimatable;
import com.airbnb.lottie.compose.LottieAnimationKt;
import com.airbnb.lottie.compose.LottieCompositionResultImpl;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVLinkKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.contact.ContactUsTracker;
import com.vuitton.android.presentation.contact.ContactUsTrackerEntryPointKt;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.screen.certificates.nfc.model.CertificateNfcScanViewState;
import defpackage.cj;
import defpackage.h9;
import defpackage.jh;
import defpackage.k4;
import defpackage.n00;
import defpackage.o0;
import defpackage.q;
import defpackage.x;
import defpackage.z;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002¨\u0006\u0004²\u0006\u000e\u0010\u0001\u001a\u0004\u0018\u00010\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002"}, d2 = {"Lcom/airbnb/lottie/LottieComposition;", "composition", "", "progress", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CertificateNfcScanScreenKt {
    public static final void a(CertificateNfcScanViewState certificateNfcScanViewState, Function0 function0, Function3 function3, Function0 function1, Function0 function2, Function0 function4, Function0 function5, Function0 function6, Function0 function7, Composer composer, int i2) {
        int i3;
        Function0 function8;
        GapComposer gapComposer;
        certificateNfcScanViewState.getClass();
        function0.getClass();
        function3.getClass();
        function1.getClass();
        function2.getClass();
        function4.getClass();
        function5.getClass();
        function6.getClass();
        GapComposer gapComposerH = composer.h(-337382282);
        if ((i2 & 6) == 0) {
            i3 = ((i2 & 8) == 0 ? gapComposerH.K(certificateNfcScanViewState) : gapComposerH.y(certificateNfcScanViewState) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(function0) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function3) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function1) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function2) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(function4) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i3 |= gapComposerH.y(function5) ? 1048576 : 524288;
        }
        if ((12582912 & i2) == 0) {
            i3 |= gapComposerH.y(function6) ? 8388608 : 4194304;
        }
        if ((100663296 & i2) == 0) {
            function8 = function7;
            i3 |= gapComposerH.y(function8) ? 67108864 : 33554432;
        } else {
            function8 = function7;
        }
        if (gapComposerH.p(i3 & 1, (38347923 & i3) != 38347922)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
            LVModalBottomSheetState lVModalBottomSheetStateF2 = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = new jh(27);
                gapComposerH.q(objX);
            }
            gapComposer = gapComposerH;
            ScaffoldKt.a(WindowInsetsPadding_androidKt.a(new DTFunctionNameModifier("CertificateNfcScanScreen")), ComposableLambdaKt.b(-423153102, new o0(function0, 22), gapComposerH), null, null, null, 0, 0L, 0L, null, ComposableLambdaKt.b(-511880121, new h9(certificateNfcScanViewState, function8, lVModalBottomSheetStateF, function2, lVModalBottomSheetStateF2, function3, function1, LVModalBottomSheetKt.f(48, 5, gapComposerH, (Function1) objX), function4, function6, function5), gapComposerH), gapComposer, 805306416, 508);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new k4(certificateNfcScanViewState, function0, function3, function1, function2, function4, function5, function6, function7, i2, 2);
        }
    }

    public static final void b(Modifier modifier, ContactUsUiModel contactUsUiModel, Function0 function0, Function0 function1, Composer composer, int i2) {
        Function0 function2;
        GapComposer gapComposer;
        ContactUsUiModel contactUsUiModel2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "CertificateNfcScanTutorialContent");
        }
        GapComposer gapComposerH = composer.h(-704551699);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | (gapComposerH.K(modifierE) ? 4 : 2) | (gapComposerH.K(contactUsUiModel) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            ContactUsTracker contactUsTracker = (ContactUsTracker) gapComposerH.k(ContactUsTrackerEntryPointKt.f51125a);
            LottieCompositionResultImpl lottieCompositionResultImplH = n00.h(R.raw.animation_nfc_tutorial, gapComposerH, 0);
            LottieAnimatable lottieAnimatableA = AnimateLottieCompositionAsStateKt.a(lottieCompositionResultImplH.getF10755b(), false, null, Integer.MAX_VALUE, gapComposerH, 958);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierE);
            ComposeUiNode.b0.getClass();
            Function0 function3 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function3);
            } else {
                gapComposerH.o();
            }
            Function2 function4 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function4);
            Function2 function5 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function5);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function6 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function6);
            Function1 function7 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function7);
            Function2 function8 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function8);
            Modifier modifierD = SizeKt.d(new DTFunctionNameModifier("CertificateNfcScanTutorialContent"), 1.0f);
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.f4944a;
            Modifier modifierA = columnScopeInstance.a(modifierD, 1.0f, true);
            BiasAlignment.Horizontal horizontal = Alignment.Companion.o;
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 48);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierA);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function3);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA2, function4);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function5);
            cj.t(iHashCode2, gapComposerH, function6, gapComposerH, function7);
            BoxKt.a(columnScopeInstance.a(n00.e(gapComposerH, modifierC2, function8, "CertificateNfcScanTutorialContent", 1.0f), 1.0f, true), gapComposerH, 0);
            Modifier modifierK = PaddingKt.k(new DTFunctionNameModifier("CertificateNfcScanTutorialContent"), LVAppDesignKitTheme.l(gapComposerH).f48419i, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            LottieComposition f10755b = lottieCompositionResultImplH.getF10755b();
            boolean zK = gapComposerH.K(lottieAnimatableA);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zK || objX == composer$Companion$Empty$1) {
                objX = new x(lottieAnimatableA, 3);
                gapComposerH.q(objX);
            }
            LottieAnimationKt.b(f10755b, (Function0) objX, modifierK, false, false, false, false, null, false, null, null, null, false, false, null, null, false, gapComposerH, 0, 0, 131064);
            BoxKt.a(columnScopeInstance.a(SizeKt.d(new DTFunctionNameModifier("CertificateNfcScanTutorialContent"), 1.0f), 2.0f, true), gapComposerH, 0);
            gapComposerH.Z(true);
            Modifier modifierM = PaddingKt.m(PaddingKt.k(SizeKt.d(new DTFunctionNameModifier("CertificateNfcScanTutorialContent"), 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48419i, 7);
            ColumnMeasurePolicy columnMeasurePolicyA3 = ColumnKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48417f), horizontal, gapComposerH, 48);
            int iHashCode3 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierM);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function3);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA3, function4);
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function5);
            cj.t(iHashCode3, gapComposerH, function6, gapComposerH, function7);
            Updater.c(gapComposerH, modifierC3, function8);
            String strC = StringResources_androidKt.c(gapComposerH, R.string.certificate_nfc_scan_tutorial_description);
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).g;
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.n;
            TextAlign.f10959b.getClass();
            boolean z = false;
            TextKt.c(strC, n00.g("CertificateNfcScanTutorialContent", "certificateUnlock_title_text"), j2, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, 0, false, 0, 0, null, textStyle, gapComposerH, 0, 0, 130040);
            LVButtonKt.b((i3 << 18) & 1879048192, 496, gapComposerH, ModifierExtKt.e(SizeKt.d(new DTFunctionNameModifier("CertificateNfcScanTutorialContent"), 1.0f), "certificateUnlock_startDetection_button"), LVAppDesignKitTheme.b(gapComposerH).f48447b, Integer.valueOf(LVAppDesignKitTheme.g(gapComposerH).X0), null, StringResources_androidKt.c(gapComposerH, R.string.certificate_nfc_scan_tutorial_cta), function1, false, false, false);
            String strC2 = StringResources_androidKt.c(gapComposerH, R.string.certificate_nfc_scan_tutorial_needhelp);
            LVColorScheme lVColorScheme = LVColorScheme.INVERT;
            Modifier modifierG = n00.g("CertificateNfcScanTutorialContent", "certificateUnlock_needHelp_button");
            boolean zY = ((i3 & 896) == 256) | gapComposerH.y(contactUsTracker);
            if ((i3 & 112) == 32) {
                z = true;
            }
            boolean z2 = zY | z;
            Object objX2 = gapComposerH.x();
            if (z2 || objX2 == composer$Companion$Empty$1) {
                contactUsUiModel2 = contactUsUiModel;
                function2 = function0;
                objX2 = new q(function2, contactUsTracker, contactUsUiModel2, 25);
                gapComposerH.q(objX2);
            } else {
                contactUsUiModel2 = contactUsUiModel;
                function2 = function0;
            }
            LVLinkKt.a(modifierG, strC2, false, lVColorScheme, false, (Function0) objX2, gapComposerH, 3072, 20);
            gapComposer = gapComposerH;
            gapComposer.Z(true);
            gapComposer.Z(true);
        } else {
            function2 = function0;
            gapComposer = gapComposerH;
            contactUsUiModel2 = contactUsUiModel;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new z((Object) modifierE, (Object) contactUsUiModel2, function2, function1, i2, 22);
        }
    }
}
