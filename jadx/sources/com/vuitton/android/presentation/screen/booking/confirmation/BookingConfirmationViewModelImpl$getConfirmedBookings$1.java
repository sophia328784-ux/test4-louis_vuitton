package com.vuitton.android.presentation.screen.booking.confirmation;

import com.vuitton.android.data.monitoring.DynatraceMonitorAction;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.booking.BookingMonitoring;
import com.vuitton.android.domain.usecase.booking.GetConfirmedBookingsUseCase;
import com.vuitton.android.presentation.screen.booking.confirmation.models.BookingConfirmationTrackingUiModel;
import com.vuitton.android.presentation.screen.booking.confirmation.models.BookingConfirmationViewState;
import com.vuitton.android.presentation.screen.booking.list.models.BookingUiModelMapperKt;
import com.vuitton.foundation.model.domain.model.booking.Booking;
import defpackage.md;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.booking.confirmation.BookingConfirmationViewModelImpl$getConfirmedBookings$1", f = "BookingConfirmationViewModelImpl.kt", l = {EACTags.DATE_OF_BIRTH}, m = "invokeSuspend", v = 2)
final class BookingConfirmationViewModelImpl$getConfirmedBookings$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f54381b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f54382c;
    public final /* synthetic */ BookingConfirmationViewModelImpl d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BookingConfirmationViewModelImpl$getConfirmedBookings$1(BookingConfirmationViewModelImpl bookingConfirmationViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.d = bookingConfirmationViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new BookingConfirmationViewModelImpl$getConfirmedBookings$1(this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((BookingConfirmationViewModelImpl$getConfirmedBookings$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object obj2;
        MonitorAction monitorAction;
        BookingConfirmationViewModelImpl bookingConfirmationViewModelImpl = this.d;
        MutableStateFlow mutableStateFlow = bookingConfirmationViewModelImpl.f54379e;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f54382c;
        if (i2 == 0) {
            ResultKt.b(obj);
            DynatraceMonitorAction dynatraceMonitorActionA = bookingConfirmationViewModelImpl.f54378c.a(bookingConfirmationViewModelImpl.d, BookingMonitoring.Action.LoadExperienceConfirmationPage.f48851a);
            GetConfirmedBookingsUseCase getConfirmedBookingsUseCase = bookingConfirmationViewModelImpl.f54376a;
            this.f54381b = dynatraceMonitorActionA;
            this.f54382c = 1;
            Object objA = getConfirmedBookingsUseCase.a(this);
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
            monitorAction = this.f54381b;
            ResultKt.b(obj);
            obj2 = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(obj2 instanceof Result.Failure)) {
            List list = (List) obj2;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(BookingUiModelMapperKt.c((Booking) it.next()));
            }
            mutableStateFlow.setValue(new BookingConfirmationViewState.Success(arrayList));
            ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list, 10));
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList2.add(((Booking) it2.next()).f66676b);
            }
            bookingConfirmationViewModelImpl.ya(new BookingConfirmationTrackingUiModel.ConfirmationScreen(arrayList2));
        }
        Throwable thA = Result.a(obj2);
        if (thA != null) {
            monitorAction.d(new BookingMonitoring.Error.LoadExperienceConfirmationPageError(thA));
            mutableStateFlow.setValue(BookingConfirmationViewState.Error.f54394a);
        }
        monitorAction.b();
        return Unit.f71739a;
    }
}
