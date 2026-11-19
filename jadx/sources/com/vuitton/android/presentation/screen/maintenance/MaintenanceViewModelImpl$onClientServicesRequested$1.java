package com.vuitton.android.presentation.screen.maintenance;

import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.maintenance.MaintenanceViewModelImpl$onClientServicesRequested$1", f = "MaintenanceViewModelImpl.kt", l = {49}, m = "invokeSuspend", v = 2)
final class MaintenanceViewModelImpl$onClientServicesRequested$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f59217b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MaintenanceViewModelImpl f59218c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MaintenanceViewModelImpl$onClientServicesRequested$1(MaintenanceViewModelImpl maintenanceViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f59218c = maintenanceViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new MaintenanceViewModelImpl$onClientServicesRequested$1(this.f59218c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((MaintenanceViewModelImpl$onClientServicesRequested$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object value;
        Object value2;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f59217b;
        MaintenanceViewModelImpl maintenanceViewModelImpl = this.f59218c;
        if (i2 == 0) {
            ResultKt.b(obj);
            MutableStateFlow mutableStateFlow = maintenanceViewModelImpl.f59214c;
            do {
                value = mutableStateFlow.getValue();
                ((MaintenanceViewModel.MaintenanceViewState) value).getClass();
            } while (!mutableStateFlow.i(value, new MaintenanceViewModel.MaintenanceViewState(true)));
            String str = maintenanceViewModelImpl.f59213b.a().J;
            if (str != null) {
                BufferedChannel bufferedChannel = maintenanceViewModelImpl.f59215e;
                MaintenanceViewModel.Navigation.GoToClientServices goToClientServices = new MaintenanceViewModel.Navigation.GoToClientServices(str);
                this.f59217b = 1;
                if (bufferedChannel.u(goToClientServices, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                maintenanceViewModelImpl.f59212a.c("MaintenanceViewModel", "Client services requested but no `customerServicePhoneNumber` found in app config", null);
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        MutableStateFlow mutableStateFlow2 = maintenanceViewModelImpl.f59214c;
        do {
            value2 = mutableStateFlow2.getValue();
            ((MaintenanceViewModel.MaintenanceViewState) value2).getClass();
        } while (!mutableStateFlow2.i(value2, new MaintenanceViewModel.MaintenanceViewState(false)));
        return Unit.f71739a;
    }
}
