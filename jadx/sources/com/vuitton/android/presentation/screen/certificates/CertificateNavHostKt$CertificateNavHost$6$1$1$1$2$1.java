package com.vuitton.android.presentation.screen.certificates;

import com.vuitton.android.presentation.screen.certificates.model.CertificateDiamondUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class CertificateNavHostKt$CertificateNavHost$6$1$1$1$2$1 extends FunctionReferenceImpl implements Function2<String, CertificateDiamondUiModel, Unit> {
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        String str = (String) obj;
        CertificateDiamondUiModel certificateDiamondUiModel = (CertificateDiamondUiModel) obj2;
        str.getClass();
        certificateDiamondUiModel.getClass();
        ((CertificateViewModel) this.receiver).Q5(certificateDiamondUiModel, str);
        return Unit.f71739a;
    }
}
