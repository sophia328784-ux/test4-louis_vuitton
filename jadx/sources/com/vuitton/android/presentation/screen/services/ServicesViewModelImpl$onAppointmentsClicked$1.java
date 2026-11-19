package com.vuitton.android.presentation.screen.services;

import com.vuitton.android.domain.usecase.booking.GetBookingsUseCase;
import com.vuitton.android.presentation.screen.osa.OsaRoutesName;
import com.vuitton.android.presentation.screen.services.models.ServicesNavigationEvent;
import com.vuitton.foundation.model.domain.model.booking.BookingList;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.services.ServicesViewModelImpl$onAppointmentsClicked$1", f = "ServicesViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
final class ServicesViewModelImpl$onAppointmentsClicked$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f64339b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ServicesViewModelImpl f64340c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ServicesViewModelImpl$onAppointmentsClicked$1(Continuation continuation, ServicesViewModelImpl servicesViewModelImpl) {
        super(2, continuation);
        this.f64340c = servicesViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ServicesViewModelImpl$onAppointmentsClicked$1(continuation, this.f64340c);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ServicesViewModelImpl$onAppointmentsClicked$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        ServicesViewModelImpl servicesViewModelImpl = this.f64340c;
        MutableStateFlow mutableStateFlow = servicesViewModelImpl.p;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f64339b;
        if (i2 == 0) {
            ResultKt.b(obj);
            mutableStateFlow.setValue(Boolean.TRUE);
            GetBookingsUseCase getBookingsUseCase = servicesViewModelImpl.f64311k;
            this.f64339b = 1;
            objA = getBookingsUseCase.a(this);
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
        Throwable thA = Result.a(objA);
        if (thA != null) {
            servicesViewModelImpl.f64304b.c("ServicesViewModelImpl", "Unable to retrieve bookings", thA);
        }
        if (!(objA instanceof Result.Failure)) {
            objA = Boolean.valueOf(!((BookingList) objA).f66748a.isEmpty());
        }
        Boolean bool = Boolean.FALSE;
        if (objA instanceof Result.Failure) {
            objA = bool;
        }
        boolean zBooleanValue = ((Boolean) objA).booleanValue();
        mutableStateFlow.setValue(bool);
        servicesViewModelImpl.C.a(zBooleanValue ? ServicesNavigationEvent.ToMyExperiences.f64380a : new ServicesNavigationEvent.ToOsa(OsaRoutesName.LOCATION_FORM, false));
        return Unit.f71739a;
    }
}
