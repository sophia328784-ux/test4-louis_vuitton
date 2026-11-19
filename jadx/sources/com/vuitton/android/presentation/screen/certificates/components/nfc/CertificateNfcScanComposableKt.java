package com.vuitton.android.presentation.screen.certificates.components.nfc;

import android.app.Activity;
import android.content.Context;
import androidx.activity.compose.ActivityResultRegistryKt;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts$StartActivityForResult;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.presentation.screen.certificates.nfc.CertificateNfcScanViewModelImpl;
import com.vuitton.android.presentation.screen.certificates.nfc.model.CertificateNfcScanViewState;
import com.vuitton.android.presentation.screen.certificates.nfc.model.NfcScanState;
import defpackage.ik;
import defpackage.q;
import defpackage.tf;
import defpackage.vg;
import defpackage.w1;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/nfc/model/CertificateNfcScanViewState;", "viewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CertificateNfcScanComposableKt {
    public static final void a(CertificateNfcScanViewModelImpl certificateNfcScanViewModelImpl, Function0 function0, Function3 function3, Function0 function1, Function0 function2, Function0 function4, Function0 function5, Function0 function6, Function0 function7, Function1 function8, Composer composer, int i2) {
        GapComposer gapComposer;
        Object certificateNfcScanComposableKt$CertificateNfcScanComposable$7$1;
        char c2;
        boolean z;
        MutableState mutableState;
        CertificateNfcScanViewModelImpl certificateNfcScanViewModelImpl2 = certificateNfcScanViewModelImpl;
        function0.getClass();
        function3.getClass();
        function1.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(1429506939);
        int i3 = i2 | (gapComposerH.K(certificateNfcScanViewModelImpl2) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.y(function3) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192) | (gapComposerH.y(function4) ? 131072 : 65536) | (gapComposerH.y(function5) ? 1048576 : 524288) | (gapComposerH.y(function6) ? 8388608 : 4194304) | (gapComposerH.y(function7) ? 67108864 : 33554432) | (gapComposerH.y(function8) ? PKIFailureInfo.duplicateCertReq : 268435456);
        if (gapComposerH.p(i3 & 1, (i3 & 306783379) != 306783378)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            MutableState mutableStateB = SnapshotStateKt.b(certificateNfcScanViewModelImpl2.o, gapComposerH);
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            context.getClass();
            Activity activity = (Activity) context;
            Unit unit = Unit.f71739a;
            boolean z2 = (i3 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z2 || objX == composer$Companion$Empty$1) {
                objX = new CertificateNfcScanComposableKt$CertificateNfcScanComposable$6$1(function4, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX);
            ActivityResultContracts$StartActivityForResult activityResultContracts$StartActivityForResult = new ActivityResultContracts$StartActivityForResult();
            int i4 = i3 & 14;
            boolean zY = (i4 == 4) | gapComposerH.y(context);
            Object objX2 = gapComposerH.x();
            if (zY || objX2 == composer$Companion$Empty$1) {
                objX2 = new vg(certificateNfcScanViewModelImpl2, context, 12);
                gapComposerH.q(objX2);
            }
            ManagedActivityResultLauncher managedActivityResultLauncherA = ActivityResultRegistryKt.a(activityResultContracts$StartActivityForResult, (Function1) objX2, gapComposerH, 0);
            NfcScanState nfcScanState = ((CertificateNfcScanViewState) mutableStateB.getF10755b()).f55933b;
            boolean zK = ((i3 & 234881024) == 67108864) | gapComposerH.K(mutableStateB) | (i4 == 4) | gapComposerH.y(activity) | ((i3 & 1879048192) == 536870912);
            Object objX3 = gapComposerH.x();
            if (zK || objX3 == composer$Companion$Empty$1) {
                certificateNfcScanViewModelImpl2 = certificateNfcScanViewModelImpl;
                c2 = 0;
                z = false;
                mutableState = mutableStateB;
                certificateNfcScanComposableKt$CertificateNfcScanComposable$7$1 = new CertificateNfcScanComposableKt$CertificateNfcScanComposable$7$1(certificateNfcScanViewModelImpl2, activity, function7, function8, mutableState, null);
                gapComposerH.q(certificateNfcScanComposableKt$CertificateNfcScanComposable$7$1);
            } else {
                c2 = 0;
                z = false;
                certificateNfcScanComposableKt$CertificateNfcScanComposable$7$1 = objX3;
                mutableState = mutableStateB;
                certificateNfcScanViewModelImpl2 = certificateNfcScanViewModelImpl;
            }
            EffectsKt.e(gapComposerH, nfcScanState, (Function2) certificateNfcScanComposableKt$CertificateNfcScanComposable$7$1);
            CertificateNfcScanViewState certificateNfcScanViewState = (CertificateNfcScanViewState) mutableState.getF10755b();
            boolean z3 = ((r21 & 7168) == 2048 ? true : z) | (i4 != 4 ? z : true);
            Object objX4 = gapComposerH.x();
            if (z3 || objX4 == composer$Companion$Empty$1) {
                objX4 = new tf(certificateNfcScanViewModelImpl2, function1, 19);
                gapComposerH.q(objX4);
            }
            Function0 function9 = (Function0) objX4;
            boolean zY2 = (i4 != 4 ? z : true) | ((3670016 & r21) == c2 ? true : z) | gapComposerH.y(context);
            Object objX5 = gapComposerH.x();
            if (zY2 || objX5 == composer$Companion$Empty$1) {
                objX5 = new q(function5, certificateNfcScanViewModelImpl2, context, 24);
                gapComposerH.q(objX5);
            }
            Function0 function10 = (Function0) objX5;
            boolean z4 = i4 != 4 ? z : true;
            Object objX6 = gapComposerH.x();
            if (z4 || objX6 == composer$Companion$Empty$1) {
                objX6 = new w1(certificateNfcScanViewModelImpl2, 21);
                gapComposerH.q(objX6);
            }
            Function0 function11 = (Function0) objX6;
            boolean zY3 = gapComposerH.y(managedActivityResultLauncherA);
            Object objX7 = gapComposerH.x();
            if (zY3 || objX7 == composer$Companion$Empty$1) {
                objX7 = new w1(managedActivityResultLauncherA, 22);
                gapComposerH.q(objX7);
            }
            gapComposer = gapComposerH;
            CertificateNfcScanScreenKt.a(certificateNfcScanViewState, function0, function3, function9, function10, function11, (Function0) objX7, function2, function6, gapComposer, (r21 & 1008) | ((r21 << 9) & 29360128) | ((i3 << 3) & 234881024));
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ik(certificateNfcScanViewModelImpl2, function0, function3, function1, function2, function4, function5, function6, function7, function8, i2);
        }
    }
}
