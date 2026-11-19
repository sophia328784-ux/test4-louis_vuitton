package com.vuitton.android.presentation.screen.booking.list;

import com.vuitton.android.R;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.booking.BookingMonitoring;
import com.vuitton.android.domain.usecase.booking.UpdateBookingUseCase;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.screen.booking.common.BookingErrorExtKt;
import com.vuitton.android.presentation.screen.booking.common.models.BookingCTAState;
import com.vuitton.android.presentation.screen.booking.form.models.BookingFormUiModel;
import com.vuitton.android.presentation.screen.booking.form.models.BookingMapperKt;
import com.vuitton.android.presentation.screen.booking.list.models.BookingUiModelMapperKt;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.booking.Booking;
import com.vuitton.foundation.model.domain.model.booking.BookingAdditional;
import com.vuitton.foundation.model.domain.model.booking.BookingForm;
import com.vuitton.foundation.model.domain.model.booking.BookingList;
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
import kotlinx.coroutines.flow.SharedFlowImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.booking.list.BookingListViewModelImpl$updateBooking$1", f = "BookingListViewModelImpl.kt", l = {115}, m = "invokeSuspend", v = 2)
final class BookingListViewModelImpl$updateBooking$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f54589b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f54590c;
    public final /* synthetic */ BookingListViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f54591e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ BookingFormUiModel f54592f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BookingListViewModelImpl$updateBooking$1(BookingListViewModelImpl bookingListViewModelImpl, String str, BookingFormUiModel bookingFormUiModel, Continuation continuation) {
        super(2, continuation);
        this.d = bookingListViewModelImpl;
        this.f54591e = str;
        this.f54592f = bookingFormUiModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new BookingListViewModelImpl$updateBooking$1(this.d, this.f54591e, this.f54592f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((BookingListViewModelImpl$updateBooking$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object obj2;
        MonitorAction monitorAction;
        Object value;
        ArrayList arrayList;
        Object value2;
        ArrayList arrayList2;
        BookingListViewModelImpl bookingListViewModelImpl = this.d;
        SharedFlowImpl sharedFlowImpl = bookingListViewModelImpl.n;
        MutableStateFlow mutableStateFlow = bookingListViewModelImpl.p;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f54590c;
        if (i2 == 0) {
            ResultKt.b(obj);
            MonitorAction monitorActionA = bookingListViewModelImpl.g.a(bookingListViewModelImpl.f54577i, BookingMonitoring.Action.ModifyExperience.f48853a);
            String str = this.f54591e;
            monitorActionA.c(str, "bookingId");
            BookingFormUiModel bookingFormUiModel = this.f54592f;
            monitorActionA.c(bookingFormUiModel.f54559e.getMonitoringValue(), "experienceType");
            UpdateBookingUseCase updateBookingUseCase = bookingListViewModelImpl.f54572b;
            BookingForm bookingFormA = BookingMapperKt.a(bookingFormUiModel);
            this.f54589b = monitorActionA;
            this.f54590c = 1;
            Object objA = updateBookingUseCase.a(str, bookingFormA, this);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
            obj2 = objA;
            monitorAction = monitorActionA;
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            monitorAction = this.f54589b;
            ResultKt.b(obj);
            obj2 = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(obj2 instanceof Result.Failure)) {
            BookingList bookingList = (BookingList) obj2;
            MutableStateFlow mutableStateFlow2 = bookingListViewModelImpl.l;
            do {
                value = mutableStateFlow2.getValue();
                List list = bookingList.f66748a;
                arrayList = new ArrayList(CollectionsKt.t(list, 10));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(BookingUiModelMapperKt.c((Booking) it.next()));
                }
            } while (!mutableStateFlow2.i(value, arrayList));
            MutableStateFlow mutableStateFlow3 = bookingListViewModelImpl.m;
            do {
                value2 = mutableStateFlow3.getValue();
                List list2 = bookingList.f66749b;
                arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
                Iterator it2 = list2.iterator();
                while (it2.hasNext()) {
                    arrayList2.add(BookingUiModelMapperKt.a((BookingAdditional) it2.next()));
                }
            } while (!mutableStateFlow3.i(value2, arrayList2));
            mutableStateFlow.setValue(BookingCTAState.IDLE);
            bookingListViewModelImpl.r.a(BookingListNavigationEvent.BookingUpdated.f54569a);
            sharedFlowImpl.a(NotificationBuilder.a(bookingListViewModelImpl.d, new StringResourceUiModel.ResId(R.string.booking_modify_success_message, null, 2, null), true, null, null, 60));
        }
        Throwable thA = Result.a(obj2);
        if (thA != null) {
            Logger logger = bookingListViewModelImpl.f54574e;
            int i3 = BookingListViewModelImpl.x;
            thA.toString();
            logger.getClass();
            monitorAction.d(new BookingMonitoring.Error.ModifyExperienceError(thA));
            mutableStateFlow.setValue(BookingCTAState.ERROR);
            sharedFlowImpl.a(NotificationBuilder.a(bookingListViewModelImpl.d, BookingErrorExtKt.a(thA), false, null, null, 60));
        }
        monitorAction.b();
        return Unit.f71739a;
    }
}
