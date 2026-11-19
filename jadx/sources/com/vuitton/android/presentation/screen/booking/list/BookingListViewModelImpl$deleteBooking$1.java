package com.vuitton.android.presentation.screen.booking.list;

import com.vuitton.android.R;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.booking.BookingMonitoring;
import com.vuitton.android.domain.usecase.booking.DeleteBookingUseCase;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.screen.booking.common.models.BookingCTAState;
import com.vuitton.android.presentation.screen.booking.list.models.BookingUiModel;
import com.vuitton.android.presentation.screen.booking.list.models.BookingUiModelMapperKt;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.booking.Booking;
import com.vuitton.foundation.model.domain.model.booking.BookingAdditional;
import com.vuitton.foundation.model.domain.model.booking.BookingId;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.booking.list.BookingListViewModelImpl$deleteBooking$1", f = "BookingListViewModelImpl.kt", l = {172}, m = "invokeSuspend", v = 2)
final class BookingListViewModelImpl$deleteBooking$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f54580b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f54581c;
    public final /* synthetic */ BookingListViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f54582e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BookingListViewModelImpl$deleteBooking$1(BookingListViewModelImpl bookingListViewModelImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.d = bookingListViewModelImpl;
        this.f54582e = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new BookingListViewModelImpl$deleteBooking$1(this.d, this.f54582e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((BookingListViewModelImpl$deleteBooking$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object next;
        Object obj2;
        MonitorAction monitorAction;
        String str;
        Object value;
        ArrayList arrayList;
        Object value2;
        ArrayList arrayList2;
        Object value3;
        BookingListViewModelImpl bookingListViewModelImpl = this.d;
        SharedFlowImpl sharedFlowImpl = bookingListViewModelImpl.n;
        MutableStateFlow mutableStateFlow = bookingListViewModelImpl.l;
        MutableStateFlow mutableStateFlow2 = bookingListViewModelImpl.p;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f54581c;
        if (i2 == 0) {
            ResultKt.b(obj);
            mutableStateFlow2.setValue(BookingCTAState.LOADING);
            MonitorAction monitorActionA = bookingListViewModelImpl.g.a(bookingListViewModelImpl.f54577i, BookingMonitoring.Action.CancelExperience.f48849a);
            String str2 = this.f54582e;
            monitorActionA.c(str2, "bookingId");
            Iterator it = ((Iterable) mutableStateFlow.getValue()).iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                str = ((BookingUiModel) next).f54614a;
                BookingId.Companion companion = BookingId.INSTANCE;
            } while (!str.equals(str2));
            BookingUiModel bookingUiModel = (BookingUiModel) next;
            if (bookingUiModel != null) {
                monitorActionA.c(bookingUiModel.f54616c.getMonitoringValue(), "experienceType");
            }
            DeleteBookingUseCase deleteBookingUseCase = bookingListViewModelImpl.f54573c;
            this.f54580b = monitorActionA;
            this.f54581c = 1;
            Object objA = deleteBookingUseCase.a(str2, this);
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
            monitorAction = this.f54580b;
            ResultKt.b(obj);
            obj2 = ((Result) obj).f71708b;
        }
        Result.Companion companion2 = Result.INSTANCE;
        if (!(obj2 instanceof Result.Failure)) {
            BookingList bookingList = (BookingList) obj2;
            do {
                value = mutableStateFlow.getValue();
                List list = bookingList.f66748a;
                arrayList = new ArrayList(CollectionsKt.t(list, 10));
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    arrayList.add(BookingUiModelMapperKt.c((Booking) it2.next()));
                }
            } while (!mutableStateFlow.i(value, arrayList));
            MutableStateFlow mutableStateFlow3 = bookingListViewModelImpl.m;
            do {
                value2 = mutableStateFlow3.getValue();
                List list2 = bookingList.f66749b;
                arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
                Iterator it3 = list2.iterator();
                while (it3.hasNext()) {
                    arrayList2.add(BookingUiModelMapperKt.a((BookingAdditional) it3.next()));
                }
            } while (!mutableStateFlow3.i(value2, arrayList2));
            mutableStateFlow2.setValue(BookingCTAState.IDLE);
            MutableStateFlow mutableStateFlow4 = bookingListViewModelImpl.t;
            do {
                value3 = mutableStateFlow4.getValue();
            } while (!mutableStateFlow4.i(value3, null));
            bookingListViewModelImpl.r.a(BookingListNavigationEvent.BookingDeleted.f54568a);
            sharedFlowImpl.a(NotificationBuilder.a(bookingListViewModelImpl.d, new StringResourceUiModel.ResId(R.string.booking_cancel_success_message, null, 2, null), true, null, null, 60));
        }
        Throwable thA = Result.a(obj2);
        if (thA != null) {
            Logger logger = bookingListViewModelImpl.f54574e;
            int i3 = BookingListViewModelImpl.x;
            thA.toString();
            logger.getClass();
            monitorAction.d(new BookingMonitoring.Error.CancelExperienceError(thA));
            mutableStateFlow2.setValue(BookingCTAState.IDLE);
            sharedFlowImpl.a(NotificationBuilder.a(bookingListViewModelImpl.d, new StringResourceUiModel.ResId(R.string.error_generic, null, 2, null), false, null, null, 60));
        }
        monitorAction.b();
        return Unit.f71739a;
    }
}
