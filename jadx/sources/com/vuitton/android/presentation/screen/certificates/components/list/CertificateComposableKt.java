package com.vuitton.android.presentation.screen.certificates.components.list;

import android.content.Context;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$SpaceBetween$1;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.foundation.layout.WindowInsets_androidKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.TextKt;
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
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVCustomBottomSheetContentKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVStandardTopBarKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.contact.compose.ContactUsBottomSheetKt;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.extensions.ResourcesExtKt;
import com.vuitton.android.presentation.screen.certificates.CertificateViewModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateDiamondUiModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateUiModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateViewState;
import defpackage.al;
import defpackage.bl;
import defpackage.cl;
import defpackage.d21;
import defpackage.dl;
import defpackage.g1;
import defpackage.n0;
import defpackage.n00;
import defpackage.r;
import defpackage.tf;
import defpackage.tj;
import defpackage.u;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.reflect.KFunction;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002¨\u0006\t²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002²\u0006\f\u0010\u0005\u001a\u00020\u00048\nX\u008a\u0084\u0002²\u0006\u0012\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;", "currentCertificate", "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState;", "viewState", "Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;", "contactUsUiModel", "Lkotlin/Function0;", "", "currentOnBackPressed", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CertificateComposableKt {
    /* JADX WARN: Code duplicated, block: B:125:0x0385  */
    /* JADX WARN: Code duplicated, block: B:126:0x03c9  */
    /* JADX WARN: Code duplicated, block: B:129:0x03dd  */
    /* JADX WARN: Code duplicated, block: B:130:0x03e0  */
    /* JADX WARN: Code duplicated, block: B:136:0x03f7  */
    /* JADX WARN: Code duplicated, block: B:139:0x0409  */
    /* JADX WARN: Code duplicated, block: B:140:0x040b  */
    /* JADX WARN: Code duplicated, block: B:143:0x0415  */
    /* JADX WARN: Code duplicated, block: B:149:0x0426  */
    public static final void a(Modifier modifier, CertificateViewModel certificateViewModel, Function0 function0, Function1 function1, Function1 function2, Function1 function3, Function1 function4, Function1 function5, Function0 function6, Function0 function7, Function1 function8, final Function3 function9, Function0 function10, Function2 function11, Composer composer, int i2) {
        Function3 function12;
        CertificateViewModel certificateViewModel2;
        GapComposer gapComposer;
        Function0 function13;
        Modifier modifier2;
        boolean z;
        MutableState mutableState;
        boolean z2;
        int i3;
        DTFunctionNameModifier dTFunctionNameModifier;
        boolean z3;
        boolean zD;
        Object objX;
        boolean z4;
        boolean z5;
        Object objX2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "CertificateComposable");
        }
        certificateViewModel.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        function6.getClass();
        function7.getClass();
        function8.getClass();
        function9.getClass();
        function10.getClass();
        function11.getClass();
        GapComposer gapComposerH = composer.h(-1983730010);
        int i4 = i2 | 6 | (gapComposerH.K(certificateViewModel) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192) | (gapComposerH.y(function3) ? 131072 : 65536) | (gapComposerH.y(function4) ? 1048576 : 524288) | (gapComposerH.y(function5) ? 8388608 : 4194304) | (gapComposerH.y(function6) ? 67108864 : 33554432) | (gapComposerH.y(function7) ? PKIFailureInfo.duplicateCertReq : 268435456);
        Modifier modifier3 = modifierE;
        int i5 = (gapComposerH.y(function8) ? 4 : 2) | (gapComposerH.y(function9) ? 32 : 16) | (gapComposerH.y(function10) ? 256 : 128) | (gapComposerH.y(function11) ? 2048 : 1024);
        if (gapComposerH.p(i4 & 1, ((i4 & 306783379) == 306783378 && (i5 & 1171) == 1170) ? false : true)) {
            DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("CertificateComposable");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Unit unit = Unit.f71739a;
            int i6 = i4 & 112;
            boolean z6 = i6 == 32;
            Object objX3 = gapComposerH.x();
            boolean z7 = z6;
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z7 || objX3 == composer$Companion$Empty$1) {
                objX3 = new CertificateComposableKt$CertificateComposable$1$1(certificateViewModel, null);
                gapComposerH.q(objX3);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX3);
            Boolean bool = Boolean.TRUE;
            boolean z8 = ((i4 & 7168) == 2048) | (i6 == 32);
            Object objX4 = gapComposerH.x();
            if (z8 || objX4 == composer$Companion$Empty$1) {
                objX4 = new CertificateComposableKt$CertificateComposable$2$1(certificateViewModel, function1, null);
                gapComposerH.q(objX4);
            }
            EffectsKt.e(gapComposerH, bool, (Function2) objX4);
            Object objX5 = gapComposerH.x();
            if (objX5 == composer$Companion$Empty$1) {
                objX5 = SnapshotStateKt.g(new CertificateDiamondUiModel(null, null, null, null, null, null, null, null, null, null, null, null, null, null, 16383, null));
                gapComposerH.q(objX5);
            }
            LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
            final LVModalBottomSheetState lVModalBottomSheetStateF2 = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
            LVModalBottomSheetState lVModalBottomSheetStateF3 = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
            MutableState mutableStateB = SnapshotStateKt.b(certificateViewModel.getP(), gapComposerH);
            final MutableState mutableStateA = SnapshotStateKt.a(certificateViewModel.i(), new ContactUsUiModel(false, null, null, null, null, null, null, null, false, false, false, null, 4095, null), null, gapComposerH, 0, 2);
            final MutableState mutableStateL = SnapshotStateKt.l(function7, gapComposerH);
            MutableState mutableState2 = (MutableState) objX5;
            int i7 = i6;
            final int iB = (int) ResourcesExtKt.b(WindowInsetsKt.e(WindowInsets_androidKt.c(gapComposerH), gapComposerH).getF5031b());
            final int iB2 = (int) ResourcesExtKt.b(WindowInsetsKt.e(WindowInsets_androidKt.c(gapComposerH), gapComposerH).getD());
            int i8 = i5;
            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(1099764702, new Function2() { // from class: com.vuitton.android.presentation.screen.certificates.components.list.a
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Integer) obj2).intValue();
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        ContactUsUiModel contactUsUiModel = (ContactUsUiModel) mutableStateA.getF10755b();
                        LVModalBottomSheetState lVModalBottomSheetState = lVModalBottomSheetStateF2;
                        boolean zY = composer2.y(lVModalBottomSheetState);
                        Object objX6 = composer2.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                        if (zY || objX6 == composer$Companion$Empty$2) {
                            CertificateComposableKt$CertificateComposable$topBar$1$1$1 certificateComposableKt$CertificateComposable$topBar$1$1$1 = new CertificateComposableKt$CertificateComposable$topBar$1$1$1(0, lVModalBottomSheetState, LVModalBottomSheetState.class, "show", "show()V", 0);
                            composer2.q(certificateComposableKt$CertificateComposable$topBar$1$1$1);
                            objX6 = certificateComposableKt$CertificateComposable$topBar$1$1$1;
                        }
                        Function0 function14 = (Function0) ((KFunction) objX6);
                        Function3 function15 = function9;
                        boolean zK = composer2.K(function15);
                        int i9 = iB;
                        boolean zD2 = zK | composer2.d(i9);
                        int i10 = iB2;
                        boolean zD3 = zD2 | composer2.d(i10);
                        Object objX7 = composer2.x();
                        if (zD3 || objX7 == composer$Companion$Empty$2) {
                            objX7 = new tj(function15, i9, i10, 2);
                            composer2.q(objX7);
                        }
                        CertificateComposableKt.c(0, composer2, contactUsUiModel, function14, (Function0) mutableStateL.getF10755b(), (Function1) objX7);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH);
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Object objX6 = gapComposerH.x();
            if (objX6 == composer$Companion$Empty$1) {
                objX6 = n00.b(gapComposerH);
            }
            SnackbarHostState snackbarHostState = (SnackbarHostState) objX6;
            boolean zY = (i7 == 32) | gapComposerH.y(context);
            Object objX7 = gapComposerH.x();
            if (zY || objX7 == composer$Companion$Empty$1) {
                objX7 = new CertificateComposableKt$CertificateComposable$3$1(certificateViewModel, snackbarHostState, context, null);
                gapComposerH.q(objX7);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX7);
            CertificateViewState certificateViewState = (CertificateViewState) mutableStateB.getF10755b();
            if (certificateViewState instanceof CertificateViewState.Error) {
                gapComposerH.L(1451881576);
                CertificateErrorScreenKt.a(composableLambdaImplB, function6, gapComposerH, ((i4 >> 21) & 112) | 6);
                z = false;
                gapComposerH.Z(false);
            } else {
                z = false;
                if (certificateViewState instanceof CertificateViewState.Loading) {
                    gapComposerH.L(1452071420);
                    CertificateLoadingScreenKt.a(composableLambdaImplB, gapComposerH, 6);
                    gapComposerH.Z(false);
                } else {
                    if (!(certificateViewState instanceof CertificateViewState.Success)) {
                        throw d21.u(gapComposerH, 601023629, false);
                    }
                    gapComposerH.L(1452241765);
                    CertificateViewState certificateViewState2 = (CertificateViewState) mutableStateB.getF10755b();
                    certificateViewState2.getClass();
                    CertificateViewState.Success success = (CertificateViewState.Success) certificateViewState2;
                    if (success.f55880a.isEmpty()) {
                        gapComposerH.L(1452343352);
                        CertificateEmptyScreenKt.a(composableLambdaImplB, function0, gapComposerH, ((i4 >> 3) & 112) | 6);
                        gapComposerH.Z(false);
                        z2 = false;
                        dTFunctionNameModifier = dTFunctionNameModifier2;
                        i3 = 32;
                        gapComposer = gapComposerH;
                    } else {
                        gapComposerH.L(1452530716);
                        boolean zY2 = ((i4 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) | gapComposerH.y(lVModalBottomSheetStateF);
                        Object objX8 = gapComposerH.x();
                        if (zY2 || objX8 == composer$Companion$Empty$1) {
                            mutableState = mutableState2;
                            objX8 = new n0(function3, lVModalBottomSheetStateF, mutableState, 15);
                            gapComposerH.q(objX8);
                        } else {
                            mutableState = mutableState2;
                        }
                        mutableState2 = mutableState;
                        z2 = false;
                        i3 = 32;
                        gapComposer = gapComposerH;
                        dTFunctionNameModifier = dTFunctionNameModifier2;
                        CertificateScreenKt.b(dTFunctionNameModifier, composableLambdaImplB, snackbarHostState, success, function0, function2, (Function1) objX8, function8, function11, gapComposer, 438 | ((i4 << 6) & 57344) | ((i4 << 3) & ImageMetadata.JPEG_GPS_COORDINATES) | ((i8 << 21) & 29360128) | ((i8 << 15) & 234881024));
                        gapComposer.Z(false);
                    }
                    gapComposer.Z(z2);
                }
                if (lVModalBottomSheetStateF.a()) {
                    gapComposer.L(1453360090);
                    LVModalBottomSheetKt.b(null, StringResources_androidKt.c(gapComposer, R.string.alt_close), null, lVModalBottomSheetStateF, null, 0L, false, null, ComposableLambdaKt.b(-2116440841, new r(lVModalBottomSheetStateF, function4, function5, mutableState2, 6), gapComposer), gapComposer, (LVModalBottomSheetState.f48797e << 9) | 100663296, 245);
                    gapComposer.Z(z2);
                } else {
                    gapComposer.L(1454044508);
                    gapComposer.Z(z2);
                }
                ContactUsUiModel contactUsUiModel = (ContactUsUiModel) mutableStateA.getF10755b();
                if ((i8 & 112) == i3) {
                    z3 = true;
                } else {
                    z3 = z2;
                }
                zD = z3 | gapComposer.d(iB) | gapComposer.d(iB2);
                objX = gapComposer.x();
                if (!zD || objX == composer$Companion$Empty$1) {
                    function12 = function9;
                    objX = new tj(function12, iB, iB2, 3);
                    gapComposer.q(objX);
                } else {
                    function12 = function9;
                }
                Function1 function14 = (Function1) objX;
                if (i7 != i3) {
                    z4 = z2;
                } else {
                    z4 = true;
                }
                if ((i8 & 896) == 256) {
                    z2 = true;
                }
                z5 = z2 | z4;
                objX2 = gapComposer.x();
                if (!z5 || objX2 == composer$Companion$Empty$1) {
                    certificateViewModel2 = certificateViewModel;
                    function13 = function10;
                    objX2 = new tf(certificateViewModel2, function13, 17);
                    gapComposer.q(objX2);
                } else {
                    certificateViewModel2 = certificateViewModel;
                    function13 = function10;
                }
                int i9 = LVModalBottomSheetState.f48797e;
                ContactUsBottomSheetKt.a(contactUsUiModel, lVModalBottomSheetStateF2, lVModalBottomSheetStateF3, function14, (Function0) objX2, gapComposer, (i9 << 3) | (i9 << 6));
                modifier2 = dTFunctionNameModifier;
            }
            i7 = i7;
            lVModalBottomSheetStateF = lVModalBottomSheetStateF;
            iB = iB;
            iB2 = iB2;
            z2 = z;
            composer$Companion$Empty$1 = composer$Companion$Empty$1;
            i8 = i8;
            dTFunctionNameModifier = dTFunctionNameModifier2;
            i3 = 32;
            gapComposer = gapComposerH;
            if (lVModalBottomSheetStateF.a()) {
                gapComposer.L(1453360090);
                LVModalBottomSheetKt.b(null, StringResources_androidKt.c(gapComposer, R.string.alt_close), null, lVModalBottomSheetStateF, null, 0L, false, null, ComposableLambdaKt.b(-2116440841, new r(lVModalBottomSheetStateF, function4, function5, mutableState2, 6), gapComposer), gapComposer, (LVModalBottomSheetState.f48797e << 9) | 100663296, 245);
                gapComposer.Z(z2);
            } else {
                gapComposer.L(1454044508);
                gapComposer.Z(z2);
            }
            ContactUsUiModel contactUsUiModel2 = (ContactUsUiModel) mutableStateA.getF10755b();
            if ((i8 & 112) == i3) {
                z3 = true;
            } else {
                z3 = z2;
            }
            zD = z3 | gapComposer.d(iB) | gapComposer.d(iB2);
            objX = gapComposer.x();
            if (zD) {
                function12 = function9;
                objX = new tj(function12, iB, iB2, 3);
                gapComposer.q(objX);
            } else {
                function12 = function9;
                objX = new tj(function12, iB, iB2, 3);
                gapComposer.q(objX);
            }
            Function1 function15 = (Function1) objX;
            if (i7 != i3) {
                z4 = z2;
            } else {
                z4 = true;
            }
            if ((i8 & 896) == 256) {
                z2 = true;
            }
            z5 = z2 | z4;
            objX2 = gapComposer.x();
            if (z5) {
                certificateViewModel2 = certificateViewModel;
                function13 = function10;
                objX2 = new tf(certificateViewModel2, function13, 17);
                gapComposer.q(objX2);
            } else {
                certificateViewModel2 = certificateViewModel;
                function13 = function10;
                objX2 = new tf(certificateViewModel2, function13, 17);
                gapComposer.q(objX2);
            }
            int i10 = LVModalBottomSheetState.f48797e;
            ContactUsBottomSheetKt.a(contactUsUiModel2, lVModalBottomSheetStateF2, lVModalBottomSheetStateF3, function15, (Function0) objX2, gapComposer, (i10 << 3) | (i10 << 6));
            modifier2 = dTFunctionNameModifier;
        } else {
            function12 = function9;
            certificateViewModel2 = certificateViewModel;
            gapComposer = gapComposerH;
            function13 = function10;
            gapComposer.D();
            modifier2 = modifier3;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new al(modifier2, certificateViewModel2, function0, function1, function2, function3, function4, function5, function6, function7, function8, function12, function13, function11, i2);
        }
    }

    public static final void b(Modifier modifier, String str, String str2, Composer composer, int i2, int i3) {
        int i4;
        GapComposer gapComposer;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "CertificateProductRow");
        }
        str.getClass();
        str2.getClass();
        GapComposer gapComposerH = composer.h(2012100550);
        int i5 = i3 & 1;
        if (i5 != 0) {
            i4 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.K(str) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.K(str2) ? 256 : 128;
        }
        if (gapComposerH.p(i4 & 1, (i4 & 147) != 146)) {
            if (i5 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("CertificateProductRow");
            }
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierM = PaddingKt.m(SizeKt.d(dTFunctionNameModifier, 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            Arrangement$SpaceBetween$1 arrangement$SpaceBetween$1 = Arrangement.g;
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$SpaceBetween$1, Alignment.Companion.l, gapComposerH, 54);
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
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).m;
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.l;
            int i6 = i4;
            TextKt.c(str, n00.g("CertificateProductRow", "certificateList_attributeTitle_text"), j2, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle, gapComposerH, (i4 >> 3) & 14, 0, 131064);
            TextKt.c(str2, n00.g("CertificateProductRow", "certificateList_attributeValue_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, (i6 >> 6) & 14, 0, 131064);
            gapComposer = gapComposerH;
            gapComposer.Z(true);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new dl(dTFunctionNameModifier, str, str2, i2, i3, 0);
        }
    }

    public static final void c(int i2, Composer composer, ContactUsUiModel contactUsUiModel, Function0 function0, Function0 function1, Function1 function2) {
        GapComposer gapComposerH = composer.h(-146949855);
        int i3 = i2 | (gapComposerH.K(contactUsUiModel) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.y(function2) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LVStandardTopBarKt.a(null, null, false, StringResources_androidKt.c(gapComposerH, R.string.my_certificate_title), null, null, function1, ComposableLambdaKt.b(-1130961440, new bl(contactUsUiModel, function0, function2, 0), gapComposerH), null, null, null, gapComposerH, ((i3 << 9) & 3670016) | 12582912, 0, 3895);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new cl(contactUsUiModel, function0, function2, function1, i2);
        }
    }

    public static final void d(CertificateUiModel certificateUiModel, Function1 function1, Function1 function2, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(-109438814);
        int i3 = i2 | (gapComposerH.K(certificateUiModel) ? 4 : 2) | (gapComposerH.y(function1) ? 32 : 16) | (gapComposerH.y(function2) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LVCustomBottomSheetContentKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, StringResources_androidKt.c(gapComposerH, R.string.certificate_transfer_warning_title), null, null, null, null, false, null, null, ComposableLambdaKt.b(1731597485, new g1(function1, certificateUiModel, function2, 11), gapComposerH), gapComposerH, 0, 48, 2043);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new u((Object) certificateUiModel, function1, (Object) function2, i2, 20);
        }
    }
}
