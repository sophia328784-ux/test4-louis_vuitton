package com.vuitton.android.presentation.screen.booking.list;

import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.usecase.booking.DeleteBookingUseCase;
import com.vuitton.android.domain.usecase.booking.GetBookingsUseCase;
import com.vuitton.android.domain.usecase.booking.UpdateBookingUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.presentation.common.ScreenOrigin;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.booking.common.models.BookingCTAState;
import com.vuitton.android.presentation.screen.booking.form.models.BookingFormUiModel;
import com.vuitton.android.presentation.screen.booking.list.models.BookingListViewState;
import com.vuitton.android.presentation.screen.booking.list.models.ExperienceBottomSheet;
import com.vuitton.android.presentation.screen.booking.list.models.MyExperiencesTrackingUiModel;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.v40;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.SharedFlowKt;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.flow.internal.CombineKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0017BQ\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0015\u0010\u0016¨\u0006\u0018"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModel;", "Lcom/vuitton/android/domain/usecase/booking/GetBookingsUseCase;", "getBookingsUseCase", "Lcom/vuitton/android/domain/usecase/booking/UpdateBookingUseCase;", "updateBookingUseCase", "Lcom/vuitton/android/domain/usecase/booking/DeleteBookingUseCase;", "deleteBookingUseCase", "Lcom/vuitton/android/presentation/notification/NotificationBuilder;", "notificationBuilder", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/domain/monitoring/Monitor;", "monitor", "Landroidx/lifecycle/SavedStateHandle;", "savedStateHandle", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "<init>", "(Lcom/vuitton/android/domain/usecase/booking/GetBookingsUseCase;Lcom/vuitton/android/domain/usecase/booking/UpdateBookingUseCase;Lcom/vuitton/android/domain/usecase/booking/DeleteBookingUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/monitoring/Monitor;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class BookingListViewModelImpl extends ViewModel implements BookingListViewModel {
    public static final /* synthetic */ int x = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GetBookingsUseCase f54571a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final UpdateBookingUseCase f54572b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DeleteBookingUseCase f54573c;
    public final NotificationBuilder d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Logger f54574e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AnalyticsTracker f54575f;
    public final Monitor g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ScreenOrigin f54576h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final InAppDispatch f54577i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final MutableStateFlow f54578j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final MutableStateFlow f54579k;
    public final MutableStateFlow l;
    public final MutableStateFlow m;
    public final SharedFlowImpl n;
    public final SharedFlow o;
    public final MutableStateFlow p;
    public final StateFlow q;
    public final SharedFlowImpl r;
    public final SharedFlow s;
    public final MutableStateFlow t;
    public final StateFlow u;
    public final MutableStateFlow v;
    public final StateFlow w;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$Companion;", "", "", "TAG", "Ljava/lang/String;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        Reflection.f71922a.b(BookingListViewModelImpl.class).B();
    }

    @Inject
    public BookingListViewModelImpl(GetBookingsUseCase getBookingsUseCase, UpdateBookingUseCase updateBookingUseCase, DeleteBookingUseCase deleteBookingUseCase, NotificationBuilder notificationBuilder, Logger logger, AnalyticsTracker analyticsTracker, Monitor monitor, SavedStateHandle savedStateHandle, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase) {
        getBookingsUseCase.getClass();
        updateBookingUseCase.getClass();
        deleteBookingUseCase.getClass();
        notificationBuilder.getClass();
        logger.getClass();
        analyticsTracker.getClass();
        monitor.getClass();
        savedStateHandle.getClass();
        requireUserInAppDispatchUseCase.getClass();
        this.f54571a = getBookingsUseCase;
        this.f54572b = updateBookingUseCase;
        this.f54573c = deleteBookingUseCase;
        this.d = notificationBuilder;
        this.f54574e = logger;
        this.f54575f = analyticsTracker;
        this.g = monitor;
        this.f54576h = (ScreenOrigin) savedStateHandle.a("EXTRA_ORIGIN");
        InAppDispatch inAppDispatchB = requireUserInAppDispatchUseCase.f49912a.b();
        this.f54577i = inAppDispatchB;
        Boolean bool = Boolean.FALSE;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(bool);
        this.f54578j = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(bool);
        this.f54579k = mutableStateFlowA2;
        EmptyList emptyList = EmptyList.f71768b;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(emptyList);
        this.l = mutableStateFlowA3;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(emptyList);
        this.m = mutableStateFlowA4;
        SharedFlowImpl sharedFlowImplB = SharedFlowKt.b(0, 1, null, 5);
        this.n = sharedFlowImplB;
        this.o = FlowKt.a(sharedFlowImplB);
        MutableStateFlow mutableStateFlowA5 = StateFlowKt.a(BookingCTAState.IDLE);
        this.p = mutableStateFlowA5;
        this.q = FlowKt.b(mutableStateFlowA5);
        SharedFlowImpl sharedFlowImplB2 = SharedFlowKt.b(0, 1, null, 5);
        this.r = sharedFlowImplB2;
        this.s = FlowKt.a(sharedFlowImplB2);
        MutableStateFlow mutableStateFlowA6 = StateFlowKt.a(null);
        this.t = mutableStateFlowA6;
        this.u = FlowKt.b(mutableStateFlowA6);
        this.v = StateFlowKt.a(bool);
        final BookingListViewModelImpl$listViewState$1 bookingListViewModelImpl$listViewState$1 = new BookingListViewModelImpl$listViewState$1(this, null);
        final Flow[] flowArr = {mutableStateFlowA, mutableStateFlowA2, mutableStateFlowA3, mutableStateFlowA4};
        Flow<Object> flow = new Flow<Object>() { // from class: kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2

            /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2$2, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 2, 0})
            @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2$2", f = "Zip.kt", l = {329, 258}, m = "invokeSuspend", v = 1)
            public final class AnonymousClass2 extends SuspendLambda implements Function3<FlowCollector<Object>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public FlowCollector f74945b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public int f74946c;
                public /* synthetic */ FlowCollector d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public /* synthetic */ Object[] f74947e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ Function5 f74948f;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass2(Continuation continuation, Function5 function5) {
                    super(3, continuation);
                    this.f74948f = function5;
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass2 anonymousClass2 = new AnonymousClass2((Continuation) obj3, this.f74948f);
                    anonymousClass2.d = (FlowCollector) obj;
                    anonymousClass2.f74947e = (Object[]) obj2;
                    return anonymousClass2.invokeSuspend(Unit.f71739a);
                }

                /* JADX WARN: Code restructure failed: missing block: B:14:0x004d, code lost:
                
                    if (r0.emit(r14, r12) == r2) goto L15;
                 */
                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object invokeSuspend(java.lang.Object r14) {
                    /*
                        r13 = this;
                        kotlinx.coroutines.flow.FlowCollector r0 = r13.d
                        java.lang.Object[] r1 = r13.f74947e
                        kotlin.coroutines.intrinsics.CoroutineSingletons r2 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                        int r3 = r13.f74946c
                        r4 = 2
                        r5 = 1
                        r6 = 0
                        if (r3 == 0) goto L22
                        if (r3 == r5) goto L1b
                        if (r3 != r4) goto L15
                        kotlin.ResultKt.b(r14)
                        goto L50
                    L15:
                        java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
                        defpackage.md.k(r13)
                        return r6
                    L1b:
                        kotlinx.coroutines.flow.FlowCollector r0 = r13.f74945b
                        kotlin.ResultKt.b(r14)
                        r12 = r13
                        goto L41
                    L22:
                        kotlin.ResultKt.b(r14)
                        r14 = 0
                        r8 = r1[r14]
                        r9 = r1[r5]
                        r10 = r1[r4]
                        r14 = 3
                        r11 = r1[r14]
                        r13.d = r6
                        r13.f74947e = r6
                        r13.f74945b = r0
                        r13.f74946c = r5
                        kotlin.jvm.functions.Function5 r7 = r13.f74948f
                        r12 = r13
                        java.lang.Object r14 = r7.D(r8, r9, r10, r11, r12)
                        if (r14 != r2) goto L41
                        goto L4f
                    L41:
                        r12.d = r6
                        r12.f74947e = r6
                        r12.f74945b = r6
                        r12.f74946c = r4
                        java.lang.Object r13 = r0.emit(r14, r12)
                        if (r13 != r2) goto L50
                    L4f:
                        return r2
                    L50:
                        kotlin.Unit r13 = kotlin.Unit.f71739a
                        return r13
                    */
                    throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public final Object f(FlowCollector flowCollector, Continuation continuation) {
                Object objA = CombineKt.a(continuation, FlowKt__ZipKt$nullArrayFactory$1.f74961b, new AnonymousClass2(null, bookingListViewModelImpl$listViewState$1), flowCollector, flowArr);
                return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : Unit.f71739a;
            }
        };
        CloseableCoroutineScope closeableCoroutineScopeA = ViewModelKt.a(this);
        SharingStarted.f74985a.getClass();
        this.w = FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new BookingListViewState(inAppDispatchB, false, false, null, null, 30, null));
        O8();
    }

    public final void Ac(ExperienceBottomSheet.CancelWarning cancelWarning) {
        this.t.setValue(cancelWarning);
    }

    public final void Bc(String str, BookingFormUiModel bookingFormUiModel) {
        bookingFormUiModel.getClass();
        this.p.setValue(BookingCTAState.LOADING);
        BuildersKt.c(ViewModelKt.a(this), null, null, new BookingListViewModelImpl$updateBooking$1(this, str, bookingFormUiModel, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.booking.list.BookingListViewModel
    public final void O8() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new BookingListViewModelImpl$fetchExperiences$1(this, null), 3);
    }

    public final void yc(String str) {
        str.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new BookingListViewModelImpl$deleteBooking$1(this, str, null), 3);
    }

    public final void zc(MyExperiencesTrackingUiModel myExperiencesTrackingUiModel) {
        Hit defaultEventHit;
        if (myExperiencesTrackingUiModel instanceof MyExperiencesTrackingUiModel.MyExperienceListScreen) {
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "my_experiences", "my_experiences", "mylv", null, 17, null);
        } else if (myExperiencesTrackingUiModel instanceof MyExperiencesTrackingUiModel.MyExperienceDetailScreen) {
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "my_experience_detail", "my_experience_detail", "mylv", CollectionsKt.O(new AdditionalProperty.ExperienceId(CollectionsKt.O(((MyExperiencesTrackingUiModel.MyExperienceDetailScreen) myExperiencesTrackingUiModel).f54634a))), 1, null);
        } else if (myExperiencesTrackingUiModel instanceof MyExperiencesTrackingUiModel.MyExperiencePassScreen) {
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "my_experience_qr_code", "my_experience_qr_code", "mylv", CollectionsKt.O(new AdditionalProperty.ExperienceId(CollectionsKt.O(((MyExperiencesTrackingUiModel.MyExperiencePassScreen) myExperiencesTrackingUiModel).f54636a))), 1, null);
        } else if (myExperiencesTrackingUiModel instanceof MyExperiencesTrackingUiModel.MyExperienceClickEvent) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "my_experiences", "view_detail", "MyLV", "click", "mylv", CollectionsKt.O(new AdditionalProperty.ExperienceId(CollectionsKt.O(((MyExperiencesTrackingUiModel.MyExperienceClickEvent) myExperiencesTrackingUiModel).f54633a))), 1, null);
        } else if (myExperiencesTrackingUiModel instanceof MyExperiencesTrackingUiModel.AdditionalExperienceClickEvent) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "my_experiences", "extend_your_experience", "MyLV", "click", "mylv", CollectionsKt.O(new AdditionalProperty.ExperienceId(CollectionsKt.O(((MyExperiencesTrackingUiModel.AdditionalExperienceClickEvent) myExperiencesTrackingUiModel).f54630a))), 1, null);
        } else if (myExperiencesTrackingUiModel instanceof MyExperiencesTrackingUiModel.ViewPassClickEvent) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "my_experience_detail", "view_qr_code", "MyLV", "click", "mylv", CollectionsKt.O(new AdditionalProperty.ExperienceId(CollectionsKt.O(((MyExperiencesTrackingUiModel.ViewPassClickEvent) myExperiencesTrackingUiModel).f54637a))), 1, null);
        } else if (myExperiencesTrackingUiModel instanceof MyExperiencesTrackingUiModel.AddToCalendarClickEvent) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "my_experience_detail", "add_to_calendar", "MyLV", "click", "mylv", CollectionsKt.O(new AdditionalProperty.ExperienceId(CollectionsKt.O(((MyExperiencesTrackingUiModel.AddToCalendarClickEvent) myExperiencesTrackingUiModel).f54629a))), 1, null);
        } else if (myExperiencesTrackingUiModel instanceof MyExperiencesTrackingUiModel.ModifyClickEvent) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "my_experience_detail", "modify", "MyLV", "click", "mylv", CollectionsKt.O(new AdditionalProperty.ExperienceId(CollectionsKt.O(((MyExperiencesTrackingUiModel.ModifyClickEvent) myExperiencesTrackingUiModel).f54632a))), 1, null);
        } else {
            if (!(myExperiencesTrackingUiModel instanceof MyExperiencesTrackingUiModel.DeleteClickEvent)) {
                v40.g();
                return;
            }
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "my_experience_detail", "cancel_intention", "MyLV", "click", "mylv", CollectionsKt.O(new AdditionalProperty.ExperienceId(CollectionsKt.O(((MyExperiencesTrackingUiModel.DeleteClickEvent) myExperiencesTrackingUiModel).f54631a))), 1, null);
        }
        this.f54575f.a(defaultEventHit);
    }
}
