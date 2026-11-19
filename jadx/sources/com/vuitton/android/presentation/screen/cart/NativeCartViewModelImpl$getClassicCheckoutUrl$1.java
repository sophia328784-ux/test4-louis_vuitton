package com.vuitton.android.presentation.screen.cart;

import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.cart.NativeCartMonitoring;
import com.vuitton.android.domain.usecase.cart.GetCheckoutUrlUseCase;
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
import kotlinx.coroutines.flow.SharedFlowImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl$getClassicCheckoutUrl$1", f = "NativeCartViewModelImpl.kt", l = {783, 786}, m = "invokeSuspend", v = 2)
final class NativeCartViewModelImpl$getClassicCheckoutUrl$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f54905b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f54906c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ NativeCartViewModelImpl f54907e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeCartViewModelImpl$getClassicCheckoutUrl$1(Continuation continuation, NativeCartViewModelImpl nativeCartViewModelImpl) {
        super(2, continuation);
        this.f54907e = nativeCartViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NativeCartViewModelImpl$getClassicCheckoutUrl$1(continuation, this.f54907e);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NativeCartViewModelImpl$getClassicCheckoutUrl$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x007b  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        MonitorAction monitorActionA;
        Object objA;
        MonitorAction monitorAction;
        Object obj2;
        Throwable thA;
        NativeCartViewModelImpl nativeCartViewModelImpl = this.f54907e;
        MutableStateFlow mutableStateFlow = nativeCartViewModelImpl.O;
        MutableStateFlow mutableStateFlow2 = nativeCartViewModelImpl.M;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.d;
        if (i2 == 0) {
            ResultKt.b(obj);
            monitorActionA = nativeCartViewModelImpl.f54872b.a(nativeCartViewModelImpl.A, NativeCartMonitoring.Action.CheckoutUrl.f48884a);
            monitorActionA.c("OtherPaymentMethods", "checkoutOpenContext");
            mutableStateFlow2.setValue(Boolean.TRUE);
            GetCheckoutUrlUseCase getCheckoutUrlUseCase = nativeCartViewModelImpl.m;
            this.f54905b = monitorActionA;
            this.d = 1;
            objA = getCheckoutUrlUseCase.a(this);
            if (objA != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i2 == 1) {
            MonitorAction monitorAction2 = this.f54905b;
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
            monitorActionA = monitorAction2;
        } else {
            if (i2 != 2) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            obj2 = this.f54906c;
            monitorAction = this.f54905b;
            ResultKt.b(obj);
        }
        monitorActionA = monitorAction;
        objA = obj2;
        thA = Result.a(objA);
        if (thA != null) {
            nativeCartViewModelImpl.f54871a.c("NativeCartViewModelImpl", thA.getMessage(), null);
            mutableStateFlow.setValue(Boolean.TRUE);
            monitorActionA.d(new NativeCartMonitoring.Error.CheckoutUrlError(thA));
        }
        mutableStateFlow2.setValue(Boolean.FALSE);
        monitorActionA.b();
        return Unit.f71739a;
        Result.Companion companion = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            mutableStateFlow.setValue(Boolean.FALSE);
            SharedFlowImpl sharedFlowImpl = nativeCartViewModelImpl.E;
            this.f54905b = monitorActionA;
            this.f54906c = objA;
            this.d = 2;
            if (sharedFlowImpl.emit((String) objA, this) != coroutineSingletons) {
                monitorAction = monitorActionA;
                obj2 = objA;
                monitorActionA = monitorAction;
                objA = obj2;
            }
            return coroutineSingletons;
        }
        thA = Result.a(objA);
        if (thA != null) {
            nativeCartViewModelImpl.f54871a.c("NativeCartViewModelImpl", thA.getMessage(), null);
            mutableStateFlow.setValue(Boolean.TRUE);
            monitorActionA.d(new NativeCartMonitoring.Error.CheckoutUrlError(thA));
        }
        mutableStateFlow2.setValue(Boolean.FALSE);
        monitorActionA.b();
        return Unit.f71739a;
    }
}
