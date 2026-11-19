package com.vuitton.android.presentation.screen.certificates.diamonds.transfer;

import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.certificates.CertificateMonitoring;
import com.vuitton.android.domain.usecase.certificate.TransferCertificateUseCase;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.certificates.diamonds.transfer.CertificateTransferViewModelImpl$transferCertificate$1$2", f = "CertificateTransferViewModelImpl.kt", l = {156}, m = "invokeSuspend", v = 2)
final class CertificateTransferViewModelImpl$transferCertificate$1$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f55807b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CertificateTransferViewModelImpl f55808c;
    public final /* synthetic */ TransferCertificateUseCase.Param d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CertificateTransferViewModelImpl$transferCertificate$1$2(CertificateTransferViewModelImpl certificateTransferViewModelImpl, TransferCertificateUseCase.Param param, Continuation continuation) {
        super(2, continuation);
        this.f55808c = certificateTransferViewModelImpl;
        this.d = param;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new CertificateTransferViewModelImpl$transferCertificate$1$2(this.f55808c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((CertificateTransferViewModelImpl$transferCertificate$1$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f55807b;
        TransferCertificateUseCase.Param param = this.d;
        CertificateTransferViewModelImpl certificateTransferViewModelImpl = this.f55808c;
        if (i2 == 0) {
            ResultKt.b(obj);
            TransferCertificateUseCase transferCertificateUseCase = certificateTransferViewModelImpl.f55794f;
            this.f55807b = 1;
            objA = transferCertificateUseCase.a(param, this);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            ((Boolean) objA).getClass();
            MutableStateFlow mutableStateFlow = certificateTransferViewModelImpl.f55798k;
            Boolean bool = Boolean.TRUE;
            String str = param.f49638c;
            if (str.length() <= 0) {
                str = null;
            }
            if (str == null) {
                str = param.f49637b;
            }
            mutableStateFlow.setValue(new Pair(bool, new Pair(str, param.d)));
            MonitorAction monitorAction = certificateTransferViewModelImpl.l;
            if (monitorAction != null) {
                monitorAction.b();
            }
            certificateTransferViewModelImpl.l = null;
        }
        Throwable thA = Result.a(objA);
        if (thA != null) {
            certificateTransferViewModelImpl.f55791b.c(CertificateTransferViewModelImpl.o, "Unable to transfer certificate diamond", thA);
            MonitorAction monitorAction2 = certificateTransferViewModelImpl.l;
            if (monitorAction2 != null) {
                monitorAction2.d(new CertificateMonitoring.Error.TransferCertificateError(thA));
            }
            MonitorAction monitorAction3 = certificateTransferViewModelImpl.l;
            if (monitorAction3 != null) {
                monitorAction3.b();
            }
            certificateTransferViewModelImpl.l = null;
            BuildersKt.c(ViewModelKt.a(certificateTransferViewModelImpl), null, null, new CertificateTransferViewModelImpl$notifyError$1(null, certificateTransferViewModelImpl), 3);
            certificateTransferViewModelImpl.f55797j.setValue(Boolean.FALSE);
        }
        return Unit.f71739a;
    }
}
