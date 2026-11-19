package com.vuitton.android.presentation.screen.certificates.components.transfer;

import android.content.Context;
import androidx.compose.material3.SnackbarHostState;
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
import com.vuitton.android.presentation.screen.certificates.diamonds.transfer.CertificateTransferViewModel;
import com.vuitton.android.presentation.screen.certificates.diamonds.transfer.model.CertificateTransferUiModel;
import defpackage.n00;
import defpackage.u;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.KFunction;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/model/CertificateTransferUiModel;", "viewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CertificateTransferComposableKt {
    public static final void a(CertificateTransferViewModel certificateTransferViewModel, Function0 function0, Function2 function2, Composer composer, int i2) {
        GapComposer gapComposer;
        certificateTransferViewModel.getClass();
        function0.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(-1624964992);
        int i3 = i2 | (gapComposerH.K(certificateTransferViewModel) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.y(function2) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Unit unit = Unit.f71739a;
            int i4 = i3 & 14;
            boolean z = i4 == 4;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z || objX == composer$Companion$Empty$1) {
                objX = new CertificateTransferComposableKt$CertificateTransferComposable$1$1(certificateTransferViewModel, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX);
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            MutableState mutableStateB = SnapshotStateKt.b(certificateTransferViewModel.getN(), gapComposerH);
            if (((Boolean) ((CertificateTransferUiModel) mutableStateB.getF10755b()).f55813c.f71705b).booleanValue()) {
                Pair pair = (Pair) ((CertificateTransferUiModel) mutableStateB.getF10755b()).f55813c.f71706c;
                String str = pair != null ? (String) pair.f71705b : null;
                if (str == null) {
                    str = "";
                }
                Pair pair2 = (Pair) ((CertificateTransferUiModel) mutableStateB.getF10755b()).f55813c.f71706c;
                String str2 = pair2 != null ? (String) pair2.f71706c : null;
                function2.invoke(str, str2 != null ? str2 : "");
            }
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = n00.b(gapComposerH);
            }
            SnackbarHostState snackbarHostState = (SnackbarHostState) objX2;
            boolean zY = (i4 == 4) | gapComposerH.y(context);
            Object objX3 = gapComposerH.x();
            if (zY || objX3 == composer$Companion$Empty$1) {
                objX3 = new CertificateTransferComposableKt$CertificateTransferComposable$2$1(certificateTransferViewModel, snackbarHostState, context, null);
                gapComposerH.q(objX3);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX3);
            CertificateTransferUiModel certificateTransferUiModel = (CertificateTransferUiModel) mutableStateB.getF10755b();
            boolean z2 = i4 == 4;
            Object objX4 = gapComposerH.x();
            if (z2 || objX4 == composer$Companion$Empty$1) {
                objX4 = new CertificateTransferComposableKt$CertificateTransferComposable$3$1(1, certificateTransferViewModel, CertificateTransferViewModel.class, "transferCertificate", "transferCertificate(Ljava/util/Map;)V", 0);
                gapComposerH.q(objX4);
            }
            gapComposer = gapComposerH;
            CertificateTransferScreenKt.b(snackbarHostState, certificateTransferUiModel, (Function1) ((KFunction) objX4), function0, gapComposer, ((i3 << 6) & 7168) | 6);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new u(i2, 22, certificateTransferViewModel, function0, function2);
        }
    }
}
