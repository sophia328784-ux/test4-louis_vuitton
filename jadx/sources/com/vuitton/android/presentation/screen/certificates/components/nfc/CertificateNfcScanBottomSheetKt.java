package com.vuitton.android.presentation.screen.certificates.components.nfc;

import androidx.compose.animation.AnimatedContentKt;
import androidx.compose.animation.AnimatedContentScope;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.compose.LottieAnimatable;
import com.airbnb.lottie.compose.LottieAnimatableKt;
import com.airbnb.lottie.compose.LottieAnimationKt;
import com.airbnb.lottie.compose.LottieCompositionResultImpl;
import com.airbnb.lottie.compose.LottieCompositionSpec;
import com.airbnb.lottie.compose.RememberLottieCompositionKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.screen.certificates.nfc.model.NfcScanState;
import defpackage.am;
import defpackage.b3;
import defpackage.jh;
import defpackage.pq0;
import defpackage.r;
import defpackage.tr;
import defpackage.v40;
import defpackage.z;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u0004\u0018\u00010\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/airbnb/lottie/LottieComposition;", "composition", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CertificateNfcScanBottomSheetKt {
    public static final void a(NfcScanState nfcScanState, LVModalBottomSheetState lVModalBottomSheetState, Function0 function0, Function0 function1, Function0 function2, Composer composer, int i2) {
        int i3;
        Object obj;
        nfcScanState.getClass();
        lVModalBottomSheetState.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(747565957);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(nfcScanState) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= (i2 & 64) == 0 ? gapComposerH.K(lVModalBottomSheetState) : gapComposerH.y(lVModalBottomSheetState) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function0) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function1) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            obj = function2;
            i3 |= gapComposerH.y(obj) ? 16384 : 8192;
        } else {
            obj = function2;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LVModalBottomSheetKt.b(null, StringResources_androidKt.c(gapComposerH, R.string.alt_close), function1, lVModalBottomSheetState, null, 0L, false, null, ComposableLambdaKt.b(-643742661, new r(9, nfcScanState, obj, function0, function1), gapComposerH), gapComposerH, ((i3 >> 3) & 896) | 100663296 | (LVModalBottomSheetState.f48797e << 9) | ((i3 << 6) & 7168), 241);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new b3(nfcScanState, lVModalBottomSheetState, function0, function1, function2, i2, 7, false);
        }
    }

    public static final void b(NfcScanState nfcScanState, final Function0 function0, final Function0 function1, final Function0 function2, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(-1465077240);
        int i3 = i2 | (gapComposerH.K(nfcScanState) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = new jh(26);
                gapComposerH.q(objX);
            }
            AnimatedContentKt.b(nfcScanState, null, (Function1) objX, null, "NfcScanStateAnimation", null, ComposableLambdaKt.b(-819733818, new Function4() { // from class: com.vuitton.android.presentation.screen.certificates.components.nfc.a
                /* JADX WARN: Code duplicated, block: B:87:0x029b  */
                @Override // kotlin.jvm.functions.Function4
                public final Object g(Object obj, Object obj2, Object obj3, Object obj4) {
                    int i4;
                    int i5;
                    Integer numValueOf;
                    float f2;
                    Integer num;
                    Integer numValueOf2 = Integer.valueOf(R.string.btn_cancel);
                    NfcScanState nfcScanState2 = (NfcScanState) obj2;
                    Composer composer2 = (Composer) obj3;
                    int iIntValue = ((Integer) obj4).intValue();
                    ((AnimatedContentScope) obj).getClass();
                    nfcScanState2.getClass();
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    Modifier modifierD = tr.d("CertificateNfcScanBottomSheetContent$lambda$1", 1.0f);
                    Alignment.f8582a.getClass();
                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.o, composer2, 48);
                    int iHashCode = Long.hashCode(composer2.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                    Modifier modifierC = ComposedModifierKt.c(composer2, modifierD);
                    ComposeUiNode.b0.getClass();
                    Function0 function3 = ComposeUiNode.Companion.f9641b;
                    if (composer2.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer2.B();
                    if (composer2.getS()) {
                        composer2.C(function3);
                    } else {
                        composer2.o();
                    }
                    Updater.c(composer2, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                    boolean z = nfcScanState2 instanceof NfcScanState.Scanning;
                    if (z || (nfcScanState2 instanceof NfcScanState.Processing)) {
                        i4 = R.raw.animation_nfc_scan_in_progress;
                    } else if (nfcScanState2 instanceof NfcScanState.Success) {
                        i4 = R.raw.animation_nfc_scan_success;
                    } else {
                        if (!(nfcScanState2 instanceof NfcScanState.Error) && !(nfcScanState2 instanceof NfcScanState.NfcDisabled)) {
                            v40.g();
                            return null;
                        }
                        i4 = R.raw.animation_nfc_scan_error;
                    }
                    LottieCompositionResultImpl lottieCompositionResultImplC = RememberLottieCompositionKt.c(new LottieCompositionSpec.RawRes(i4), composer2, 0);
                    LottieAnimatable lottieAnimatableA = LottieAnimatableKt.a(composer2);
                    LottieComposition f10755b = lottieCompositionResultImplC.getF10755b();
                    int i6 = (iIntValue & 112) ^ 48;
                    boolean z2 = true;
                    boolean zK = ((i6 > 32 && composer2.K(nfcScanState2)) || (iIntValue & 48) == 32) | composer2.K(lottieCompositionResultImplC) | composer2.K(lottieAnimatableA);
                    Object objX2 = composer2.x();
                    Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (zK || objX2 == composer$Companion$Empty$1) {
                        objX2 = new CertificateNfcScanBottomSheetKt$CertificateNfcScanBottomSheetContent$2$1$1$1(lottieCompositionResultImplC, lottieAnimatableA, nfcScanState2, null);
                        composer2.q(objX2);
                    }
                    EffectsKt.e(composer2, f10755b, (Function2) objX2);
                    Boolean boolValueOf = Boolean.valueOf(lottieAnimatableA.isPlaying());
                    Float fValueOf = Float.valueOf(lottieAnimatableA.c());
                    if ((i6 <= 32 || !composer2.K(nfcScanState2)) && (iIntValue & 48) != 32) {
                        z2 = false;
                    }
                    boolean zK2 = z2 | composer2.K(lottieAnimatableA);
                    Function0 function4 = function1;
                    boolean zK3 = zK2 | composer2.K(function4);
                    Object objX3 = composer2.x();
                    if (zK3 || objX3 == composer$Companion$Empty$1) {
                        objX3 = new CertificateNfcScanBottomSheetKt$CertificateNfcScanBottomSheetContent$2$1$2$1(nfcScanState2, lottieAnimatableA, function4, null);
                        composer2.q(objX3);
                    }
                    EffectsKt.f(boolValueOf, fValueOf, nfcScanState2, (Function2) objX3, composer2);
                    LottieComposition f10755b2 = lottieCompositionResultImplC.getF10755b();
                    boolean zK4 = composer2.K(lottieAnimatableA);
                    Object objX4 = composer2.x();
                    if (zK4 || objX4 == composer$Companion$Empty$1) {
                        objX4 = new am(lottieAnimatableA, 0);
                        composer2.q(objX4);
                    }
                    LottieAnimationKt.b(f10755b2, (Function0) objX4, null, false, false, false, false, null, false, null, null, null, false, false, null, null, false, composer2, 0, 0, 131068);
                    Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("CertificateNfcScanBottomSheetContent$lambda$1"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48415c, 7);
                    int i7 = R.string.certificate_nfc_scan_inprogress_android;
                    if (!z && !(nfcScanState2 instanceof NfcScanState.Processing)) {
                        if (nfcScanState2 instanceof NfcScanState.Success) {
                            i7 = R.string.certificate_nfc_scan_success_android;
                        } else if (nfcScanState2 instanceof NfcScanState.Error) {
                            i7 = R.string.certificate_nfc_scan_error_android;
                        } else {
                            if (!(nfcScanState2 instanceof NfcScanState.NfcDisabled)) {
                                v40.g();
                                return null;
                            }
                            i7 = R.string.certificate_nfc_scan_disabled_title_android;
                        }
                    }
                    String strC = StringResources_androidKt.c(composer2, i7);
                    TextStyle textStyle = LVAppDesignKitTheme.n(composer2).f48426f;
                    long j2 = LVAppDesignKitTheme.c(composer2).f48361b.f48382k;
                    TextAlign.f10959b.getClass();
                    int i8 = TextAlign.f10961e;
                    TextKt.c(strC, modifierM, j2, 0L, null, 0L, null, new TextAlign(i8), 0L, 0, false, 0, 0, null, textStyle, composer2, 0, 0, 130040);
                    Modifier modifierM2 = PaddingKt.m(new DTFunctionNameModifier("CertificateNfcScanBottomSheetContent$lambda$1"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, 7);
                    if (z) {
                        i5 = R.string.certificate_nfc_scan_description;
                    } else if (nfcScanState2 instanceof NfcScanState.Processing) {
                        i5 = R.string.certificate_nfc_scan_authenticating;
                    } else if (nfcScanState2 instanceof NfcScanState.Success) {
                        i5 = R.string.certificate_nfc_scan_authenticated;
                    } else if (nfcScanState2 instanceof NfcScanState.Error) {
                        i5 = R.string.certificate_nfc_scan_error;
                    } else {
                        if (!(nfcScanState2 instanceof NfcScanState.NfcDisabled)) {
                            v40.g();
                            return null;
                        }
                        i5 = R.string.certificate_nfc_scan_disabled_description_android;
                    }
                    TextKt.c(StringResources_androidKt.c(composer2, i5), modifierM2, LVAppDesignKitTheme.c(composer2).f48361b.l, 0L, null, 0L, null, new TextAlign(i8), 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer2).g, composer2, 0, 0, 130040);
                    if (z) {
                        numValueOf = numValueOf2;
                    } else if ((nfcScanState2 instanceof NfcScanState.Processing) || (nfcScanState2 instanceof NfcScanState.Success)) {
                        numValueOf = null;
                    } else if (nfcScanState2 instanceof NfcScanState.Error) {
                        numValueOf = numValueOf2;
                    } else {
                        if (!(nfcScanState2 instanceof NfcScanState.NfcDisabled)) {
                            v40.g();
                            return null;
                        }
                        numValueOf = Integer.valueOf(R.string.cta_open_settings);
                    }
                    if (numValueOf == null) {
                        composer2.L(-1393960532);
                        composer2.F();
                    } else {
                        composer2.L(-1393960531);
                        int iIntValue2 = numValueOf.intValue();
                        Modifier modifierD2 = tr.d("CertificateNfcScanBottomSheetContent$lambda$1", 1.0f);
                        if ((nfcScanState2 instanceof NfcScanState.NfcDisabled ? numValueOf2 : null) != null) {
                            composer2.L(676081430);
                            f2 = LVAppDesignKitTheme.l(composer2).f48416e;
                            composer2.F();
                        } else {
                            composer2.L(676188442);
                            f2 = LVAppDesignKitTheme.d(composer2).f48383a;
                            composer2.F();
                        }
                        LVButtonKt.b(0, 504, composer2, PaddingKt.m(modifierD2, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, 7), LVAppDesignKitTheme.b(composer2).f48446a, null, null, StringResources_androidKt.c(composer2, iIntValue2), function0, false, false, false);
                        composer2.F();
                    }
                    if (!(nfcScanState2 instanceof NfcScanState.NfcDisabled)) {
                        num = null;
                    }
                    if (num == null) {
                        num = numValueOf2;
                        composer2.L(-1393257049);
                        composer2.F();
                    } else {
                        composer2.L(-1393257048);
                        int iIntValue3 = num.intValue();
                        Function0 function5 = function2;
                        if (function5 == null) {
                            num = numValueOf2;
                            composer2.L(-346719315);
                            composer2.F();
                        } else {
                            num = numValueOf2;
                            LVButtonKt.b(6, 504, composer2, pq0.h(1.0f, -346719314, composer2, "CertificateNfcScanBottomSheetContent$lambda$1"), LVAppDesignKitTheme.b(composer2).f48449e, null, null, StringResources_androidKt.c(composer2, iIntValue3), function5, false, false, false);
                            composer2.F();
                        }
                        composer2.F();
                    }
                    composer2.r();
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, (i3 & 14) | 1597824, 42);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new z((Object) nfcScanState, (Object) function0, (Object) function1, (Object) function2, i2, 21);
        }
    }
}
