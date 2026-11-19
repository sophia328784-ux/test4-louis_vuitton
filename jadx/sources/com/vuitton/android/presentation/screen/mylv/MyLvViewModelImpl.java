package com.vuitton.android.presentation.screen.mylv;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.vuitton.android.core.events.AppEvent;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.data.monitoring.DynatraceMonitorAction;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.mylv.MyLvMonitoring;
import com.vuitton.android.domain.service.authentication.UserSessionService;
import com.vuitton.android.domain.usecase.account.CheckEligibilityForPassUseCase;
import com.vuitton.android.domain.usecase.account.GetProfileUseCase;
import com.vuitton.android.domain.usecase.account.accessibility.GetAccessibilityValueUseCase;
import com.vuitton.android.domain.usecase.account.consent.GetUserConsentsUseCase;
import com.vuitton.android.domain.usecase.account.order.ClearOrdersCacheUseCase;
import com.vuitton.android.domain.usecase.account.order.GetOngoingOrdersUseCase;
import com.vuitton.android.domain.usecase.account.profile.ListenProfileUseCase;
import com.vuitton.android.domain.usecase.avatar.GetUserAvatarUseCase;
import com.vuitton.android.domain.usecase.booking.GetBookingsUseCase;
import com.vuitton.android.domain.usecase.careservices.GetCareServiceListBffUseCase;
import com.vuitton.android.domain.usecase.careservices.GetCareServiceListUseCase;
import com.vuitton.android.domain.usecase.certificate.GetCertificateListUseCase;
import com.vuitton.android.domain.usecase.config.GetECommerceStatusUseCase;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.config.RequireCachedAppConfigUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.domain.usecase.exclusivesales.GetUserExclusiveSalesUseCase;
import com.vuitton.android.domain.usecase.hotcontent.GetHotContentUseCase;
import com.vuitton.android.domain.usecase.osa.GetOnlineStoreAppointmentListUseCase;
import com.vuitton.android.presentation.common.hotcontent.models.HotContentItemMapperKt;
import com.vuitton.android.presentation.common.hotcontent.models.HotContentItemUiModel;
import com.vuitton.android.presentation.contact.ContactUsDelegate;
import com.vuitton.android.presentation.contact.ContactUsMode;
import com.vuitton.android.presentation.contact.models.ContactUsOrigin;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.profile.models.ProfileUiModel;
import com.vuitton.android.presentation.push.NotificationsManager;
import com.vuitton.android.presentation.screen.account.editavatar.models.AvatarItemUiModel;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.distantrepairs.models.RepairStatusUiModel;
import com.vuitton.android.presentation.screen.mylv.models.MyLvCounters;
import com.vuitton.android.presentation.screen.mylv.models.MyLvFeatureFlags;
import com.vuitton.android.presentation.screen.mylv.models.MyLvTrackingUiModel;
import com.vuitton.android.presentation.screen.mylv.models.MyLvTrackingUiModelKt;
import com.vuitton.android.presentation.screen.mylv.models.MyLvViewState;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceMapperKt;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceUiModel;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.account.accessibility.AccessibilityPreferenceType;
import com.vuitton.foundation.model.domain.model.authentication.LoginState;
import com.vuitton.foundation.model.domain.model.booking.BookingList;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceCategory;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceShort;
import com.vuitton.foundation.model.domain.model.chat.ChatProductModel;
import com.vuitton.foundation.model.domain.model.chat.ScreenType;
import com.vuitton.foundation.model.domain.model.config.AppConfig;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.exclusivesales.ExclusiveSalesUserInfo;
import com.vuitton.foundation.model.domain.model.hotcontent.HotContent;
import com.vuitton.foundation.model.domain.model.hotcontent.HotContentItem;
import com.vuitton.foundation.model.domain.model.osa.OnlineStoreAppointments;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import defpackage.md;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.flow.internal.CombineKt;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000°\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003Bá\u0001\b\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010$\u001a\u00020#\u0012\u0006\u0010&\u001a\u00020%\u0012\u0006\u0010(\u001a\u00020'\u0012\u0006\u0010*\u001a\u00020)\u0012\u0006\u0010,\u001a\u00020+\u0012\u0006\u0010.\u001a\u00020-\u0012\u0006\u00100\u001a\u00020/\u0012\u0006\u00102\u001a\u000201\u0012\u0006\u00104\u001a\u000203\u0012\u0006\u00106\u001a\u000205\u0012\u0006\u00108\u001a\u000207¢\u0006\u0004\b9\u0010:¨\u0006;"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModel;", "Lcom/vuitton/android/presentation/contact/ContactUsDelegate;", "Lcom/vuitton/android/domain/monitoring/Monitor;", "monitor", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "contactUsDelegate", "Lcom/vuitton/android/core/events/LVEventSender;", "eventSender", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/presentation/notification/NotificationBuilder;", "notificationBuilder", "Lcom/vuitton/android/presentation/push/NotificationsManager;", "notificationsManager", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/domain/service/authentication/UserSessionService;", "userSessionService", "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;", "requireCachedAppConfigUseCase", "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;", "getProfileUseCase", "Lcom/vuitton/android/domain/usecase/account/order/GetOngoingOrdersUseCase;", "getOngoingOrdersUseCase", "Lcom/vuitton/android/domain/usecase/account/order/ClearOrdersCacheUseCase;", "clearOrdersCacheUseCase", "Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;", "getHotContentUseCase", "Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListBffUseCase;", "getCareServiceListBffUseCase", "Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListUseCase;", "getCareServiceListUseCase", "Lcom/vuitton/android/domain/usecase/booking/GetBookingsUseCase;", "getBookingsUseCase", "Lcom/vuitton/android/domain/usecase/certificate/GetCertificateListUseCase;", "getCertificateListUseCase", "Lcom/vuitton/android/domain/usecase/exclusivesales/GetUserExclusiveSalesUseCase;", "getUserExclusiveSalesUseCase", "Lcom/vuitton/android/domain/usecase/osa/GetOnlineStoreAppointmentListUseCase;", "getOnlineStoreAppointmentListUseCase", "Lcom/vuitton/android/domain/usecase/account/CheckEligibilityForPassUseCase;", "checkEligibilityForPassUseCase", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/usecase/config/GetECommerceStatusUseCase;", "getECommerceStatusUseCase", "Lcom/vuitton/android/domain/usecase/account/consent/GetUserConsentsUseCase;", "getUserConsentsUseCase", "Lcom/vuitton/android/domain/usecase/account/profile/ListenProfileUseCase;", "listenProfileUseCase", "Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase;", "getUserAvatarUseCase", "Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityValueUseCase;", "getAccessibilityValueUseCase", "<init>", "(Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/push/NotificationsManager;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/account/order/GetOngoingOrdersUseCase;Lcom/vuitton/android/domain/usecase/account/order/ClearOrdersCacheUseCase;Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListBffUseCase;Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListUseCase;Lcom/vuitton/android/domain/usecase/booking/GetBookingsUseCase;Lcom/vuitton/android/domain/usecase/certificate/GetCertificateListUseCase;Lcom/vuitton/android/domain/usecase/exclusivesales/GetUserExclusiveSalesUseCase;Lcom/vuitton/android/domain/usecase/osa/GetOnlineStoreAppointmentListUseCase;Lcom/vuitton/android/domain/usecase/account/CheckEligibilityForPassUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/config/GetECommerceStatusUseCase;Lcom/vuitton/android/domain/usecase/account/consent/GetUserConsentsUseCase;Lcom/vuitton/android/domain/usecase/account/profile/ListenProfileUseCase;Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase;Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityValueUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class MyLvViewModelImpl extends ViewModel implements MyLvViewModel, ContactUsDelegate {
    public final InAppDispatch A;
    public final AppConfig B;
    public final BufferedChannel C;
    public final MutableStateFlow D;
    public final MutableStateFlow E;
    public final MutableStateFlow F;
    public final MutableStateFlow G;
    public final MutableStateFlow H;
    public final MutableStateFlow I;
    public final MutableStateFlow J;
    public final MutableStateFlow K;
    public final MutableStateFlow L;
    public final MutableStateFlow M;
    public final MutableStateFlow N;
    public final MutableStateFlow O;
    public final MutableStateFlow P;
    public final MutableStateFlow Q;
    public final MutableStateFlow R;
    public final StateFlow S;
    public boolean T;
    public final MonitorAction U;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Monitor f59263a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ContactUsDelegate f59264b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LVEventSender f59265c;
    public final Logger d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final NotificationBuilder f59266e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final NotificationsManager f59267f;
    public final AnalyticsTracker g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final UserSessionService f59268h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final RequireCachedAppConfigUseCase f59269i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final GetProfileUseCase f59270j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final GetOngoingOrdersUseCase f59271k;
    public final ClearOrdersCacheUseCase l;
    public final GetHotContentUseCase m;
    public final GetCareServiceListBffUseCase n;
    public final GetCareServiceListUseCase o;
    public final GetBookingsUseCase p;
    public final GetCertificateListUseCase q;
    public final GetUserExclusiveSalesUseCase r;
    public final GetOnlineStoreAppointmentListUseCase s;
    public final CheckEligibilityForPassUseCase t;
    public final IsFeatureAvailableUseCase u;
    public final GetECommerceStatusUseCase v;
    public final GetUserConsentsUseCase w;
    public final ListenProfileUseCase x;
    public final GetUserAvatarUseCase y;
    public final GetAccessibilityValueUseCase z;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl$1", f = "MyLvViewModelImpl.kt", l = {651}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f59272b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ MyLvViewModelImpl f59273c;

        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "loginState", "Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;"}, k = 3, mv = {2, 3, 0}, xi = 48)
        @DebugMetadata(c = "com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl$1$1", f = "MyLvViewModelImpl.kt", l = {203}, m = "invokeSuspend", v = 2)
        final class C02911 extends SuspendLambda implements Function2<LoginState, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f59274b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public /* synthetic */ Object f59275c;
            public final /* synthetic */ MyLvViewModelImpl d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C02911(Continuation continuation, MyLvViewModelImpl myLvViewModelImpl) {
                super(2, continuation);
                this.d = myLvViewModelImpl;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                C02911 c02911 = new C02911(continuation, this.d);
                c02911.f59275c = obj;
                return c02911;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((C02911) create((LoginState) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                LoginState loginState = (LoginState) this.f59275c;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.f59274b;
                if (i2 == 0) {
                    ResultKt.b(obj);
                    boolean zA = loginState.a();
                    MyLvViewModelImpl myLvViewModelImpl = this.d;
                    if (zA) {
                        if (((MyLvFeatureFlags) myLvViewModelImpl.K.getValue()).g) {
                            BuildersKt.c(ViewModelKt.a(myLvViewModelImpl), null, null, new MyLvViewModelImpl$checkUserEligibilityForPass$1(null, myLvViewModelImpl), 3);
                        }
                        myLvViewModelImpl.Q.setValue(myLvViewModelImpl.B.Q.f67250k);
                        BuildersKt.c(ViewModelKt.a(myLvViewModelImpl), null, null, new MyLvViewModelImpl$initData$1(null, myLvViewModelImpl), 3);
                        DefaultScheduler defaultScheduler = Dispatchers.f74659a;
                        BuildersKt.c(CoroutineScopeKt.a(DefaultIoScheduler.f75161b), null, null, new MyLvViewModelImpl$initConsent$1(null, myLvViewModelImpl), 3);
                    } else {
                        LVEventSender lVEventSender = myLvViewModelImpl.f59265c;
                        this.f59275c = null;
                        this.f59274b = 1;
                        if (lVEventSender.a(AppEvent.RefreshUserAvatar.f43508a, this) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
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

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Continuation continuation, MyLvViewModelImpl myLvViewModelImpl) {
            super(2, continuation);
            this.f59273c = myLvViewModelImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(continuation, this.f59273c);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f59272b;
            if (i2 == 0) {
                ResultKt.b(obj);
                MyLvViewModelImpl myLvViewModelImpl = this.f59273c;
                StateFlow stateFlow = myLvViewModelImpl.f59268h.g;
                C02911 c02911 = new C02911(null, myLvViewModelImpl);
                stateFlow.getClass();
                this.f59272b = 1;
                if (FlowKt.g(stateFlow, c02911, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            md.k("SharedFlow never completes, this call should never return.");
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Inject
    public MyLvViewModelImpl(Monitor monitor, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, ContactUsDelegate contactUsDelegate, LVEventSender lVEventSender, Logger logger, NotificationBuilder notificationBuilder, NotificationsManager notificationsManager, AnalyticsTracker analyticsTracker, UserSessionService userSessionService, RequireCachedAppConfigUseCase requireCachedAppConfigUseCase, GetProfileUseCase getProfileUseCase, GetOngoingOrdersUseCase getOngoingOrdersUseCase, ClearOrdersCacheUseCase clearOrdersCacheUseCase, GetHotContentUseCase getHotContentUseCase, GetCareServiceListBffUseCase getCareServiceListBffUseCase, GetCareServiceListUseCase getCareServiceListUseCase, GetBookingsUseCase getBookingsUseCase, GetCertificateListUseCase getCertificateListUseCase, GetUserExclusiveSalesUseCase getUserExclusiveSalesUseCase, GetOnlineStoreAppointmentListUseCase getOnlineStoreAppointmentListUseCase, CheckEligibilityForPassUseCase checkEligibilityForPassUseCase, IsFeatureAvailableUseCase isFeatureAvailableUseCase, GetECommerceStatusUseCase getECommerceStatusUseCase, GetUserConsentsUseCase getUserConsentsUseCase, ListenProfileUseCase listenProfileUseCase, GetUserAvatarUseCase getUserAvatarUseCase, GetAccessibilityValueUseCase getAccessibilityValueUseCase) {
        monitor.getClass();
        requireUserInAppDispatchUseCase.getClass();
        contactUsDelegate.getClass();
        lVEventSender.getClass();
        logger.getClass();
        notificationBuilder.getClass();
        notificationsManager.getClass();
        analyticsTracker.getClass();
        userSessionService.getClass();
        requireCachedAppConfigUseCase.getClass();
        getProfileUseCase.getClass();
        getOngoingOrdersUseCase.getClass();
        clearOrdersCacheUseCase.getClass();
        getHotContentUseCase.getClass();
        getCareServiceListBffUseCase.getClass();
        getCareServiceListUseCase.getClass();
        getBookingsUseCase.getClass();
        getCertificateListUseCase.getClass();
        getUserExclusiveSalesUseCase.getClass();
        getOnlineStoreAppointmentListUseCase.getClass();
        checkEligibilityForPassUseCase.getClass();
        isFeatureAvailableUseCase.getClass();
        getECommerceStatusUseCase.getClass();
        getUserConsentsUseCase.getClass();
        listenProfileUseCase.getClass();
        getUserAvatarUseCase.getClass();
        getAccessibilityValueUseCase.getClass();
        this.f59263a = monitor;
        this.f59264b = contactUsDelegate;
        this.f59265c = lVEventSender;
        this.d = logger;
        this.f59266e = notificationBuilder;
        this.f59267f = notificationsManager;
        this.g = analyticsTracker;
        this.f59268h = userSessionService;
        this.f59269i = requireCachedAppConfigUseCase;
        this.f59270j = getProfileUseCase;
        this.f59271k = getOngoingOrdersUseCase;
        this.l = clearOrdersCacheUseCase;
        this.m = getHotContentUseCase;
        this.n = getCareServiceListBffUseCase;
        this.o = getCareServiceListUseCase;
        this.p = getBookingsUseCase;
        this.q = getCertificateListUseCase;
        this.r = getUserExclusiveSalesUseCase;
        this.s = getOnlineStoreAppointmentListUseCase;
        this.t = checkEligibilityForPassUseCase;
        this.u = isFeatureAvailableUseCase;
        this.v = getECommerceStatusUseCase;
        this.w = getUserConsentsUseCase;
        this.x = listenProfileUseCase;
        this.y = getUserAvatarUseCase;
        this.z = getAccessibilityValueUseCase;
        InAppDispatch inAppDispatchB = requireUserInAppDispatchUseCase.f49912a.b();
        this.A = inAppDispatchB;
        this.B = requireCachedAppConfigUseCase.a();
        this.C = ChannelKt.a(0, 7, null);
        Boolean bool = Boolean.FALSE;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(bool);
        this.D = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(bool);
        this.E = mutableStateFlowA2;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(bool);
        this.F = mutableStateFlowA3;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(bool);
        this.G = mutableStateFlowA4;
        MutableStateFlow mutableStateFlowA5 = StateFlowKt.a(null);
        this.H = mutableStateFlowA5;
        MutableStateFlow mutableStateFlowA6 = StateFlowKt.a(bool);
        this.I = mutableStateFlowA6;
        MutableStateFlow mutableStateFlowA7 = StateFlowKt.a(bool);
        this.J = mutableStateFlowA7;
        MutableStateFlow mutableStateFlowA8 = StateFlowKt.a(new MyLvFeatureFlags(false, false, false, false, false, false, false, false, false, false, false, false, false, 8191, null));
        this.K = mutableStateFlowA8;
        MutableStateFlow mutableStateFlowA9 = StateFlowKt.a(null);
        this.L = mutableStateFlowA9;
        MutableStateFlow mutableStateFlowA10 = StateFlowKt.a("");
        this.M = mutableStateFlowA10;
        MutableStateFlow mutableStateFlowA11 = StateFlowKt.a(null);
        this.N = mutableStateFlowA11;
        MutableStateFlow mutableStateFlowA12 = StateFlowKt.a(new MyLvCounters(0 == true ? 1 : 0, 0 == true ? 1 : 0, 0 == true ? 1 : 0, 0 == true ? 1 : 0, 0 == true ? 1 : 0, 0 == true ? 1 : 0, 63, null));
        this.O = mutableStateFlowA12;
        MutableStateFlow mutableStateFlowA13 = StateFlowKt.a(null);
        this.P = mutableStateFlowA13;
        MutableStateFlow mutableStateFlowA14 = StateFlowKt.a(null);
        this.Q = mutableStateFlowA14;
        AvatarItemUiModel.f52325f.getClass();
        MutableStateFlow mutableStateFlowA15 = StateFlowKt.a(AvatarItemUiModel.g);
        this.R = mutableStateFlowA15;
        final Flow[] flowArr = {mutableStateFlowA, mutableStateFlowA2, mutableStateFlowA3, mutableStateFlowA4, mutableStateFlowA5, mutableStateFlowA6, mutableStateFlowA7, mutableStateFlowA8, mutableStateFlowA9, mutableStateFlowA10, mutableStateFlowA11, mutableStateFlowA12, mutableStateFlowA13, mutableStateFlowA14, mutableStateFlowA15};
        Flow<MyLvViewState> flow = new Flow<MyLvViewState>() { // from class: com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl$special$$inlined$combine$1$3", f = "MyLvViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super MyLvViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f59333b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f59334c;
                public /* synthetic */ Object[] d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ MyLvViewModelImpl f59335e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass3(Continuation continuation, MyLvViewModelImpl myLvViewModelImpl) {
                    super(3, continuation);
                    this.f59335e = myLvViewModelImpl;
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3, this.f59335e);
                    anonymousClass3.f59334c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f59334c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f59333b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        InAppDispatch inAppDispatch = this.f59335e.A;
                        Object obj2 = objArr[0];
                        obj2.getClass();
                        boolean zBooleanValue = ((Boolean) obj2).booleanValue();
                        Object obj3 = objArr[1];
                        obj3.getClass();
                        boolean zBooleanValue2 = ((Boolean) obj3).booleanValue();
                        Object obj4 = objArr[2];
                        obj4.getClass();
                        boolean zBooleanValue3 = ((Boolean) obj4).booleanValue();
                        Object obj5 = objArr[3];
                        obj5.getClass();
                        boolean zBooleanValue4 = ((Boolean) obj5).booleanValue();
                        Boolean bool = (Boolean) objArr[4];
                        Object obj6 = objArr[5];
                        obj6.getClass();
                        boolean zBooleanValue5 = ((Boolean) obj6).booleanValue();
                        Object obj7 = objArr[6];
                        obj7.getClass();
                        boolean zBooleanValue6 = ((Boolean) obj7).booleanValue();
                        Object obj8 = objArr[7];
                        obj8.getClass();
                        MyLvFeatureFlags myLvFeatureFlags = (MyLvFeatureFlags) obj8;
                        ProfileUiModel profileUiModel = (ProfileUiModel) objArr[8];
                        Object obj9 = objArr[9];
                        obj9.getClass();
                        String str = (String) obj9;
                        String str2 = (String) objArr[10];
                        Object obj10 = objArr[11];
                        obj10.getClass();
                        List list = (List) objArr[12];
                        String str3 = (String) objArr[13];
                        Object obj11 = objArr[14];
                        obj11.getClass();
                        MyLvViewState myLvViewState = new MyLvViewState(inAppDispatch, zBooleanValue, zBooleanValue2, zBooleanValue3, profileUiModel, str, str2, (MyLvCounters) obj10, myLvFeatureFlags, zBooleanValue4, bool, list, zBooleanValue5, str3, (AvatarItemUiModel) obj11, zBooleanValue6);
                        this.f59334c = null;
                        this.d = null;
                        this.f59333b = 1;
                        if (flowCollector.emit(myLvViewState, this) == coroutineSingletons) {
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
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl$special$$inlined$combine$1.2
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        return new Object[flowArr2.length];
                    }
                }, new AnonymousClass3(null, this), flowCollector, flowArr2);
                return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : Unit.f71739a;
            }
        };
        CloseableCoroutineScope closeableCoroutineScopeA = ViewModelKt.a(this);
        SharingStarted.f74985a.getClass();
        this.S = FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new MyLvViewState(inAppDispatchB, true, false, false, null, null, null, null, null, false, null, null, false, null, null, false, 65532, null));
        this.U = monitor.a(inAppDispatchB, MyLvMonitoring.Action.OpenMyLV.f48937a);
        BuildersKt.c(ViewModelKt.a(this), null, null, new MyLvViewModelImpl$listenToProfile$1(null, this), 3);
        BuildersKt.c(ViewModelKt.a(this), null, null, new MyLvViewModelImpl$collectAppEvents$1(null, this), 3);
        BuildersKt.c(ViewModelKt.a(this), null, null, new MyLvViewModelImpl$initFeatureFlags$1(null, this), 3);
        BuildersKt.c(ViewModelKt.a(this), null, null, new MyLvViewModelImpl$retrieveUserAvatar$1(null, this), 3);
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass1(null, this), 3);
        contactUsDelegate.C(ScreenType.OTHER);
        Fc();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object Ac(MyLvViewModelImpl myLvViewModelImpl, ContinuationImpl continuationImpl) {
        MyLvViewModelImpl$updateBookings$1 myLvViewModelImpl$updateBookings$1;
        Object objA;
        MonitorAction monitorAction;
        Object value;
        if (continuationImpl instanceof MyLvViewModelImpl$updateBookings$1) {
            myLvViewModelImpl$updateBookings$1 = (MyLvViewModelImpl$updateBookings$1) continuationImpl;
            int i2 = myLvViewModelImpl$updateBookings$1.f59341e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                myLvViewModelImpl$updateBookings$1.f59341e = i2 - Integer.MIN_VALUE;
            } else {
                myLvViewModelImpl$updateBookings$1 = new MyLvViewModelImpl$updateBookings$1(myLvViewModelImpl, continuationImpl);
            }
        } else {
            myLvViewModelImpl$updateBookings$1 = new MyLvViewModelImpl$updateBookings$1(myLvViewModelImpl, continuationImpl);
        }
        Object obj = myLvViewModelImpl$updateBookings$1.f59340c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = myLvViewModelImpl$updateBookings$1.f59341e;
        if (i3 == 0) {
            ResultKt.b(obj);
            MonitorAction monitorAction2 = myLvViewModelImpl.U;
            DynatraceMonitorAction dynatraceMonitorActionA = monitorAction2 != null ? monitorAction2.a(MyLvMonitoring.Action.LoadBookings.f48928a) : null;
            GetBookingsUseCase getBookingsUseCase = myLvViewModelImpl.p;
            myLvViewModelImpl$updateBookings$1.f59339b = dynatraceMonitorActionA;
            myLvViewModelImpl$updateBookings$1.f59341e = 1;
            objA = getBookingsUseCase.a(myLvViewModelImpl$updateBookings$1);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
            monitorAction = dynatraceMonitorActionA;
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            monitorAction = myLvViewModelImpl$updateBookings$1.f59339b;
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            BookingList bookingList = (BookingList) objA;
            MutableStateFlow mutableStateFlow = myLvViewModelImpl.O;
            do {
                value = mutableStateFlow.getValue();
            } while (!mutableStateFlow.i(value, MyLvCounters.a((MyLvCounters) value, 0, 0, 0, 0, 0, bookingList.f66748a.size(), 31)));
        }
        Throwable thA = Result.a(objA);
        if (thA != null) {
            myLvViewModelImpl.d.c(MyLvViewModelImplKt.f59357a, "Unable to retrieve booking experiences list", thA);
        }
        if (monitorAction != null) {
            monitorAction.b();
        }
        return Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    public static final Object Bc(MyLvViewModelImpl myLvViewModelImpl, ContinuationImpl continuationImpl) {
        MyLvViewModelImpl$updateCertificates$1 myLvViewModelImpl$updateCertificates$1;
        Object objA;
        MonitorAction monitorAction;
        Object value;
        MonitorAction monitorAction2 = myLvViewModelImpl.U;
        if (continuationImpl instanceof MyLvViewModelImpl$updateCertificates$1) {
            myLvViewModelImpl$updateCertificates$1 = (MyLvViewModelImpl$updateCertificates$1) continuationImpl;
            int i2 = myLvViewModelImpl$updateCertificates$1.f59344e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                myLvViewModelImpl$updateCertificates$1.f59344e = i2 - Integer.MIN_VALUE;
            } else {
                myLvViewModelImpl$updateCertificates$1 = new MyLvViewModelImpl$updateCertificates$1(myLvViewModelImpl, continuationImpl);
            }
        } else {
            myLvViewModelImpl$updateCertificates$1 = new MyLvViewModelImpl$updateCertificates$1(myLvViewModelImpl, continuationImpl);
        }
        Object obj = myLvViewModelImpl$updateCertificates$1.f59343c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = myLvViewModelImpl$updateCertificates$1.f59344e;
        if (i3 == 0) {
            ResultKt.b(obj);
            DynatraceMonitorAction dynatraceMonitorActionA = monitorAction2 != null ? monitorAction2.a(MyLvMonitoring.Action.LoadMyCertificates.f48931a) : null;
            GetCertificateListUseCase getCertificateListUseCase = myLvViewModelImpl.q;
            myLvViewModelImpl$updateCertificates$1.f59342b = dynatraceMonitorActionA;
            myLvViewModelImpl$updateCertificates$1.f59344e = 1;
            objA = getCertificateListUseCase.a(myLvViewModelImpl$updateCertificates$1);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
            monitorAction = dynatraceMonitorActionA;
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            monitorAction = myLvViewModelImpl$updateCertificates$1.f59342b;
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            List list = (List) objA;
            MutableStateFlow mutableStateFlow = myLvViewModelImpl.O;
            do {
                value = mutableStateFlow.getValue();
            } while (!mutableStateFlow.i(value, MyLvCounters.a((MyLvCounters) value, 0, 0, list.size(), 0, 0, 0, 59)));
        }
        Throwable thA = Result.a(objA);
        if (thA != null) {
            if (monitorAction2 != null) {
                monitorAction2.d(new MyLvMonitoring.Error.LoadMyCertificatesError(thA));
            }
            myLvViewModelImpl.d.c(MyLvViewModelImplKt.f59357a, "Unable to retrieve certificates list", thA);
        }
        if (monitorAction != null) {
            monitorAction.b();
        }
        return Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public static final Object Cc(MyLvViewModelImpl myLvViewModelImpl, ContinuationImpl continuationImpl) {
        MyLvViewModelImpl$updateExclusiveSales$1 myLvViewModelImpl$updateExclusiveSales$1;
        Object objA;
        MonitorAction monitorAction;
        Object value;
        Object value2;
        List list;
        MutableStateFlow mutableStateFlow = myLvViewModelImpl.O;
        MonitorAction monitorAction2 = myLvViewModelImpl.U;
        if (continuationImpl instanceof MyLvViewModelImpl$updateExclusiveSales$1) {
            myLvViewModelImpl$updateExclusiveSales$1 = (MyLvViewModelImpl$updateExclusiveSales$1) continuationImpl;
            int i2 = myLvViewModelImpl$updateExclusiveSales$1.f59347e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                myLvViewModelImpl$updateExclusiveSales$1.f59347e = i2 - Integer.MIN_VALUE;
            } else {
                myLvViewModelImpl$updateExclusiveSales$1 = new MyLvViewModelImpl$updateExclusiveSales$1(myLvViewModelImpl, continuationImpl);
            }
        } else {
            myLvViewModelImpl$updateExclusiveSales$1 = new MyLvViewModelImpl$updateExclusiveSales$1(myLvViewModelImpl, continuationImpl);
        }
        Object obj = myLvViewModelImpl$updateExclusiveSales$1.f59346c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = myLvViewModelImpl$updateExclusiveSales$1.f59347e;
        if (i3 == 0) {
            ResultKt.b(obj);
            DynatraceMonitorAction dynatraceMonitorActionA = monitorAction2 != null ? monitorAction2.a(MyLvMonitoring.Action.LoadMyExclusiveOffers.f48932a) : null;
            GetUserExclusiveSalesUseCase getUserExclusiveSalesUseCase = myLvViewModelImpl.r;
            myLvViewModelImpl$updateExclusiveSales$1.f59345b = dynatraceMonitorActionA;
            myLvViewModelImpl$updateExclusiveSales$1.f59347e = 1;
            objA = getUserExclusiveSalesUseCase.a(myLvViewModelImpl$updateExclusiveSales$1);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
            monitorAction = dynatraceMonitorActionA;
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            monitorAction = myLvViewModelImpl$updateExclusiveSales$1.f59345b;
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            ExclusiveSalesUserInfo exclusiveSalesUserInfo = (ExclusiveSalesUserInfo) objA;
            do {
                value2 = mutableStateFlow.getValue();
            } while (!mutableStateFlow.i(value2, MyLvCounters.a((MyLvCounters) value2, 0, 0, 0, (exclusiveSalesUserInfo == null || (list = exclusiveSalesUserInfo.f67576a) == null) ? 0 : list.size(), 0, 0, 55)));
        }
        Throwable thA = Result.a(objA);
        if (thA != null) {
            if (monitorAction2 != null) {
                monitorAction2.d(new MyLvMonitoring.Error.LoadMyExclusiveOffersError(thA));
            }
            do {
                value = mutableStateFlow.getValue();
            } while (!mutableStateFlow.i(value, MyLvCounters.a((MyLvCounters) value, 0, 0, 0, 0, 0, 0, 55)));
        }
        if (monitorAction != null) {
            monitorAction.b();
            Result.Companion companion2 = Result.INSTANCE;
        }
        return Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x009a A[PHI: r2 r10 r11
      0x009a: PHI (r2v7 com.vuitton.android.domain.monitoring.MonitorAction) = (r2v5 com.vuitton.android.domain.monitoring.MonitorAction), (r2v10 com.vuitton.android.domain.monitoring.MonitorAction) binds: [B:33:0x0097, B:18:0x004c] A[DONT_GENERATE, DONT_INLINE]
      0x009a: PHI (r10v3 boolean) = (r10v1 boolean), (r10v6 boolean) binds: [B:33:0x0097, B:18:0x004c] A[DONT_GENERATE, DONT_INLINE]
      0x009a: PHI (r11v13 java.lang.Object) = (r11v11 java.lang.Object), (r11v1 java.lang.Object) binds: [B:33:0x0097, B:18:0x004c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:38:0x00af  */
    /* JADX WARN: Code duplicated, block: B:42:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:44:0x00df  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0081, code lost:
    
        if (r11 == r1) goto L41;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object Dc(final com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl r9, boolean r10, kotlin.coroutines.jvm.internal.ContinuationImpl r11) {
        /*
            Method dump skipped, instruction units count: 231
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl.Dc(com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl, boolean, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:104:0x00d2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:106:0x00c0 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:33:0x009f  */
    /* JADX WARN: Code duplicated, block: B:39:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:42:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:54:0x00f7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:55:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:63:0x0120  */
    /* JADX WARN: Code duplicated, block: B:67:0x013d  */
    /* JADX WARN: Code duplicated, block: B:7:0x001d  */
    /* JADX WARN: Code duplicated, block: B:80:0x0178 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:81:0x017a  */
    /* JADX WARN: Code duplicated, block: B:84:0x0189  */
    public static final Object Ec(MyLvViewModelImpl myLvViewModelImpl, ContinuationImpl continuationImpl) {
        MyLvViewModelImpl$updateRepairs$1 myLvViewModelImpl$updateRepairs$1;
        MonitorAction monitorActionA;
        Object objC;
        Object obj;
        MonitorAction monitorAction;
        Object obj2;
        Throwable thA;
        List list;
        Object value;
        MyLvCounters myLvCounters;
        List list2;
        Iterator it;
        int i2;
        Throwable thA2;
        List list3;
        Object value2;
        MyLvCounters myLvCounters2;
        ArrayList arrayList;
        RepairStatusUiModel repairStatusUiModel;
        Logger logger = myLvViewModelImpl.d;
        MutableStateFlow mutableStateFlow = myLvViewModelImpl.O;
        MonitorAction monitorAction2 = myLvViewModelImpl.U;
        if (continuationImpl instanceof MyLvViewModelImpl$updateRepairs$1) {
            myLvViewModelImpl$updateRepairs$1 = (MyLvViewModelImpl$updateRepairs$1) continuationImpl;
            int i3 = myLvViewModelImpl$updateRepairs$1.f59356e;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                myLvViewModelImpl$updateRepairs$1.f59356e = i3 - Integer.MIN_VALUE;
            } else {
                myLvViewModelImpl$updateRepairs$1 = new MyLvViewModelImpl$updateRepairs$1(myLvViewModelImpl, continuationImpl);
            }
        } else {
            myLvViewModelImpl$updateRepairs$1 = new MyLvViewModelImpl$updateRepairs$1(myLvViewModelImpl, continuationImpl);
        }
        Object obj3 = myLvViewModelImpl$updateRepairs$1.f59355c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i4 = myLvViewModelImpl$updateRepairs$1.f59356e;
        if (i4 == 0) {
            ResultKt.b(obj3);
            monitorActionA = monitorAction2 != null ? monitorAction2.a(MyLvMonitoring.Action.LoadMyCareService.f48930a) : null;
            IsFeatureAvailableUseCase isFeatureAvailableUseCase = myLvViewModelImpl.u;
            Feature[] featureArr = {Feature.CARE_SERVICES_MIGRATION};
            myLvViewModelImpl$updateRepairs$1.f59354b = monitorActionA;
            myLvViewModelImpl$updateRepairs$1.f59356e = 1;
            objC = isFeatureAvailableUseCase.c(featureArr, false, myLvViewModelImpl$updateRepairs$1);
            if (objC != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i4 != 1) {
            if (i4 == 2) {
                monitorAction = myLvViewModelImpl$updateRepairs$1.f59354b;
                ResultKt.b(obj3);
                obj2 = ((Result) obj3).f71708b;
                Result.Companion companion = Result.INSTANCE;
                if (!(obj2 instanceof Result.Failure)) {
                    list = (List) obj2;
                    do {
                        value = mutableStateFlow.getValue();
                        myLvCounters = (MyLvCounters) value;
                        list2 = list;
                        if ((list2 instanceof Collection) || !list2.isEmpty()) {
                            it = list2.iterator();
                            int i5 = 0;
                            while (it.hasNext()) {
                                if (((CareServiceShort) it.next()).f66887e != CareServiceCategory.OnGoing && (i5 = i5 + 1) < 0) {
                                    CollectionsKt.s0();
                                    throw null;
                                }
                            }
                            i2 = i5;
                        } else {
                            i2 = 0;
                        }
                    } while (!mutableStateFlow.i(value, MyLvCounters.a(myLvCounters, i2, 0, 0, 0, 0, 0, 62)));
                }
                thA = Result.a(obj2);
                if (thA != null) {
                    if (monitorAction2 != null) {
                        monitorAction2.d(new MyLvMonitoring.Error.LoadMyCareServiceError(thA));
                    }
                    logger.c(MyLvViewModelImplKt.f59357a, "Unable to retrieve care services list", thA);
                }
                if (monitorAction != null) {
                    monitorAction.b();
                }
                return Unit.f71739a;
            }
            if (i4 != 3) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            monitorAction = myLvViewModelImpl$updateRepairs$1.f59354b;
            ResultKt.b(obj3);
            obj = ((Result) obj3).f71708b;
            Result.Companion companion2 = Result.INSTANCE;
            if (!(obj instanceof Result.Failure)) {
                list3 = (List) obj;
                do {
                    value2 = mutableStateFlow.getValue();
                    myLvCounters2 = (MyLvCounters) value2;
                    ArrayList arrayListB = CareServiceMapperKt.b(list3, false);
                    arrayList = new ArrayList();
                    for (Object obj4 : arrayListB) {
                        repairStatusUiModel = ((CareServiceUiModel) obj4).f63996e;
                        if (repairStatusUiModel == RepairStatusUiModel.CANCELLED && repairStatusUiModel != RepairStatusUiModel.PRELIMINARY_ASSESSMENT_DEC && repairStatusUiModel != RepairStatusUiModel.HISTORY && repairStatusUiModel != RepairStatusUiModel.DELIVERED_TO_CLIENT) {
                            arrayList.add(obj4);
                        }
                    }
                } while (!mutableStateFlow.i(value2, MyLvCounters.a(myLvCounters2, arrayList.size(), 0, 0, 0, 0, 0, 62)));
            }
            thA2 = Result.a(obj);
            if (thA2 != null) {
                if (monitorAction2 != null) {
                    monitorAction2.d(new MyLvMonitoring.Error.LoadMyCareServiceError(thA2));
                }
                logger.c(MyLvViewModelImplKt.f59357a, "Unable to retrieve care services list", thA2);
            }
            if (monitorAction != null) {
                monitorAction.b();
            }
            return Unit.f71739a;
        }
        MonitorAction monitorAction3 = myLvViewModelImpl$updateRepairs$1.f59354b;
        ResultKt.b(obj3);
        objC = obj3;
        monitorActionA = monitorAction3;
        if (((Boolean) objC).booleanValue()) {
            GetCareServiceListBffUseCase getCareServiceListBffUseCase = myLvViewModelImpl.n;
            myLvViewModelImpl$updateRepairs$1.f59354b = monitorActionA;
            myLvViewModelImpl$updateRepairs$1.f59356e = 2;
            Object objA = getCareServiceListBffUseCase.a(myLvViewModelImpl$updateRepairs$1);
            if (objA != coroutineSingletons) {
                MonitorAction monitorAction4 = monitorActionA;
                obj2 = objA;
                monitorAction = monitorAction4;
                Result.Companion companion3 = Result.INSTANCE;
                if (!(obj2 instanceof Result.Failure)) {
                    list = (List) obj2;
                    do {
                        value = mutableStateFlow.getValue();
                        myLvCounters = (MyLvCounters) value;
                        list2 = list;
                        if (list2 instanceof Collection) {
                            it = list2.iterator();
                            int i6 = 0;
                            while (it.hasNext()) {
                                if (((CareServiceShort) it.next()).f66887e != CareServiceCategory.OnGoing) {
                                }
                            }
                            i2 = i6;
                        } else {
                            it = list2.iterator();
                            int i7 = 0;
                            while (it.hasNext()) {
                                if (((CareServiceShort) it.next()).f66887e != CareServiceCategory.OnGoing) {
                                }
                            }
                            i2 = i7;
                        }
                    } while (!mutableStateFlow.i(value, MyLvCounters.a(myLvCounters, i2, 0, 0, 0, 0, 0, 62)));
                }
                thA = Result.a(obj2);
                if (thA != null) {
                    if (monitorAction2 != null) {
                        monitorAction2.d(new MyLvMonitoring.Error.LoadMyCareServiceError(thA));
                    }
                    logger.c(MyLvViewModelImplKt.f59357a, "Unable to retrieve care services list", thA);
                }
                if (monitorAction != null) {
                    monitorAction.b();
                }
                return Unit.f71739a;
            }
        } else {
            GetCareServiceListUseCase getCareServiceListUseCase = myLvViewModelImpl.o;
            myLvViewModelImpl$updateRepairs$1.f59354b = monitorActionA;
            myLvViewModelImpl$updateRepairs$1.f59356e = 3;
            Object objA2 = getCareServiceListUseCase.a(myLvViewModelImpl$updateRepairs$1);
            if (objA2 != coroutineSingletons) {
                MonitorAction monitorAction5 = monitorActionA;
                obj = objA2;
                monitorAction = monitorAction5;
                Result.Companion companion4 = Result.INSTANCE;
                if (!(obj instanceof Result.Failure)) {
                    list3 = (List) obj;
                    do {
                        value2 = mutableStateFlow.getValue();
                        myLvCounters2 = (MyLvCounters) value2;
                        ArrayList arrayListB2 = CareServiceMapperKt.b(list3, false);
                        arrayList = new ArrayList();
                        while (r7.hasNext()) {
                            repairStatusUiModel = ((CareServiceUiModel) obj4).f63996e;
                            if (repairStatusUiModel == RepairStatusUiModel.CANCELLED) {
                            }
                        }
                    } while (!mutableStateFlow.i(value2, MyLvCounters.a(myLvCounters2, arrayList.size(), 0, 0, 0, 0, 0, 62)));
                }
                thA2 = Result.a(obj);
                if (thA2 != null) {
                    if (monitorAction2 != null) {
                        monitorAction2.d(new MyLvMonitoring.Error.LoadMyCareServiceError(thA2));
                    }
                    logger.c(MyLvViewModelImplKt.f59357a, "Unable to retrieve care services list", thA2);
                }
                if (monitorAction != null) {
                    monitorAction.b();
                }
                return Unit.f71739a;
            }
        }
        return coroutineSingletons;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x001d  */
    public static final Object yc(MyLvViewModelImpl myLvViewModelImpl, boolean z, ContinuationImpl continuationImpl) {
        MyLvViewModelImpl$loadHotContent$1 myLvViewModelImpl$loadHotContent$1;
        Object objD;
        Object value;
        Object value2;
        Object value3;
        Object value4;
        List list;
        ArrayList arrayList;
        Object value5;
        MyLvCounters myLvCounters;
        boolean z2;
        int i2;
        Object value6;
        Object value7;
        MyLvCounters myLvCounters2;
        int i3;
        MutableStateFlow mutableStateFlow = myLvViewModelImpl.I;
        MutableStateFlow mutableStateFlow2 = myLvViewModelImpl.P;
        MutableStateFlow mutableStateFlow3 = myLvViewModelImpl.O;
        if (continuationImpl instanceof MyLvViewModelImpl$loadHotContent$1) {
            myLvViewModelImpl$loadHotContent$1 = (MyLvViewModelImpl$loadHotContent$1) continuationImpl;
            int i4 = myLvViewModelImpl$loadHotContent$1.d;
            if ((i4 & Integer.MIN_VALUE) != 0) {
                myLvViewModelImpl$loadHotContent$1.d = i4 - Integer.MIN_VALUE;
            } else {
                myLvViewModelImpl$loadHotContent$1 = new MyLvViewModelImpl$loadHotContent$1(myLvViewModelImpl, continuationImpl);
            }
        } else {
            myLvViewModelImpl$loadHotContent$1 = new MyLvViewModelImpl$loadHotContent$1(myLvViewModelImpl, continuationImpl);
        }
        Object obj = myLvViewModelImpl$loadHotContent$1.f59304b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i5 = myLvViewModelImpl$loadHotContent$1.d;
        if (i5 == 0) {
            ResultKt.b(obj);
            GetHotContentUseCase getHotContentUseCase = myLvViewModelImpl.m;
            myLvViewModelImpl$loadHotContent$1.d = 1;
            objD = getHotContentUseCase.d(z, myLvViewModelImpl$loadHotContent$1);
            if (objD == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i5 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objD = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(objD instanceof Result.Failure)) {
            HotContent hotContent = (HotContent) objD;
            do {
                value4 = mutableStateFlow2.getValue();
                list = hotContent.f67605a;
                arrayList = new ArrayList();
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    HotContentItemUiModel hotContentItemUiModelB = HotContentItemMapperKt.b((HotContentItem) it.next(), myLvViewModelImpl.A);
                    if (hotContentItemUiModelB != null) {
                        arrayList.add(hotContentItemUiModelB);
                    }
                }
            } while (!mutableStateFlow2.i(value4, arrayList));
            do {
                value5 = mutableStateFlow3.getValue();
                myLvCounters = (MyLvCounters) value5;
                z2 = list instanceof Collection;
                if (z2 && list.isEmpty()) {
                    i2 = 0;
                } else {
                    Iterator it2 = list.iterator();
                    int i6 = 0;
                    while (it2.hasNext()) {
                        if ((((HotContentItem) it2.next()) instanceof HotContentItem.Order) && (i6 = i6 + 1) < 0) {
                            CollectionsKt.s0();
                            throw null;
                        }
                    }
                    i2 = i6;
                }
            } while (!mutableStateFlow3.i(value5, MyLvCounters.a(myLvCounters, 0, i2, 0, 0, 0, 0, 61)));
            if (myLvViewModelImpl.u.b(new Feature[]{Feature.CARE_SERVICES_MIGRATION})) {
                do {
                    value7 = mutableStateFlow3.getValue();
                    myLvCounters2 = (MyLvCounters) value7;
                    if (z2 && list.isEmpty()) {
                        i3 = 0;
                    } else {
                        Iterator it3 = list.iterator();
                        int i7 = 0;
                        while (it3.hasNext()) {
                            if ((((HotContentItem) it3.next()) instanceof HotContentItem.CareService) && (i7 = i7 + 1) < 0) {
                                CollectionsKt.s0();
                                throw null;
                            }
                        }
                        i3 = i7;
                    }
                } while (!mutableStateFlow3.i(value7, MyLvCounters.a(myLvCounters2, i3, 0, 0, 0, 0, 0, 62)));
            }
            do {
                value6 = mutableStateFlow.getValue();
                ((Boolean) value6).getClass();
            } while (!mutableStateFlow.i(value6, Boolean.valueOf(!hotContent.f67606b)));
        }
        Throwable thA = Result.a(objD);
        if (thA != null) {
            Logger logger = myLvViewModelImpl.d;
            String str = MyLvViewModelImplKt.f59357a;
            String message = thA.getMessage();
            if (message == null) {
                message = "Unable to retrieve hot content";
            }
            logger.c(str, message, thA);
            do {
                value = mutableStateFlow2.getValue();
            } while (!mutableStateFlow2.i(value, null));
            do {
                value2 = mutableStateFlow3.getValue();
            } while (!mutableStateFlow3.i(value2, MyLvCounters.a((MyLvCounters) value2, 0, 0, 0, 0, 0, 0, 60)));
            do {
                value3 = mutableStateFlow.getValue();
                ((Boolean) value3).getClass();
            } while (!mutableStateFlow.i(value3, Boolean.FALSE));
        }
        return Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    public static final Object zc(MyLvViewModelImpl myLvViewModelImpl, ContinuationImpl continuationImpl) {
        MyLvViewModelImpl$updateAppointments$1 myLvViewModelImpl$updateAppointments$1;
        Object objA;
        MonitorAction monitorAction;
        Object value;
        MonitorAction monitorAction2 = myLvViewModelImpl.U;
        if (continuationImpl instanceof MyLvViewModelImpl$updateAppointments$1) {
            myLvViewModelImpl$updateAppointments$1 = (MyLvViewModelImpl$updateAppointments$1) continuationImpl;
            int i2 = myLvViewModelImpl$updateAppointments$1.f59338e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                myLvViewModelImpl$updateAppointments$1.f59338e = i2 - Integer.MIN_VALUE;
            } else {
                myLvViewModelImpl$updateAppointments$1 = new MyLvViewModelImpl$updateAppointments$1(myLvViewModelImpl, continuationImpl);
            }
        } else {
            myLvViewModelImpl$updateAppointments$1 = new MyLvViewModelImpl$updateAppointments$1(myLvViewModelImpl, continuationImpl);
        }
        Object obj = myLvViewModelImpl$updateAppointments$1.f59337c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = myLvViewModelImpl$updateAppointments$1.f59338e;
        if (i3 == 0) {
            ResultKt.b(obj);
            DynatraceMonitorAction dynatraceMonitorActionA = monitorAction2 != null ? monitorAction2.a(MyLvMonitoring.Action.LoadOsa.f48935a) : null;
            GetOnlineStoreAppointmentListUseCase getOnlineStoreAppointmentListUseCase = myLvViewModelImpl.s;
            myLvViewModelImpl$updateAppointments$1.f59336b = dynatraceMonitorActionA;
            myLvViewModelImpl$updateAppointments$1.f59338e = 1;
            objA = getOnlineStoreAppointmentListUseCase.a(myLvViewModelImpl$updateAppointments$1);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
            monitorAction = dynatraceMonitorActionA;
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            monitorAction = myLvViewModelImpl$updateAppointments$1.f59336b;
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            OnlineStoreAppointments onlineStoreAppointments = (OnlineStoreAppointments) objA;
            MutableStateFlow mutableStateFlow = myLvViewModelImpl.O;
            do {
                value = mutableStateFlow.getValue();
            } while (!mutableStateFlow.i(value, MyLvCounters.a((MyLvCounters) value, 0, 0, 0, 0, onlineStoreAppointments.f67770a.size(), 0, 47)));
        }
        Throwable thA = Result.a(objA);
        if (thA != null) {
            if (monitorAction2 != null) {
                monitorAction2.d(new MyLvMonitoring.Error.LoadOsaError(thA));
            }
            myLvViewModelImpl.d.c(MyLvViewModelImplKt.f59357a, "Unable to retrieve online store appointments list", thA);
        }
        if (monitorAction != null) {
            monitorAction.b();
        }
        return Unit.f71739a;
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void B(ChatProductModel chatProductModel, int i2, int i3) {
        chatProductModel.getClass();
        this.f59264b.B(chatProductModel, i2, i3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void C(ScreenType screenType) {
        screenType.getClass();
        this.f59264b.C(screenType);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object E5(Continuation continuation) {
        return this.f59264b.E5(continuation);
    }

    public final void Fc() {
        MutableStateFlow mutableStateFlow;
        Object value;
        Object objA;
        do {
            mutableStateFlow = this.J;
            value = mutableStateFlow.getValue();
            ((Boolean) value).getClass();
            objA = this.z.a(AccessibilityPreferenceType.SIMPLIFY_NAVIGATION);
            Boolean bool = Boolean.FALSE;
            Result.Companion companion = Result.INSTANCE;
            if (objA instanceof Result.Failure) {
                objA = bool;
            }
        } while (!mutableStateFlow.i(value, (Boolean) objA));
    }

    @Override // com.vuitton.android.presentation.screen.mylv.MyLvViewModel
    public final void G0() {
        MutableStateFlow mutableStateFlow = this.K;
        if (((MyLvFeatureFlags) mutableStateFlow.getValue()).g && !((Boolean) this.G.getValue()).booleanValue()) {
            BuildersKt.c(ViewModelKt.a(this), null, null, new MyLvViewModelImpl$checkUserEligibilityForPass$1(null, this), 3);
        }
        this.f59268h.getClass();
        NotificationsManager notificationsManager = this.f59267f;
        notificationsManager.n();
        if (((MyLvFeatureFlags) mutableStateFlow.getValue()).f59423j && notificationsManager.getL()) {
            BuildersKt.c(ViewModelKt.a(this), null, null, new MyLvViewModelImpl$refreshInboxNotification$1(null, this), 3);
        }
        Fc();
    }

    public final void Gc(boolean z) {
        MutableStateFlow mutableStateFlow;
        Object value;
        do {
            mutableStateFlow = this.E;
            value = mutableStateFlow.getValue();
            ((Boolean) value).getClass();
        } while (!mutableStateFlow.i(value, Boolean.TRUE));
        BuildersKt.c(ViewModelKt.a(this), null, null, new MyLvViewModelImpl$retrieveCounters$2(this, z, null), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void I(ChatProductModel chatProductModel, int i2) {
        chatProductModel.getClass();
        this.f59264b.I(chatProductModel, i2);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object M1(ContactUsOrigin contactUsOrigin, Continuation continuation) {
        return this.f59264b.M1(contactUsOrigin, continuation);
    }

    @Override // com.vuitton.android.presentation.screen.mylv.MyLvViewModel
    public final void Pa() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new MyLvViewModelImpl$onOrdersUpdated$1(null, this), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void Q0() {
        this.f59264b.Q0();
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final Object S0(Continuation continuation) {
        return this.f59264b.S0(continuation);
    }

    @Override // com.vuitton.android.presentation.screen.mylv.MyLvViewModel
    public final void W(MyLvTrackingUiModel myLvTrackingUiModel) {
        myLvTrackingUiModel.getClass();
        this.g.a(MyLvTrackingUiModelKt.a(myLvTrackingUiModel));
    }

    @Override // com.vuitton.android.presentation.screen.mylv.MyLvViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getS() {
        return this.S;
    }

    @Override // com.vuitton.android.presentation.screen.mylv.MyLvViewModel
    public final Flow b() {
        return FlowKt.y(this.C);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final void f8(ContactUsMode contactUsMode) {
        contactUsMode.getClass();
        this.f59264b.f8(contactUsMode);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Flow i() {
        return this.f59264b.i();
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final void m4(StringResourceUiModel stringResourceUiModel) {
        this.f59264b.m4(stringResourceUiModel);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void r(ChatProductModel chatProductModel) {
        chatProductModel.getClass();
        this.f59264b.r(chatProductModel);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void s() {
        this.f59264b.s();
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void v(String str, String str2) {
        this.f59264b.v(str, str2);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object vc(Continuation continuation) {
        return this.f59264b.vc(continuation);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void x(ChatProductModel chatProductModel, int i2) {
        chatProductModel.getClass();
        this.f59264b.x(chatProductModel, i2);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void z() {
        this.f59264b.z();
    }
}
