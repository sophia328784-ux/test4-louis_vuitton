package com.vuitton.android.presentation.screen.booking.personalinfo;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.R;
import com.vuitton.android.domain.service.authentication.UserSessionService;
import com.vuitton.android.domain.usecase.account.GetAccountStatusUseCase;
import com.vuitton.android.domain.usecase.account.GetProfileUseCase;
import com.vuitton.android.domain.usecase.booking.GetBookingMegatrioUseCase;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.domain.usecase.forms.GetBookingPersonalInfoFormUseCase;
import com.vuitton.android.domain.usecase.forms.mapping.GetProfileCivilitiesMappingUseCase;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.android.presentation.screen.booking.personalinfo.models.BookingPersonalInfoTrackingUiModel;
import com.vuitton.android.presentation.screen.booking.personalinfo.models.BookingPersonalInfoViewState;
import com.vuitton.android.presentation.screen.dynamicform.DynamicFormSupervisor;
import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.booking.BookingExternalContent;
import com.vuitton.foundation.model.domain.model.booking.BookingMegatrio;
import com.vuitton.foundation.model.domain.model.booking.PreBookConfirmForm;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.iv;
import defpackage.md;
import defpackage.rq;
import defpackage.rt;
import defpackage.v40;
import defpackage.xe;
import java.util.Set;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
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
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u001dBi\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019¢\u0006\u0004\b\u001b\u0010\u001c¨\u0006\u001e"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModel;", "Lcom/vuitton/android/domain/usecase/account/GetAccountStatusUseCase;", "getAccountStatusUseCase", "Lcom/vuitton/android/domain/usecase/forms/GetBookingPersonalInfoFormUseCase;", "getBookingPersonalInfoFormUseCase", "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;", "getProfileUseCase", "Lcom/vuitton/android/domain/usecase/forms/mapping/GetProfileCivilitiesMappingUseCase;", "getProfileCivilitiesMappingUseCase", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/usecase/booking/GetBookingMegatrioUseCase;", "getBookingMegatrioUseCase", "Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;", "bookingFormSupervisor", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/presentation/notification/NotificationBuilder;", "notificationBuilder", "Lcom/vuitton/android/domain/service/authentication/UserSessionService;", "userSessionService", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "<init>", "(Lcom/vuitton/android/domain/usecase/account/GetAccountStatusUseCase;Lcom/vuitton/android/domain/usecase/forms/GetBookingPersonalInfoFormUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/forms/mapping/GetProfileCivilitiesMappingUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/booking/GetBookingMegatrioUseCase;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class BookingPersonalInfoViewModelImpl extends ViewModel implements BookingPersonalInfoViewModel {
    public static final String w;
    public static final Set x;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GetAccountStatusUseCase f54665a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final GetBookingPersonalInfoFormUseCase f54666b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final GetProfileUseCase f54667c;
    public final GetProfileCivilitiesMappingUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final IsFeatureAvailableUseCase f54668e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final GetBookingMegatrioUseCase f54669f;
    public final DynamicFormSupervisor g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Logger f54670h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final NotificationBuilder f54671i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final UserSessionService f54672j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AnalyticsTracker f54673k;
    public final InAppDispatch l;
    public final MutableStateFlow m;
    public final MutableStateFlow n;
    public final MutableStateFlow o;
    public final MutableStateFlow p;
    public final MutableStateFlow q;
    public final SharedFlowImpl r;
    public final SharedFlow s;
    public final SharedFlowImpl t;
    public final SharedFlow u;
    public final StateFlow v;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl$Companion;", "", "", "TAG", "Ljava/lang/String;", "", "Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;", "READ_ONLY_PROFILE_SECTIONS", "Ljava/util/Set;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        w = Reflection.f71922a.b(BookingPersonalInfoViewModelImpl.class).B();
        x = ArraysKt.Z(new FormSectionTypeUiModel[]{FormSectionTypeUiModel.EMAIL, FormSectionTypeUiModel.CIVILITY, FormSectionTypeUiModel.FIRSTNAME1, FormSectionTypeUiModel.FIRSTNAME2, FormSectionTypeUiModel.LASTNAME1, FormSectionTypeUiModel.LASTNAME2});
    }

    @Inject
    public BookingPersonalInfoViewModelImpl(GetAccountStatusUseCase getAccountStatusUseCase, GetBookingPersonalInfoFormUseCase getBookingPersonalInfoFormUseCase, GetProfileUseCase getProfileUseCase, GetProfileCivilitiesMappingUseCase getProfileCivilitiesMappingUseCase, IsFeatureAvailableUseCase isFeatureAvailableUseCase, GetBookingMegatrioUseCase getBookingMegatrioUseCase, DynamicFormSupervisor dynamicFormSupervisor, Logger logger, NotificationBuilder notificationBuilder, UserSessionService userSessionService, AnalyticsTracker analyticsTracker, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase) {
        getAccountStatusUseCase.getClass();
        getBookingPersonalInfoFormUseCase.getClass();
        getProfileUseCase.getClass();
        getProfileCivilitiesMappingUseCase.getClass();
        isFeatureAvailableUseCase.getClass();
        getBookingMegatrioUseCase.getClass();
        dynamicFormSupervisor.getClass();
        logger.getClass();
        notificationBuilder.getClass();
        userSessionService.getClass();
        analyticsTracker.getClass();
        requireUserInAppDispatchUseCase.getClass();
        this.f54665a = getAccountStatusUseCase;
        this.f54666b = getBookingPersonalInfoFormUseCase;
        this.f54667c = getProfileUseCase;
        this.d = getProfileCivilitiesMappingUseCase;
        this.f54668e = isFeatureAvailableUseCase;
        this.f54669f = getBookingMegatrioUseCase;
        this.g = dynamicFormSupervisor;
        this.f54670h = logger;
        this.f54671i = notificationBuilder;
        this.f54672j = userSessionService;
        this.f54673k = analyticsTracker;
        this.l = requireUserInAppDispatchUseCase.f49912a.b();
        MutableStateFlow mutableStateFlowA = StateFlowKt.a("");
        this.m = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(Boolean.valueOf(userSessionService.b()));
        this.n = mutableStateFlowA2;
        Boolean bool = Boolean.FALSE;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(bool);
        this.o = mutableStateFlowA3;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(bool);
        this.p = mutableStateFlowA4;
        MutableStateFlow mutableStateFlowA5 = StateFlowKt.a(null);
        this.q = mutableStateFlowA5;
        SharedFlowImpl sharedFlowImplB = SharedFlowKt.b(0, 1, null, 5);
        this.r = sharedFlowImplB;
        this.s = FlowKt.a(sharedFlowImplB);
        SharedFlowImpl sharedFlowImplB2 = SharedFlowKt.b(0, 1, null, 5);
        this.t = sharedFlowImplB2;
        this.u = FlowKt.a(sharedFlowImplB2);
        final Flow[] flowArr = {mutableStateFlowA, mutableStateFlowA2, dynamicFormSupervisor.getF57468c(), mutableStateFlowA4, mutableStateFlowA3, mutableStateFlowA5};
        this.v = FlowKt.A(new Flow<BookingPersonalInfoViewState>() { // from class: com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoViewModelImpl$special$$inlined$combine$1$3", f = "BookingPersonalInfoViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super BookingPersonalInfoViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f54696b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f54697c;
                public /* synthetic */ Object[] d;

                public AnonymousClass3(Continuation continuation) {
                    super(3, continuation);
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3);
                    anonymousClass3.f54697c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f54697c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f54696b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        Object obj2 = objArr[2];
                        obj2.getClass();
                        FormUiModel formUiModel = (FormUiModel) obj2;
                        Object obj3 = objArr[0];
                        obj3.getClass();
                        String str = (String) obj3;
                        Object obj4 = objArr[1];
                        obj4.getClass();
                        boolean zBooleanValue = ((Boolean) obj4).booleanValue();
                        Object obj5 = objArr[2];
                        obj5.getClass();
                        FormUiModel formUiModel2 = (FormUiModel) obj5;
                        Object obj6 = objArr[3];
                        obj6.getClass();
                        boolean zBooleanValue2 = ((Boolean) obj6).booleanValue();
                        Object obj7 = objArr[4];
                        obj7.getClass();
                        BookingPersonalInfoViewState bookingPersonalInfoViewState = new BookingPersonalInfoViewState(str, zBooleanValue2, zBooleanValue, ((Boolean) obj7).booleanValue(), formUiModel2, !formUiModel.f57486a.isEmpty() && formUiModel.i(), (BookingExternalContent) objArr[5]);
                        this.f54697c = null;
                        this.d = null;
                        this.f54696b = 1;
                        if (flowCollector.emit(bookingPersonalInfoViewState, this) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    } else {
                        if (i2 != 1) {
                            md.k("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        ResultKt.b(obj);
                    }
                    return Unit.f71739a;
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public final Object f(FlowCollector flowCollector, Continuation continuation) {
                final Flow[] flowArr2 = flowArr;
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoViewModelImpl$special$$inlined$combine$1.2
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        return new Object[flowArr2.length];
                    }
                }, new AnonymousClass3(null), flowCollector, flowArr2);
                return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : Unit.f71739a;
            }
        }, ViewModelKt.a(this), SharingStarted.Companion.a(SharingStarted.f74985a, 3), new BookingPersonalInfoViewState(null, false, userSessionService.b(), false, null, false, null, 123, null));
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object yc(BookingPersonalInfoViewModelImpl bookingPersonalInfoViewModelImpl, ContinuationImpl continuationImpl) {
        BookingPersonalInfoViewModelImpl$loadBookingPolicy$1 bookingPersonalInfoViewModelImpl$loadBookingPolicy$1;
        Object objA;
        if (continuationImpl instanceof BookingPersonalInfoViewModelImpl$loadBookingPolicy$1) {
            bookingPersonalInfoViewModelImpl$loadBookingPolicy$1 = (BookingPersonalInfoViewModelImpl$loadBookingPolicy$1) continuationImpl;
            int i2 = bookingPersonalInfoViewModelImpl$loadBookingPolicy$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                bookingPersonalInfoViewModelImpl$loadBookingPolicy$1.d = i2 - Integer.MIN_VALUE;
            } else {
                bookingPersonalInfoViewModelImpl$loadBookingPolicy$1 = new BookingPersonalInfoViewModelImpl$loadBookingPolicy$1(bookingPersonalInfoViewModelImpl, continuationImpl);
            }
        } else {
            bookingPersonalInfoViewModelImpl$loadBookingPolicy$1 = new BookingPersonalInfoViewModelImpl$loadBookingPolicy$1(bookingPersonalInfoViewModelImpl, continuationImpl);
        }
        Object obj = bookingPersonalInfoViewModelImpl$loadBookingPolicy$1.f54677b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = bookingPersonalInfoViewModelImpl$loadBookingPolicy$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            GetBookingMegatrioUseCase getBookingMegatrioUseCase = bookingPersonalInfoViewModelImpl.f54669f;
            bookingPersonalInfoViewModelImpl$loadBookingPolicy$1.d = 1;
            objA = getBookingMegatrioUseCase.a(bookingPersonalInfoViewModelImpl$loadBookingPolicy$1);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        }
        Throwable thA = Result.a(objA);
        if (thA != null) {
            bookingPersonalInfoViewModelImpl.f54670h.b(w, new xe(28), thA);
        }
        if (objA instanceof Result.Failure) {
            objA = null;
        }
        BookingMegatrio bookingMegatrio = (BookingMegatrio) objA;
        if (bookingMegatrio != null) {
            return bookingMegatrio.f66750a;
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:35:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:39:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:42:0x00df  */
    /* JADX WARN: Code duplicated, block: B:47:0x010b  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00fb, code lost:
    
        if (r10.Ac(r5, new defpackage.t(21), r4, r0) == r1) goto L44;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object zc(com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoViewModelImpl r10, defpackage.x4 r11, kotlin.coroutines.jvm.internal.ContinuationImpl r12) {
        /*
            Method dump skipped, instruction units count: 284
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoViewModelImpl.zc(com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoViewModelImpl, x4, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0018  */
    public final Object Ac(Function1 function1, Function2 function2, Function1 function3, ContinuationImpl continuationImpl) {
        BookingPersonalInfoViewModelImpl$loadForm$2 bookingPersonalInfoViewModelImpl$loadForm$2;
        Object objB;
        if (continuationImpl instanceof BookingPersonalInfoViewModelImpl$loadForm$2) {
            bookingPersonalInfoViewModelImpl$loadForm$2 = (BookingPersonalInfoViewModelImpl$loadForm$2) continuationImpl;
            int i2 = bookingPersonalInfoViewModelImpl$loadForm$2.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                bookingPersonalInfoViewModelImpl$loadForm$2.d = i2 - Integer.MIN_VALUE;
            } else {
                bookingPersonalInfoViewModelImpl$loadForm$2 = new BookingPersonalInfoViewModelImpl$loadForm$2(this, continuationImpl);
            }
        } else {
            bookingPersonalInfoViewModelImpl$loadForm$2 = new BookingPersonalInfoViewModelImpl$loadForm$2(this, continuationImpl);
        }
        BookingPersonalInfoViewModelImpl$loadForm$2 bookingPersonalInfoViewModelImpl$loadForm$3 = bookingPersonalInfoViewModelImpl$loadForm$2;
        Object obj = bookingPersonalInfoViewModelImpl$loadForm$3.f54686b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = bookingPersonalInfoViewModelImpl$loadForm$3.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            BookingPersonalInfoViewModelImpl$loadForm$5 bookingPersonalInfoViewModelImpl$loadForm$5 = new BookingPersonalInfoViewModelImpl$loadForm$5(this, null);
            bookingPersonalInfoViewModelImpl$loadForm$3.d = 1;
            objB = this.g.b(bookingPersonalInfoViewModelImpl$loadForm$5, (124 & 2) != 0 ? new iv(2) : function3, (124 & 4) != 0 ? new rq(7) : function2, (124 & 8) != 0 ? new iv(3) : null, (124 & 16) != 0 ? new rt(11) : null, (124 & 32) != 0 ? new iv(4) : function1, (124 & 64) != 0 ? new rq(8) : null, (124 & 128) != 0 ? new iv(5) : null, (124 & 256) != 0 ? new iv(6) : null, bookingPersonalInfoViewModelImpl$loadForm$3);
            if (objB == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objB = ((Result) obj).f71708b;
        }
        Throwable thA = Result.a(objB);
        if (thA != null) {
            this.f54670h.b(w, new xe(26), thA);
            this.t.a(NotificationBuilder.a(this.f54671i, new StringResourceUiModel.ResId(R.string.error_generic, null, 2, null), false, null, null, 60));
        }
        return Unit.f71739a;
    }

    @Override // com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoViewModel
    public final void O6() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new BookingPersonalInfoViewModelImpl$loadForm$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoViewModel
    public final boolean V8() {
        return this.f54672j.b();
    }

    @Override // com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoViewModel
    public final void Y1() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new BookingPersonalInfoViewModelImpl$checkAccountStatus$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getV() {
        return this.v;
    }

    @Override // com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoViewModel
    /* JADX INFO: renamed from: b, reason: from getter */
    public final SharedFlow getU() {
        return this.u;
    }

    @Override // com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoViewModel
    public final PreBookConfirmForm c4() {
        FormUiModel formUiModel = (FormUiModel) this.g.getF57468c().getValue();
        boolean zB = this.f54672j.b();
        formUiModel.getClass();
        return new PreBookConfirmForm(formUiModel.e(FormSectionTypeUiModel.EMAIL, true), formUiModel.e(FormSectionTypeUiModel.FIRSTNAME1, true), FormUiModel.g(formUiModel, FormSectionTypeUiModel.FIRSTNAME2, null, false, 6), formUiModel.e(FormSectionTypeUiModel.LASTNAME1, true), FormUiModel.g(formUiModel, FormSectionTypeUiModel.LASTNAME2, null, false, 6), FormUiModel.g(formUiModel, FormSectionTypeUiModel.COUNTRY, null, false, 6), formUiModel.e(FormSectionTypeUiModel.PHONE_NUMBER1, true), formUiModel.e(FormSectionTypeUiModel.PHONE_NUMBER_COUNTRY1, true), formUiModel.e(FormSectionTypeUiModel.PHONE_NUMBER_TYPE1, true), formUiModel.e(FormSectionTypeUiModel.CIVILITY, true), zB ? null : Boolean.valueOf(Intrinsics.c(FormUiModel.d(formUiModel, FormSectionTypeUiModel.BOOKING_MARKETING_EMAILS_CONSENT), Boolean.TRUE)));
    }

    @Override // com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoViewModel
    public final void c5(String str) {
        str.getClass();
        this.m.setValue(str);
        this.p.setValue(Boolean.FALSE);
    }

    @Override // com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoViewModel
    public final void f(FormSectionTypeUiModel formSectionTypeUiModel, Object obj) {
        formSectionTypeUiModel.getClass();
        this.g.j(formSectionTypeUiModel, obj, new rq(9));
    }

    @Override // com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoViewModel
    public final void k4() {
        this.t.a(NotificationBuilder.a(this.f54671i, new StringResourceUiModel.ResId(R.string.error_generic, null, 2, null), false, null, null, 60));
    }

    @Override // com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoViewModel
    public final void va(BookingPersonalInfoTrackingUiModel bookingPersonalInfoTrackingUiModel) {
        Hit defaultEventHit;
        if (bookingPersonalInfoTrackingUiModel.equals(BookingPersonalInfoTrackingUiModel.LoginScreen.f54728a)) {
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "booking_identification_login", "booking_identification_login", "booking_authentification", CollectionsKt.O(new AdditionalProperty.Origin(TrackingAuthOrigin.BOOKING.getTrackingKey())), 1, null);
        } else if (bookingPersonalInfoTrackingUiModel.equals(BookingPersonalInfoTrackingUiModel.PersonalInfoScreen.f54730a)) {
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "booking_personal_info_step", "booking_personal_info_step", "booking_authentification", CollectionsKt.O(new AdditionalProperty.Origin(TrackingAuthOrigin.BOOKING.getTrackingKey())), 1, null);
        } else if (bookingPersonalInfoTrackingUiModel.equals(BookingPersonalInfoTrackingUiModel.LoginContinueEvent.f54727a)) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "booking_identification_login", "continue", "booking_identification_login", "click", "booking_authentification", null, 65, null);
        } else {
            if (!bookingPersonalInfoTrackingUiModel.equals(BookingPersonalInfoTrackingUiModel.PersonalInfoConfirmEvent.f54729a)) {
                v40.g();
                return;
            }
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "booking_personal_info_step", "confirm_personal_info", "booking_personal_info_step", "click", "booking_authentification", null, 65, null);
        }
        this.f54673k.a(defaultEventHit);
    }

    @Override // com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoViewModel
    /* JADX INFO: renamed from: y, reason: from getter */
    public final SharedFlow getS() {
        return this.s;
    }
}
