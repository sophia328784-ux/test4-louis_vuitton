package com.vuitton.android.presentation.screen.booking.list;

import com.vuitton.android.data.monitoring.DynatraceMonitorAction;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.booking.BookingMonitoring;
import com.vuitton.android.domain.usecase.booking.GetBookingsUseCase;
import com.vuitton.android.presentation.common.ScreenOrigin;
import com.vuitton.android.presentation.screen.booking.list.models.BookingUiModelMapperKt;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.booking.Booking;
import com.vuitton.foundation.model.domain.model.booking.BookingAdditional;
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

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.booking.list.BookingListViewModelImpl$fetchExperiences$1", f = "BookingListViewModelImpl.kt", l = {143}, m = "invokeSuspend", v = 2)
final class BookingListViewModelImpl$fetchExperiences$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f54583b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f54584c;
    public final /* synthetic */ BookingListViewModelImpl d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BookingListViewModelImpl$fetchExperiences$1(BookingListViewModelImpl bookingListViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.d = bookingListViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new BookingListViewModelImpl$fetchExperiences$1(this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((BookingListViewModelImpl$fetchExperiences$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object value;
        MonitorAction monitorAction;
        Object obj2;
        Object value2;
        Object value3;
        Object value4;
        ArrayList arrayList;
        Object value5;
        ArrayList arrayList2;
        Object value6;
        BookingListViewModelImpl bookingListViewModelImpl = this.d;
        MutableStateFlow mutableStateFlow = bookingListViewModelImpl.f54579k;
        MutableStateFlow mutableStateFlow2 = bookingListViewModelImpl.f54578j;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f54584c;
        if (i2 == 0) {
            ResultKt.b(obj);
            DynatraceMonitorAction dynatraceMonitorActionA = bookingListViewModelImpl.g.a(bookingListViewModelImpl.f54577i, BookingMonitoring.Action.OpenMyExperiences.f48854a);
            do {
                value = mutableStateFlow2.getValue();
                ((Boolean) value).getClass();
            } while (!mutableStateFlow2.i(value, Boolean.TRUE));
            GetBookingsUseCase getBookingsUseCase = bookingListViewModelImpl.f54571a;
            this.f54583b = dynatraceMonitorActionA;
            this.f54584c = 1;
            Object objA = getBookingsUseCase.a(this);
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
            MonitorAction monitorAction2 = this.f54583b;
            ResultKt.b(obj);
            obj2 = ((Result) obj).f71708b;
            monitorAction = monitorAction2;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(obj2 instanceof Result.Failure)) {
            BookingList bookingList = (BookingList) obj2;
            if (bookingList.f66748a.isEmpty() && bookingListViewModelImpl.f54576h == ScreenOrigin.CUSTOMER_SERVICES) {
                bookingListViewModelImpl.r.a(BookingListNavigationEvent.ToOSAForm.f54570a);
            }
            MutableStateFlow mutableStateFlow3 = bookingListViewModelImpl.l;
            do {
                value4 = mutableStateFlow3.getValue();
                List list = bookingList.f66748a;
                arrayList = new ArrayList(CollectionsKt.t(list, 10));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(BookingUiModelMapperKt.c((Booking) it.next()));
                }
            } while (!mutableStateFlow3.i(value4, arrayList));
            MutableStateFlow mutableStateFlow4 = bookingListViewModelImpl.m;
            do {
                value5 = mutableStateFlow4.getValue();
                List list2 = bookingList.f66749b;
                arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
                Iterator it2 = list2.iterator();
                while (it2.hasNext()) {
                    arrayList2.add(BookingUiModelMapperKt.a((BookingAdditional) it2.next()));
                }
            } while (!mutableStateFlow4.i(value5, arrayList2));
            do {
                value6 = mutableStateFlow.getValue();
                ((Boolean) value6).getClass();
            } while (!mutableStateFlow.i(value6, Boolean.FALSE));
        }
        Throwable thA = Result.a(obj2);
        if (thA != null) {
            Logger logger = bookingListViewModelImpl.f54574e;
            int i3 = BookingListViewModelImpl.x;
            thA.toString();
            logger.getClass();
            monitorAction.d(new BookingMonitoring.Error.OpenMyExperiencesError(thA));
            do {
                value3 = mutableStateFlow.getValue();
                ((Boolean) value3).getClass();
            } while (!mutableStateFlow.i(value3, Boolean.TRUE));
        }
        do {
            value2 = mutableStateFlow2.getValue();
            ((Boolean) value2).getClass();
        } while (!mutableStateFlow2.i(value2, Boolean.FALSE));
        monitorAction.b();
        return Unit.f71739a;
    }
}
