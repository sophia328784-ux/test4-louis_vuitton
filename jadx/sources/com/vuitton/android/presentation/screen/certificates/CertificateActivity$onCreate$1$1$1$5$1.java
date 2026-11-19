package com.vuitton.android.presentation.screen.certificates;

import androidx.lifecycle.LifecycleOwnerKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class CertificateActivity$onCreate$1$1$1$5$1 extends FunctionReferenceImpl implements Function0<Unit> {
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final /* bridge */ /* synthetic */ Object mo47invoke() {
        p();
        return Unit.f71739a;
    }

    public final void p() {
        CertificateActivity certificateActivity = (CertificateActivity) this.receiver;
        CertificateActivity.Companion companion = CertificateActivity.x;
        certificateActivity.getClass();
        BuildersKt.c(LifecycleOwnerKt.a(certificateActivity), null, null, new CertificateActivity$quitCertificates$1(certificateActivity, null), 3);
        certificateActivity.finish();
    }
}
