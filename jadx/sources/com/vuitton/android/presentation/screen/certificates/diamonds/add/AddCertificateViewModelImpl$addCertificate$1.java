package com.vuitton.android.presentation.screen.certificates.diamonds.add;

import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.certificates.CertificateMonitoring;
import com.vuitton.android.domain.usecase.certificate.AddCertificateUseCase;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.certificates.model.CertificateTrackingUiModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateTrackingUiModelKt;
import com.vuitton.android.presentation.utils.DateTimeUtils;
import defpackage.md;
import java.time.LocalDateTime;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.certificates.diamonds.add.AddCertificateViewModelImpl$addCertificate$1", f = "AddCertificateViewModelImpl.kt", l = {148}, m = "invokeSuspend", v = 2)
final class AddCertificateViewModelImpl$addCertificate$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f55760b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AddCertificateViewModelImpl f55761c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f55762e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddCertificateViewModelImpl$addCertificate$1(AddCertificateViewModelImpl addCertificateViewModelImpl, String str, String str2, Continuation continuation) {
        super(2, continuation);
        this.f55761c = addCertificateViewModelImpl;
        this.d = str;
        this.f55762e = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AddCertificateViewModelImpl$addCertificate$1(this.f55761c, this.d, this.f55762e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AddCertificateViewModelImpl$addCertificate$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        AddCertificateViewModelImpl addCertificateViewModelImpl = this.f55761c;
        AnalyticsTracker analyticsTracker = addCertificateViewModelImpl.f55752b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f55760b;
        if (i2 == 0) {
            ResultKt.b(obj);
            AddCertificateUseCase addCertificateUseCase = addCertificateViewModelImpl.f55754e;
            LocalDateTime localDateTimeNow = LocalDateTime.now();
            localDateTimeNow.getClass();
            AddCertificateUseCase.Param param = new AddCertificateUseCase.Param(this.d, DateTimeUtils.j("yyyy-MM-dd", localDateTimeNow), this.f55762e);
            this.f55760b = 1;
            objA = addCertificateUseCase.a(param, this);
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
            analyticsTracker.a(CertificateTrackingUiModelKt.b(CertificateTrackingUiModel.ActivateCertificateSuccessManualEvent.f55851a));
            addCertificateViewModelImpl.l.setValue(Boolean.TRUE);
            MonitorAction monitorAction = addCertificateViewModelImpl.p;
            if (monitorAction != null) {
                monitorAction.b();
            }
            addCertificateViewModelImpl.p = null;
        }
        Throwable thA = Result.a(objA);
        if (thA != null) {
            analyticsTracker.a(CertificateTrackingUiModelKt.b(CertificateTrackingUiModel.ActivateCertificateErrorManualEvent.f55847a));
            addCertificateViewModelImpl.f55751a.c(AddCertificateViewModelImpl.s, "Failed to create certificate", thA);
            addCertificateViewModelImpl.f55759k.setValue(Boolean.FALSE);
            MonitorAction monitorAction2 = addCertificateViewModelImpl.p;
            if (monitorAction2 != null) {
                monitorAction2.d(new CertificateMonitoring.Error.ActivateCertificateError(thA));
            }
            MonitorAction monitorAction3 = addCertificateViewModelImpl.p;
            if (monitorAction3 != null) {
                monitorAction3.b();
            }
            addCertificateViewModelImpl.p = null;
            AddCertificateViewModelImpl.zc(addCertificateViewModelImpl);
        }
        return Unit.f71739a;
    }
}
