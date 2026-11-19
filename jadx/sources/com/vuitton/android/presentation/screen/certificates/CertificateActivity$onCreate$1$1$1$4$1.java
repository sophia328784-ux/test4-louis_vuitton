package com.vuitton.android.presentation.screen.certificates;

import com.vuitton.android.presentation.extensions.ActivityExtKt;
import defpackage.wk;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class CertificateActivity$onCreate$1$1$1$4$1 extends FunctionReferenceImpl implements Function1<String, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String str = (String) obj;
        str.getClass();
        CertificateActivity certificateActivity = (CertificateActivity) this.receiver;
        CertificateActivity.Companion companion = CertificateActivity.x;
        certificateActivity.getClass();
        ActivityExtKt.g(certificateActivity, str, "application/pdf", new wk(certificateActivity, 1));
        return Unit.f71739a;
    }
}
