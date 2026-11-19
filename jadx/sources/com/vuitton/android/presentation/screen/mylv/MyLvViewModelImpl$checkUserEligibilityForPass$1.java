package com.vuitton.android.presentation.screen.mylv;

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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl$checkUserEligibilityForPass$1", f = "MyLvViewModelImpl.kt", l = {353}, m = "invokeSuspend", v = 2)
final class MyLvViewModelImpl$checkUserEligibilityForPass$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f59276b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f59277c;
    public final /* synthetic */ MyLvViewModelImpl d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MyLvViewModelImpl$checkUserEligibilityForPass$1(Continuation continuation, MyLvViewModelImpl myLvViewModelImpl) {
        super(2, continuation);
        this.d = myLvViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new MyLvViewModelImpl$checkUserEligibilityForPass$1(continuation, this.d);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((MyLvViewModelImpl$checkUserEligibilityForPass$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object value;
        MonitorAction monitorAction;
        Object obj2;
        Object value2;
        MyLvViewModelImpl myLvViewModelImpl = this.d;
        MutableStateFlow mutableStateFlow = myLvViewModelImpl.G;
        MutableStateFlow mutableStateFlow2 = myLvViewModelImpl.F;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f59277c;
        if (i2 == 0) {
            ResultKt.b(obj);
            DynatraceMonitorAction dynatraceMonitorActionA = myLvViewModelImpl.f59263a.a(myLvViewModelImpl.A, MyLvMonitoring.Action.LoadLvPass.f48929a);
            dynatraceMonitorActionA.c("mylv", Payload.SOURCE);
            do {
                value = mutableStateFlow2.getValue();
                ((Boolean) value).getClass();
            } while (!mutableStateFlow2.i(value, Boolean.TRUE));
            CheckEligibilityForPassUseCase checkEligibilityForPassUseCase = myLvViewModelImpl.t;
            this.f59276b = dynatraceMonitorActionA;
            this.f59277c = 1;
            Object objA = checkEligibilityForPassUseCase.a(this);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
            monitorAction = dynatraceMonitorActionA;
            obj2 = objA;
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            MonitorAction monitorAction2 = this.f59276b;
            ResultKt.b(obj);
            obj2 = ((Result) obj).f71708b;
            monitorAction = monitorAction2;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(obj2 instanceof Result.Failure)) {
            Boolean bool = (Boolean) obj2;
            bool.booleanValue();
            mutableStateFlow.setValue(bool);
        }
        Throwable thA = Result.a(obj2);
        if (thA != null) {
            MonitorAction monitorAction3 = myLvViewModelImpl.U;
            if (monitorAction3 != null) {
                monitorAction3.d(new MyLvMonitoring.Error.LoadLvPassError(thA, "mylv"));
            }
            mutableStateFlow.setValue(Boolean.FALSE);
        }
        do {
            value2 = mutableStateFlow2.getValue();
            ((Boolean) value2).getClass();
        } while (!mutableStateFlow2.i(value2, Boolean.FALSE));
        if (monitorAction != null) {
            monitorAction.b();
            Result.Companion companion2 = Result.INSTANCE;
        }
        return Unit.f71739a;
    }
}
