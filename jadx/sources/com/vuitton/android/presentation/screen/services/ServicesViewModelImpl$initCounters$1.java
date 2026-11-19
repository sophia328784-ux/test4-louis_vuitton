package com.vuitton.android.presentation.screen.services;

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
import kotlinx.coroutines.SupervisorKt;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.services.ServicesViewModelImpl$initCounters$1", f = "ServicesViewModelImpl.kt", l = {254}, m = "invokeSuspend", v = 2)
final class ServicesViewModelImpl$initCounters$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f64326b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f64327c;
    public final /* synthetic */ ServicesViewModelImpl d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ServicesViewModelImpl$initCounters$1(Continuation continuation, ServicesViewModelImpl servicesViewModelImpl) {
        super(2, continuation);
        this.d = servicesViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        ServicesViewModelImpl$initCounters$1 servicesViewModelImpl$initCounters$1 = new ServicesViewModelImpl$initCounters$1(continuation, this.d);
        servicesViewModelImpl$initCounters$1.f64327c = obj;
        return servicesViewModelImpl$initCounters$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ServicesViewModelImpl$initCounters$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object failure;
        ServicesViewModelImpl servicesViewModelImpl = this.d;
        MutableStateFlow mutableStateFlow = servicesViewModelImpl.p;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f64326b;
        try {
            if (i2 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                mutableStateFlow.setValue(Boolean.TRUE);
                ServicesViewModelImpl$initCounters$1$1$1 servicesViewModelImpl$initCounters$1$1$1 = new ServicesViewModelImpl$initCounters$1$1$1(null, servicesViewModelImpl);
                this.f64327c = null;
                this.f64326b = 1;
                if (SupervisorKt.c(servicesViewModelImpl$initCounters$1$1$1, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            failure = Unit.f71739a;
            Result.Companion companion2 = Result.INSTANCE;
        } catch (Throwable th) {
            Result.Companion companion3 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        if (!(failure instanceof Result.Failure)) {
            mutableStateFlow.setValue(Boolean.FALSE);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            mutableStateFlow.setValue(Boolean.FALSE);
            servicesViewModelImpl.f64304b.c("ServicesViewModelImpl", "Unable to retrieve osa, dr or sharing list", thA);
        }
        return Unit.f71739a;
    }
}
