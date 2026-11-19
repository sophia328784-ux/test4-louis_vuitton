package com.vuitton.android.presentation.screen.account.inbox;

import android.app.Application;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.domain.usecase.privacy.GetConsentForCustomizationUseCase;
import com.vuitton.android.domain.usecase.sharedPreferences.GetShowInboxLongPressTooltipUseCase;
import com.vuitton.android.domain.usecase.sharedPreferences.UpdateShowInboxLongPressTooltipUseCase;
import com.vuitton.android.presentation.push.NotificationsManager;
import com.vuitton.android.presentation.screen.account.inbox.models.InboxNotificationUiModel;
import com.vuitton.android.presentation.screen.account.inbox.models.InboxTrackingUIModel;
import com.vuitton.android.presentation.screen.account.inbox.models.InboxViewState;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.md;
import defpackage.v40;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.flow.internal.CombineKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0015BI\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0016"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;", "Landroidx/lifecycle/AndroidViewModel;", "Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModel;", "Landroid/app/Application;", "application", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/presentation/push/NotificationsManager;", "notificationsManager", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomizationUseCase;", "getConsentForCustomizationUseCase", "Lcom/vuitton/android/domain/usecase/sharedPreferences/GetShowInboxLongPressTooltipUseCase;", "getShowInboxLongPressTooltipUseCase", "Lcom/vuitton/android/domain/usecase/sharedPreferences/UpdateShowInboxLongPressTooltipUseCase;", "updateShowInboxLongPressTooltipUseCase", "<init>", "(Landroid/app/Application;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/push/NotificationsManager;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomizationUseCase;Lcom/vuitton/android/domain/usecase/sharedPreferences/GetShowInboxLongPressTooltipUseCase;Lcom/vuitton/android/domain/usecase/sharedPreferences/UpdateShowInboxLongPressTooltipUseCase;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class InboxViewModelImpl extends AndroidViewModel implements InboxViewModel {
    public static final /* synthetic */ int t = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AnalyticsTracker f52348b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Logger f52349c;
    public final NotificationsManager d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final GetConsentForCustomizationUseCase f52350e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final GetShowInboxLongPressTooltipUseCase f52351f;
    public final UpdateShowInboxLongPressTooltipUseCase g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final InAppDispatch f52352h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f52353i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final MutableStateFlow f52354j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final MutableStateFlow f52355k;
    public final MutableStateFlow l;
    public final MutableStateFlow m;
    public final MutableStateFlow n;
    public final MutableStateFlow o;
    public final MutableStateFlow p;
    public final MutableStateFlow q;
    public final Flow r;
    public final StateFlow s;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.account.inbox.InboxViewModelImpl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.account.inbox.InboxViewModelImpl$1", f = "InboxViewModelImpl.kt", l = {}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ InboxViewModelImpl f52356b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Continuation continuation, InboxViewModelImpl inboxViewModelImpl) {
            super(2, continuation);
            this.f52356b = inboxViewModelImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(continuation, this.f52356b);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            ResultKt.b(obj);
            this.f52356b.gc(InboxTrackingUIModel.Screen.f52422a);
            return Unit.f71739a;
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl$Companion;", "", "", "TAG", "Ljava/lang/String;", "", "LONG_PRESS_TOOLTIP_APPARITION_DELAY", "J", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public InboxViewModelImpl(Application application, AnalyticsTracker analyticsTracker, Logger logger, NotificationsManager notificationsManager, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, GetConsentForCustomizationUseCase getConsentForCustomizationUseCase, GetShowInboxLongPressTooltipUseCase getShowInboxLongPressTooltipUseCase, UpdateShowInboxLongPressTooltipUseCase updateShowInboxLongPressTooltipUseCase) {
        super(application);
        application.getClass();
        analyticsTracker.getClass();
        logger.getClass();
        notificationsManager.getClass();
        requireUserInAppDispatchUseCase.getClass();
        getConsentForCustomizationUseCase.getClass();
        getShowInboxLongPressTooltipUseCase.getClass();
        updateShowInboxLongPressTooltipUseCase.getClass();
        this.f52348b = analyticsTracker;
        this.f52349c = logger;
        this.d = notificationsManager;
        this.f52350e = getConsentForCustomizationUseCase;
        this.f52351f = getShowInboxLongPressTooltipUseCase;
        this.g = updateShowInboxLongPressTooltipUseCase;
        InAppDispatch inAppDispatchB = requireUserInAppDispatchUseCase.f49912a.b();
        this.f52352h = inAppDispatchB;
        this.f52353i = 300L;
        Boolean bool = Boolean.FALSE;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(bool);
        this.f52354j = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(bool);
        this.f52355k = mutableStateFlowA2;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(bool);
        this.l = mutableStateFlowA3;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(bool);
        this.m = mutableStateFlowA4;
        MutableStateFlow mutableStateFlowA5 = StateFlowKt.a(EmptyList.f71768b);
        this.n = mutableStateFlowA5;
        MutableStateFlow mutableStateFlowA6 = StateFlowKt.a(null);
        this.o = mutableStateFlowA6;
        MutableStateFlow mutableStateFlowA7 = StateFlowKt.a(null);
        this.p = mutableStateFlowA7;
        MutableStateFlow mutableStateFlowA8 = StateFlowKt.a(bool);
        this.q = mutableStateFlowA8;
        this.r = FlowKt.y(ChannelKt.a(0, 7, null));
        final Flow[] flowArr = {mutableStateFlowA, mutableStateFlowA5, mutableStateFlowA7, mutableStateFlowA3, mutableStateFlowA4, mutableStateFlowA6, mutableStateFlowA2, mutableStateFlowA8};
        Flow<InboxViewState> flow = new Flow<InboxViewState>() { // from class: com.vuitton.android.presentation.screen.account.inbox.InboxViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.account.inbox.InboxViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.account.inbox.InboxViewModelImpl$special$$inlined$combine$1$3", f = "InboxViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super InboxViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f52378b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f52379c;
                public /* synthetic */ Object[] d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ InboxViewModelImpl f52380e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass3(Continuation continuation, InboxViewModelImpl inboxViewModelImpl) {
                    super(3, continuation);
                    this.f52380e = inboxViewModelImpl;
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3, this.f52380e);
                    anonymousClass3.f52379c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f52379c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f52378b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        InAppDispatch inAppDispatch = this.f52380e.f52352h;
                        Object obj2 = objArr[0];
                        obj2.getClass();
                        boolean zBooleanValue = ((Boolean) obj2).booleanValue();
                        Object obj3 = objArr[1];
                        obj3.getClass();
                        List list = (List) obj3;
                        InboxNotificationUiModel inboxNotificationUiModel = (InboxNotificationUiModel) objArr[2];
                        Object obj4 = objArr[3];
                        obj4.getClass();
                        boolean zBooleanValue2 = ((Boolean) obj4).booleanValue();
                        Object obj5 = objArr[4];
                        obj5.getClass();
                        boolean zBooleanValue3 = ((Boolean) obj5).booleanValue();
                        InboxNotificationUiModel inboxNotificationUiModel2 = (InboxNotificationUiModel) objArr[5];
                        Object obj6 = objArr[6];
                        obj6.getClass();
                        boolean zBooleanValue4 = ((Boolean) obj6).booleanValue();
                        Object obj7 = objArr[7];
                        obj7.getClass();
                        InboxViewState inboxViewState = new InboxViewState(inAppDispatch, zBooleanValue, zBooleanValue4, list, inboxNotificationUiModel, zBooleanValue2, zBooleanValue3, inboxNotificationUiModel2, ((Boolean) obj7).booleanValue());
                        this.f52379c = null;
                        this.d = null;
                        this.f52378b = 1;
                        if (flowCollector.emit(inboxViewState, this) == coroutineSingletons) {
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
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.account.inbox.InboxViewModelImpl$special$$inlined$combine$1.2
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
        this.s = FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new InboxViewState(inAppDispatchB, false, false, null, null, false, false, null, false, 510, null));
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass1(null, this), 3);
    }

    @Override // com.vuitton.android.presentation.screen.account.inbox.InboxViewModel
    public final void G5() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new InboxViewModelImpl$closeNotificationPopup$1(null, this), 3);
    }

    @Override // com.vuitton.android.presentation.screen.account.inbox.InboxViewModel
    public final void I9(String str) {
        str.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new InboxViewModelImpl$deleteNotification$1(this, str, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.account.inbox.InboxViewModel
    public final void M() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new InboxViewModelImpl$checkNotificationAndOptInPermission$1(null, this), 3);
        if (((Boolean) this.l.getValue()).booleanValue() && ((Boolean) this.m.getValue()).booleanValue()) {
            BuildersKt.c(ViewModelKt.a(this), null, null, new InboxViewModelImpl$checkNotificationAndOptInPermission$2(null, this), 3);
        }
    }

    @Override // com.vuitton.android.presentation.screen.account.inbox.InboxViewModel
    public final void R6(InboxNotificationUiModel inboxNotificationUiModel) {
        inboxNotificationUiModel.getClass();
        MutableStateFlow mutableStateFlow = this.o;
        InboxNotificationUiModel inboxNotificationUiModel2 = (InboxNotificationUiModel) mutableStateFlow.getValue();
        if (Intrinsics.c(inboxNotificationUiModel2 != null ? inboxNotificationUiModel2.f52412a : null, inboxNotificationUiModel.f52412a)) {
            mutableStateFlow.setValue(null);
        }
    }

    @Override // com.vuitton.android.presentation.screen.account.inbox.InboxViewModel
    public final void Ua(String str) {
        str.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new InboxViewModelImpl$setNotificationAsRead$1(this, str, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.account.inbox.InboxViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getS() {
        return this.s;
    }

    @Override // com.vuitton.android.presentation.screen.account.inbox.InboxViewModel
    public final void a2() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new InboxViewModelImpl$hideLongPressTooltip$1(null, this), 3);
    }

    @Override // com.vuitton.android.presentation.screen.account.inbox.InboxViewModel
    public final void gc(InboxTrackingUIModel inboxTrackingUIModel) {
        Hit defaultEventHit;
        if (inboxTrackingUIModel instanceof InboxTrackingUIModel.Screen) {
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/MyLV/Dashboard/Notifications-Inbox", null, "mylv", EmptyList.f71768b, 1, null);
        } else if (inboxTrackingUIModel instanceof InboxTrackingUIModel.NotificationClicked) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Dashboard/Notifications-Inbox", "read_message", "mylv", "navigation", null, EmptyList.f71768b, 33, null);
        } else if (inboxTrackingUIModel instanceof InboxTrackingUIModel.NotificationSwiped) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Dashboard/Notifications-Inbox", "swipe_Delete_intention", "mylv", "navigation", null, EmptyList.f71768b, 33, null);
        } else if (inboxTrackingUIModel instanceof InboxTrackingUIModel.NotificationDeleted) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Dashboard/Notifications-Inbox", "delete_confirm", "mylv", "navigation", null, EmptyList.f71768b, 33, null);
        } else if (inboxTrackingUIModel instanceof InboxTrackingUIModel.TryAgainClicked) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Dashboard/Notifications-Inbox", "try_again", "mylv", "navigation", null, EmptyList.f71768b, 33, null);
        } else if (inboxTrackingUIModel instanceof InboxTrackingUIModel.NotificationLongClicked) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Dashboard/Notifications-Inbox", "long_press", "mylv", "navigation", null, EmptyList.f71768b, 33, null);
        } else if (inboxTrackingUIModel instanceof InboxTrackingUIModel.NotificationDialogClosed) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Dashboard/Notifications-Inbox", "preview_exit", "mylv", "navigation", null, EmptyList.f71768b, 33, null);
        } else if (inboxTrackingUIModel instanceof InboxTrackingUIModel.TooltipOpened) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Dashboard/Notifications-Inbox", "open_tooltip", "mylv", "navigation", null, EmptyList.f71768b, 33, null);
        } else {
            if (!(inboxTrackingUIModel instanceof InboxTrackingUIModel.TooltipClosed)) {
                v40.g();
                return;
            }
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Dashboard/Notifications-Inbox", "tooltip_disappear", "mylv", "navigation", null, EmptyList.f71768b, 33, null);
        }
        this.f52348b.a(defaultEventHit);
    }

    @Override // com.vuitton.android.presentation.screen.account.inbox.InboxViewModel
    public final void h3() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new InboxViewModelImpl$showLongPressTooltip$1(null, this), 3);
    }

    @Override // com.vuitton.android.presentation.screen.account.inbox.InboxViewModel
    public final void l3(InboxNotificationUiModel inboxNotificationUiModel) {
        inboxNotificationUiModel.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new InboxViewModelImpl$openNotificationPopup$1(this, inboxNotificationUiModel, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.account.inbox.InboxViewModel
    public final void q7(InboxNotificationUiModel inboxNotificationUiModel) {
        inboxNotificationUiModel.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new InboxViewModelImpl$onItemExpanded$1(this, inboxNotificationUiModel, null), 3);
    }
}
