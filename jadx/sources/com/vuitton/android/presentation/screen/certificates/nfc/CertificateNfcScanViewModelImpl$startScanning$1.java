package com.vuitton.android.presentation.screen.certificates.nfc;

import android.app.Activity;
import android.nfc.tech.NfcV;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class CertificateNfcScanViewModelImpl$startScanning$1 extends FunctionReferenceImpl implements Function2<NfcV, Activity, Unit> {
    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        p((NfcV) obj, (Activity) obj2);
        return Unit.f71739a;
    }

    public final void p(NfcV nfcV, Activity activity) {
        nfcV.getClass();
        activity.getClass();
        CertificateNfcScanViewModelImpl certificateNfcScanViewModelImpl = (CertificateNfcScanViewModelImpl) this.receiver;
        certificateNfcScanViewModelImpl.getClass();
        CloseableCoroutineScope closeableCoroutineScopeA = ViewModelKt.a(certificateNfcScanViewModelImpl);
        DefaultScheduler defaultScheduler = Dispatchers.f74659a;
        BuildersKt.c(closeableCoroutineScopeA, MainDispatcherLoader.f75131a, null, new CertificateNfcScanViewModelImpl$onNfcTagDetected$1(certificateNfcScanViewModelImpl, activity, nfcV, null), 2);
    }
}
