package com.vuitton.android.presentation.screen.certificates;

import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.android.presentation.screen.certificates.model.CertificateDiamondUiModel;
import com.vuitton.android.presentation.screen.webview.WebViewActivity;
import com.vuitton.foundation.logger.Logger;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class CertificateActivity$onCreate$1$1$1$3$1 extends FunctionReferenceImpl implements Function1<CertificateDiamondUiModel, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String str;
        String strB;
        CertificateDiamondUiModel certificateDiamondUiModel = (CertificateDiamondUiModel) obj;
        CertificateActivity certificateActivity = (CertificateActivity) this.receiver;
        CertificateActivity.Companion companion = CertificateActivity.x;
        certificateActivity.getClass();
        if (certificateDiamondUiModel == null || (str = certificateDiamondUiModel.n) == null || (strB = StringExtKt.b(str)) == null) {
            Logger logger = certificateActivity.v;
            if (logger == null) {
                Intrinsics.h("logger");
                throw null;
            }
            defpackage.a.y("Invalid URL : ", certificateDiamondUiModel != null ? certificateDiamondUiModel.n : null, logger, "CertificateActivity", null);
        } else {
            certificateActivity.startActivity(WebViewActivity.Companion.a(WebViewActivity.v, certificateActivity, new CertificateDestinations.ToCertificateWebView(strB).f55596a, false, false, null, null, null, false, false, null, 2044));
        }
        return Unit.f71739a;
    }
}
