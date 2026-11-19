package com.vuitton.android.presentation.screen.certificates.nfc;

import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.certificates.CertificateMonitoring;
import com.vuitton.android.presentation.screen.certificates.nfc.model.NfcErrorType;
import com.vuitton.android.presentation.screen.certificates.nfc.model.NfcScanState;
import com.vuitton.foundation.logger.Logger;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import lv.nfc.reader.data.exceptions.LVNetworkException;
import lv.nfc.reader.data.exceptions.LVReadTagError;
import lv.nfc.reader.data.exceptions.LVTagException;
import lv.nfc.reader.data.models.LVResult;
import lv.nfc.reader.data.models.LVTagResult;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class a implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ CertificateNfcScanViewModelImpl f55928b;

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Object value;
        NfcErrorType nfcErrorType;
        Object value2;
        Object value3;
        LVResult lVResult = (LVResult) obj;
        lVResult.getClass();
        CertificateNfcScanViewModelImpl certificateNfcScanViewModelImpl = this.f55928b;
        MutableStateFlow mutableStateFlow = certificateNfcScanViewModelImpl.f55907k;
        Logger logger = certificateNfcScanViewModelImpl.f55901c;
        MutableStateFlow mutableStateFlow2 = certificateNfcScanViewModelImpl.l;
        do {
            value = mutableStateFlow2.getValue();
            ((Boolean) value).getClass();
        } while (!mutableStateFlow2.i(value, Boolean.FALSE));
        if (!lVResult.isSuccess() || lVResult.getData() == null) {
            Exception exception = lVResult.getException();
            logger.c(CertificateNfcScanViewModelImplKt.f55921a, "ERROR", exception);
            if (exception instanceof LVTagException) {
                LVReadTagError lVReadTagError = ((LVTagException) exception).getLVReadTagError();
                nfcErrorType = (lVReadTagError == null ? -1 : CertificateNfcScanViewModelImpl.WhenMappings.f55910a[lVReadTagError.ordinal()]) == 1 ? NfcErrorType.LOST_TAG : NfcErrorType.TECHNICAL_ERROR;
            } else {
                nfcErrorType = exception instanceof LVNetworkException ? NfcErrorType.NETWORK_ERROR : NfcErrorType.TECHNICAL_ERROR;
            }
            NfcErrorType nfcErrorType2 = nfcErrorType;
            do {
                value2 = mutableStateFlow.getValue();
            } while (!mutableStateFlow.i(value2, new NfcScanState.Error(nfcErrorType2, exception != null ? exception.getMessage() : null)));
            MonitorAction monitorAction = certificateNfcScanViewModelImpl.m;
            if (monitorAction != null) {
                if (exception == null) {
                    exception = new Exception("Unknown error");
                }
                monitorAction.d(new CertificateMonitoring.Error.NfcScanError(exception));
                Result.Companion companion = Result.INSTANCE;
            }
            MonitorAction monitorAction2 = certificateNfcScanViewModelImpl.m;
            if (monitorAction2 != null) {
                monitorAction2.b();
                Result.Companion companion2 = Result.INSTANCE;
            }
            certificateNfcScanViewModelImpl.m = null;
        } else {
            LVTagResult lVTagResult = (LVTagResult) lVResult.getData();
            String str = CertificateNfcScanViewModelImplKt.f55921a;
            lVTagResult.getCxid();
            lVTagResult.getSku();
            logger.getClass();
            do {
                value3 = mutableStateFlow.getValue();
            } while (!mutableStateFlow.i(value3, NfcScanState.Success.f55940a));
            MonitorAction monitorAction3 = certificateNfcScanViewModelImpl.m;
            if (monitorAction3 != null) {
                monitorAction3.b();
                Result.Companion companion3 = Result.INSTANCE;
            }
            certificateNfcScanViewModelImpl.m = null;
            BuildersKt.c(ViewModelKt.a(certificateNfcScanViewModelImpl), null, null, new CertificateNfcScanViewModelImpl$unlockCertificateNfcTag$1(certificateNfcScanViewModelImpl, null), 3);
        }
        return Unit.f71739a;
    }
}
