package com.vuitton.android.presentation.screen.mylv;

import com.vuitton.android.data.monitoring.DynatraceMonitorAction;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.mylv.MyLvMonitoring;
import com.vuitton.android.presentation.push.NotificationsManager;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl$initInbox$1", f = "MyLvViewModelImpl.kt", l = {419, 420}, m = "invokeSuspend", v = 2)
final class MyLvViewModelImpl$initInbox$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f59296b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f59297c;
    public final /* synthetic */ MyLvViewModelImpl d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MyLvViewModelImpl$initInbox$1(Continuation continuation, MyLvViewModelImpl myLvViewModelImpl) {
        super(2, continuation);
        this.d = myLvViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new MyLvViewModelImpl$initInbox$1(continuation, this.d);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((MyLvViewModelImpl$initInbox$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0075  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        MonitorAction monitorAction;
        Object objD;
        MonitorAction monitorAction2;
        Throwable thA;
        MutableStateFlow mutableStateFlow;
        Object value;
        MyLvViewModelImpl myLvViewModelImpl = this.d;
        MonitorAction monitorAction3 = myLvViewModelImpl.U;
        NotificationsManager notificationsManager = myLvViewModelImpl.f59267f;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f59297c;
        if (i2 == 0) {
            ResultKt.b(obj);
            DynatraceMonitorAction dynatraceMonitorActionA = monitorAction3 != null ? monitorAction3.a(MyLvMonitoring.Action.LoadMyInbox.f48933a) : null;
            this.f59296b = dynatraceMonitorActionA;
            this.f59297c = 1;
            if (notificationsManager.j(this) != coroutineSingletons) {
                monitorAction = dynatraceMonitorActionA;
            }
            return coroutineSingletons;
        }
        if (i2 == 1) {
            monitorAction = this.f59296b;
            ResultKt.b(obj);
        } else {
            if (i2 != 2) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            monitorAction2 = this.f59296b;
            ResultKt.b(obj);
            objD = ((Result) obj).f71708b;
        }
        thA = Result.a(objD);
        if (thA != null && monitorAction3 != null) {
            monitorAction3.d(new MyLvMonitoring.Error.LoadMyInboxError(thA));
        }
        mutableStateFlow = myLvViewModelImpl.H;
        do {
            value = mutableStateFlow.getValue();
        } while (!mutableStateFlow.i(value, Boolean.valueOf(notificationsManager.e())));
        if (monitorAction2 != null) {
            monitorAction2.b();
            Result.Companion companion = Result.INSTANCE;
        }
        return Unit.f71739a;
        this.f59296b = monitorAction;
        this.f59297c = 2;
        objD = notificationsManager.d(this);
        if (objD != coroutineSingletons) {
            monitorAction2 = monitorAction;
            thA = Result.a(objD);
            if (thA != null) {
                monitorAction3.d(new MyLvMonitoring.Error.LoadMyInboxError(thA));
            }
            mutableStateFlow = myLvViewModelImpl.H;
            do {
                value = mutableStateFlow.getValue();
            } while (!mutableStateFlow.i(value, Boolean.valueOf(notificationsManager.e())));
            if (monitorAction2 != null) {
                monitorAction2.b();
                Result.Companion companion2 = Result.INSTANCE;
            }
            return Unit.f71739a;
        }
        return coroutineSingletons;
    }
}
