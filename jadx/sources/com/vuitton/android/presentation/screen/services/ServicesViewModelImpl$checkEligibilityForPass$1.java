package com.vuitton.android.presentation.screen.services;

import com.appsflyer.sdk_base.referrer.Payload;
import com.vuitton.android.data.monitoring.DynatraceMonitorAction;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.mylv.MyLvMonitoring;
import com.vuitton.android.domain.usecase.account.CheckEligibilityForPassUseCase;
import defpackage.md;
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
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.services.ServicesViewModelImpl$checkEligibilityForPass$1", f = "ServicesViewModelImpl.kt", l = {163}, m = "invokeSuspend", v = 2)
final class ServicesViewModelImpl$checkEligibilityForPass$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f64318b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f64319c;
    public final /* synthetic */ ServicesViewModelImpl d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ServicesViewModelImpl$checkEligibilityForPass$1(Continuation continuation, ServicesViewModelImpl servicesViewModelImpl) {
        super(2, continuation);
        this.d = servicesViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ServicesViewModelImpl$checkEligibilityForPass$1(continuation, this.d);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ServicesViewModelImpl$checkEligibilityForPass$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object obj2;
        MonitorAction monitorAction;
        ServicesViewModelImpl servicesViewModelImpl = this.d;
        MutableStateFlow mutableStateFlow = servicesViewModelImpl.A;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f64319c;
        if (i2 == 0) {
            ResultKt.b(obj);
            DynatraceMonitorAction dynatraceMonitorActionA = servicesViewModelImpl.f64305c.a(servicesViewModelImpl.n, MyLvMonitoring.Action.LoadLvPass.f48929a);
            dynatraceMonitorActionA.c("services", Payload.SOURCE);
            CheckEligibilityForPassUseCase checkEligibilityForPassUseCase = servicesViewModelImpl.m;
            this.f64318b = dynatraceMonitorActionA;
            this.f64319c = 1;
            Object objA = checkEligibilityForPassUseCase.a(this);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
            obj2 = objA;
            monitorAction = dynatraceMonitorActionA;
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            monitorAction = this.f64318b;
            ResultKt.b(obj);
            obj2 = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(obj2 instanceof Result.Failure)) {
            Boolean bool = (Boolean) obj2;
            bool.booleanValue();
            mutableStateFlow.setValue(bool);
        }
        Throwable thA = Result.a(obj2);
        if (thA != null) {
            monitorAction.d(new MyLvMonitoring.Error.LoadLvPassError(thA, "services"));
            mutableStateFlow.setValue(Boolean.FALSE);
        }
        monitorAction.b();
        return Unit.f71739a;
    }
}
