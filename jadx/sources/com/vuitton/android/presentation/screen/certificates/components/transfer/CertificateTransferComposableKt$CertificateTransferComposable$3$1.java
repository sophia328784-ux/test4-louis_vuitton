package com.vuitton.android.presentation.screen.certificates.components.transfer;

import com.vuitton.android.presentation.screen.certificates.diamonds.transfer.CertificateTransferViewModel;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class CertificateTransferComposableKt$CertificateTransferComposable$3$1 extends FunctionReferenceImpl implements Function1<Map<String, ? extends String>, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Map map = (Map) obj;
        map.getClass();
        ((CertificateTransferViewModel) this.receiver).e1(map);
        return Unit.f71739a;
    }
}
