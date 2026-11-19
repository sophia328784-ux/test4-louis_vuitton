package com.vuitton.android.presentation.screen.certificates.diamonds.add;

import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.certificates.CertificateMonitoring;
import com.vuitton.android.presentation.screen.certificates.model.CertificateTrackingUiModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateTrackingUiModelKt;
import defpackage.md;
import java.util.Map;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.certificates.diamonds.add.AddCertificateViewModelImpl$addConsentAndAddCertificate$1", f = "AddCertificateViewModelImpl.kt", l = {181}, m = "invokeSuspend", v = 2)
final class AddCertificateViewModelImpl$addConsentAndAddCertificate$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AddCertificateViewModelImpl f55765b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Map f55766c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f55767e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ AddCertificateViewModelImpl f55768f;
    public final /* synthetic */ Map g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddCertificateViewModelImpl$addConsentAndAddCertificate$1(AddCertificateViewModelImpl addCertificateViewModelImpl, Map map, Continuation continuation) {
        super(2, continuation);
        this.f55768f = addCertificateViewModelImpl;
        this.g = map;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        AddCertificateViewModelImpl$addConsentAndAddCertificate$1 addCertificateViewModelImpl$addConsentAndAddCertificate$1 = new AddCertificateViewModelImpl$addConsentAndAddCertificate$1(this.f55768f, this.g, continuation);
        addCertificateViewModelImpl$addConsentAndAddCertificate$1.f55767e = obj;
        return addCertificateViewModelImpl$addConsentAndAddCertificate$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AddCertificateViewModelImpl$addConsentAndAddCertificate$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object failure;
        Map map;
        Object obj2;
        AddCertificateViewModelImpl addCertificateViewModelImpl;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.d;
        AddCertificateViewModelImpl addCertificateViewModelImpl2 = this.f55768f;
        try {
            if (i2 == 0) {
                ResultKt.b(obj);
                Map map2 = this.g;
                Result.Companion companion = Result.INSTANCE;
                this.f55767e = null;
                this.f55765b = addCertificateViewModelImpl2;
                this.f55766c = map2;
                this.d = 1;
                Object objYc = AddCertificateViewModelImpl.yc(addCertificateViewModelImpl2, this);
                if (objYc == coroutineSingletons) {
                    return coroutineSingletons;
                }
                map = map2;
                obj2 = objYc;
                addCertificateViewModelImpl = addCertificateViewModelImpl2;
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                map = this.f55766c;
                addCertificateViewModelImpl = this.f55765b;
                ResultKt.b(obj);
                obj2 = ((Result) obj).f71708b;
            }
            Result.Companion companion2 = Result.INSTANCE;
            if (obj2 instanceof Result.Failure) {
                addCertificateViewModelImpl.f55759k.setValue(Boolean.FALSE);
                MonitorAction monitorAction = addCertificateViewModelImpl.p;
                if (monitorAction != null) {
                    Throwable thA = Result.a(obj2);
                    if (thA == null) {
                        thA = new Exception("China consent request failed");
                    }
                    monitorAction.d(new CertificateMonitoring.Error.ActivateCertificateError(thA));
                }
                MonitorAction monitorAction2 = addCertificateViewModelImpl.p;
                if (monitorAction2 != null) {
                    monitorAction2.b();
                }
                addCertificateViewModelImpl.p = null;
                AddCertificateViewModelImpl.zc(addCertificateViewModelImpl);
            } else {
                String str = AddCertificateViewModelImpl.s;
                addCertificateViewModelImpl.Ac(map);
            }
            failure = Unit.f71739a;
        } catch (Throwable th) {
            Result.Companion companion3 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA2 = Result.a(failure);
        if (thA2 == null) {
            addCertificateViewModelImpl2.l.setValue(Boolean.TRUE);
        } else {
            addCertificateViewModelImpl2.f55752b.a(CertificateTrackingUiModelKt.b(CertificateTrackingUiModel.ActivateCertificateErrorManualEvent.f55847a));
            addCertificateViewModelImpl2.f55751a.c(AddCertificateViewModelImpl.s, "Failed to create certificate", thA2);
            addCertificateViewModelImpl2.f55759k.setValue(Boolean.FALSE);
            MonitorAction monitorAction3 = addCertificateViewModelImpl2.p;
            if (monitorAction3 != null) {
                monitorAction3.d(new CertificateMonitoring.Error.ActivateCertificateError(thA2));
            }
            MonitorAction monitorAction4 = addCertificateViewModelImpl2.p;
            if (monitorAction4 != null) {
                monitorAction4.b();
            }
            addCertificateViewModelImpl2.p = null;
            AddCertificateViewModelImpl.zc(addCertificateViewModelImpl2);
        }
        return Unit.f71739a;
    }
}
