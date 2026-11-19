package com.vuitton.android.presentation.screen.account.myinformation;

import com.vuitton.android.data.monitoring.DynatraceMonitorAction;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.mylv.MyInformationMonitoring;
import com.vuitton.android.domain.usecase.account.profile.DeleteAccountUseCase;
import com.vuitton.android.presentation.screen.account.myinformation.models.MyInfoTrackingUiModel;
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
import org.bouncycastle.pqc.crypto.crystals.dilithium.DilithiumEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModelImpl$deleteAccount$1", f = "MyInformationViewModelImpl.kt", l = {319, DilithiumEngine.DilithiumPolyT1PackedBytes, 323}, m = "invokeSuspend", v = 2)
final class MyInformationViewModelImpl$deleteAccount$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f52538b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f52539c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MyInformationViewModelImpl f52540e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MyInformationViewModelImpl$deleteAccount$1(MyInformationViewModelImpl myInformationViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f52540e = myInformationViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new MyInformationViewModelImpl$deleteAccount$1(this.f52540e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((MyInformationViewModelImpl$deleteAccount$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0074 A[PHI: r0 r4
      0x0074: PHI (r0v4 java.lang.Object) = (r0v3 java.lang.Object), (r0v3 java.lang.Object), (r0v7 java.lang.Object) binds: [B:17:0x0060, B:19:0x0071, B:10:0x0023] A[DONT_GENERATE, DONT_INLINE]
      0x0074: PHI (r4v6 com.vuitton.android.domain.monitoring.MonitorAction) = 
      (r4v5 com.vuitton.android.domain.monitoring.MonitorAction)
      (r4v5 com.vuitton.android.domain.monitoring.MonitorAction)
      (r4v10 com.vuitton.android.domain.monitoring.MonitorAction)
     binds: [B:17:0x0060, B:19:0x0071, B:10:0x0023] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:23:0x007a  */
    /* JADX WARN: Code duplicated, block: B:26:0x0091  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        MonitorAction monitorAction;
        Throwable thA;
        MyInformationSideEffect.SeeMyInfo.AccountDeleteError accountDeleteError;
        MonitorAction monitorAction2;
        MyInformationViewModelImpl myInformationViewModelImpl = this.f52540e;
        SharedFlowImpl sharedFlowImpl = myInformationViewModelImpl.v;
        MutableStateFlow mutableStateFlow = myInformationViewModelImpl.x;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.d;
        if (i2 == 0) {
            ResultKt.b(obj);
            DynatraceMonitorAction dynatraceMonitorActionA = myInformationViewModelImpl.f52528b.a(myInformationViewModelImpl.s, MyInformationMonitoring.Action.DeleteAccount.f48919a);
            myInformationViewModelImpl.m5(MyInfoTrackingUiModel.DeleteProfileEvent.f52646a);
            mutableStateFlow.setValue(Boolean.TRUE);
            DeleteAccountUseCase deleteAccountUseCase = myInformationViewModelImpl.f52534j;
            this.f52538b = dynatraceMonitorActionA;
            this.d = 1;
            objA = deleteAccountUseCase.a(this);
            if (objA != coroutineSingletons) {
                monitorAction = dynatraceMonitorActionA;
            }
            return coroutineSingletons;
        }
        if (i2 == 1) {
            MonitorAction monitorAction3 = this.f52538b;
            ResultKt.b(obj);
            monitorAction = monitorAction3;
            objA = ((Result) obj).f71708b;
        } else {
            if (i2 == 2) {
                objA = this.f52539c;
                monitorAction = this.f52538b;
                ResultKt.b(obj);
                thA = Result.a(objA);
                if (thA != null) {
                    monitorAction.d(new MyInformationMonitoring.Error.DeleteAccountError(thA));
                    accountDeleteError = MyInformationSideEffect.SeeMyInfo.AccountDeleteError.f52525a;
                    this.f52538b = monitorAction;
                    this.f52539c = objA;
                    this.d = 3;
                    if (sharedFlowImpl.emit(accountDeleteError, this) != coroutineSingletons) {
                        monitorAction2 = monitorAction;
                    }
                    return coroutineSingletons;
                }
                monitorAction.b();
                mutableStateFlow.setValue(Boolean.FALSE);
                return Unit.f71739a;
            }
            if (i2 != 3) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            monitorAction2 = this.f52538b;
            ResultKt.b(obj);
        }
        monitorAction = monitorAction2;
        monitorAction.b();
        mutableStateFlow.setValue(Boolean.FALSE);
        return Unit.f71739a;
        Result.Companion companion = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            MyInformationSideEffect.SeeMyInfo.ShowAccountDeletedConfirmation showAccountDeletedConfirmation = MyInformationSideEffect.SeeMyInfo.ShowAccountDeletedConfirmation.f52526a;
            this.f52538b = monitorAction;
            this.f52539c = objA;
            this.d = 2;
            if (sharedFlowImpl.emit(showAccountDeletedConfirmation, this) != coroutineSingletons) {
                thA = Result.a(objA);
                if (thA != null) {
                    monitorAction.d(new MyInformationMonitoring.Error.DeleteAccountError(thA));
                    accountDeleteError = MyInformationSideEffect.SeeMyInfo.AccountDeleteError.f52525a;
                    this.f52538b = monitorAction;
                    this.f52539c = objA;
                    this.d = 3;
                    if (sharedFlowImpl.emit(accountDeleteError, this) != coroutineSingletons) {
                        monitorAction2 = monitorAction;
                        monitorAction = monitorAction2;
                    }
                }
            }
            return coroutineSingletons;
        }
        thA = Result.a(objA);
        if (thA != null) {
            monitorAction.d(new MyInformationMonitoring.Error.DeleteAccountError(thA));
            accountDeleteError = MyInformationSideEffect.SeeMyInfo.AccountDeleteError.f52525a;
            this.f52538b = monitorAction;
            this.f52539c = objA;
            this.d = 3;
            if (sharedFlowImpl.emit(accountDeleteError, this) != coroutineSingletons) {
                monitorAction2 = monitorAction;
                monitorAction = monitorAction2;
            }
            return coroutineSingletons;
        }
        monitorAction.b();
        mutableStateFlow.setValue(Boolean.FALSE);
        return Unit.f71739a;
    }
}
