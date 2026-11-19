package com.vuitton.android.presentation.screen.options.notifications;

import android.app.Application;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.vuitton.android.R;
import com.vuitton.android.domain.usecase.account.notifications.GetNotificationsPreferencesUseCase;
import com.vuitton.android.domain.usecase.account.notifications.SaveNotificationsPreferencesUseCase;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.pdp.backinstock.UnsubscribeBackInStockUseCase;
import com.vuitton.android.domain.usecase.privacy.GetConsentForCustomisationTrackerUseCase;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.options.notifications.models.NotificationPreferencesTrackingUiModel;
import com.vuitton.android.presentation.screen.options.notifications.models.NotificationPreferencesTrackingUiModelKt;
import com.vuitton.android.presentation.screen.options.notifications.models.NotificationsPreference;
import com.vuitton.android.presentation.screen.options.notifications.models.NotificationsPreferencesBottomSheet;
import com.vuitton.android.presentation.screen.options.notifications.models.NotificationsPreferencesTrackingUiModel;
import com.vuitton.android.presentation.screen.options.notifications.models.NotificationsPreferencesViewState;
import com.vuitton.android.presentation.utils.NotificationUtils;
import com.vuitton.foundation.model.domain.model.account.notifications.NotificationPreferenceType;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import defpackage.md;
import defpackage.v40;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
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

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002BQ\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;", "Landroidx/lifecycle/AndroidViewModel;", "Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;", "Landroid/app/Application;", "application", "Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomisationTrackerUseCase;", "getConsentForCustomization", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesTracker;", "notificationsPreferencesTracker", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/domain/usecase/account/notifications/GetNotificationsPreferencesUseCase;", "getNotificationsPreferencesUseCase", "Lcom/vuitton/android/domain/usecase/pdp/backinstock/UnsubscribeBackInStockUseCase;", "unsubscribeBackInStockUseCase", "Lcom/vuitton/android/domain/usecase/account/notifications/SaveNotificationsPreferencesUseCase;", "saveNotificationsPreferencesUseCase", "Lcom/vuitton/android/presentation/notification/NotificationBuilder;", "notificationBuilder", "<init>", "(Landroid/app/Application;Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomisationTrackerUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesTracker;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/account/notifications/GetNotificationsPreferencesUseCase;Lcom/vuitton/android/domain/usecase/pdp/backinstock/UnsubscribeBackInStockUseCase;Lcom/vuitton/android/domain/usecase/account/notifications/SaveNotificationsPreferencesUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class NotificationsPreferencesViewModelImpl extends AndroidViewModel implements NotificationsPreferencesViewModel {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final GetConsentForCustomisationTrackerUseCase f59872b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final IsFeatureAvailableUseCase f59873c;
    public final NotificationsPreferencesTracker d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AnalyticsTracker f59874e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final GetNotificationsPreferencesUseCase f59875f;
    public final UnsubscribeBackInStockUseCase g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final SaveNotificationsPreferencesUseCase f59876h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final NotificationBuilder f59877i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final MutableStateFlow f59878j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final MutableStateFlow f59879k;
    public final MutableStateFlow l;
    public final MutableStateFlow m;
    public final MutableStateFlow n;
    public final MutableStateFlow o;
    public final StateFlow p;
    public final BufferedChannel q;
    public final BufferedChannel r;
    public final Flow s;
    public final StateFlow t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public NotificationsPreferencesViewModelImpl(Application application, GetConsentForCustomisationTrackerUseCase getConsentForCustomisationTrackerUseCase, IsFeatureAvailableUseCase isFeatureAvailableUseCase, NotificationsPreferencesTracker notificationsPreferencesTracker, AnalyticsTracker analyticsTracker, GetNotificationsPreferencesUseCase getNotificationsPreferencesUseCase, UnsubscribeBackInStockUseCase unsubscribeBackInStockUseCase, SaveNotificationsPreferencesUseCase saveNotificationsPreferencesUseCase, NotificationBuilder notificationBuilder) {
        super(application);
        application.getClass();
        getConsentForCustomisationTrackerUseCase.getClass();
        isFeatureAvailableUseCase.getClass();
        notificationsPreferencesTracker.getClass();
        analyticsTracker.getClass();
        getNotificationsPreferencesUseCase.getClass();
        unsubscribeBackInStockUseCase.getClass();
        saveNotificationsPreferencesUseCase.getClass();
        notificationBuilder.getClass();
        this.f59872b = getConsentForCustomisationTrackerUseCase;
        this.f59873c = isFeatureAvailableUseCase;
        this.d = notificationsPreferencesTracker;
        this.f59874e = analyticsTracker;
        this.f59875f = getNotificationsPreferencesUseCase;
        this.g = unsubscribeBackInStockUseCase;
        this.f59876h = saveNotificationsPreferencesUseCase;
        this.f59877i = notificationBuilder;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(MapsKt.c());
        this.f59878j = mutableStateFlowA;
        Boolean bool = Boolean.TRUE;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(bool);
        this.f59879k = mutableStateFlowA2;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(bool);
        this.l = mutableStateFlowA3;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(bool);
        this.m = mutableStateFlowA4;
        MutableStateFlow mutableStateFlowA5 = StateFlowKt.a(Boolean.FALSE);
        this.n = mutableStateFlowA5;
        MutableStateFlow mutableStateFlowA6 = StateFlowKt.a(NotificationsPreferencesBottomSheet.None.f59948e);
        this.o = mutableStateFlowA6;
        this.p = FlowKt.b(mutableStateFlowA6);
        this.q = ChannelKt.a(0, 7, null);
        BufferedChannel bufferedChannelA = ChannelKt.a(0, 7, null);
        this.r = bufferedChannelA;
        this.s = FlowKt.y(bufferedChannelA);
        final Flow[] flowArr = {mutableStateFlowA, mutableStateFlowA2, mutableStateFlowA3, mutableStateFlowA4, mutableStateFlowA5};
        Flow<NotificationsPreferencesViewState> flow = new Flow<NotificationsPreferencesViewState>() { // from class: com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesViewModelImpl$special$$inlined$combine$1$3", f = "NotificationsPreferencesViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super NotificationsPreferencesViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f59897b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f59898c;
                public /* synthetic */ Object[] d;

                public AnonymousClass3(Continuation continuation) {
                    super(3, continuation);
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3);
                    anonymousClass3.f59898c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f59898c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f59897b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        Object obj2 = objArr[0];
                        obj2.getClass();
                        Map map = (Map) obj2;
                        Object obj3 = objArr[1];
                        obj3.getClass();
                        boolean zBooleanValue = ((Boolean) obj3).booleanValue();
                        Object obj4 = objArr[2];
                        obj4.getClass();
                        boolean zBooleanValue2 = ((Boolean) obj4).booleanValue();
                        Object obj5 = objArr[3];
                        obj5.getClass();
                        boolean zBooleanValue3 = ((Boolean) obj5).booleanValue();
                        Object obj6 = objArr[4];
                        obj6.getClass();
                        NotificationsPreferencesViewState notificationsPreferencesViewState = new NotificationsPreferencesViewState(map, zBooleanValue, zBooleanValue2, zBooleanValue3, ((Boolean) obj6).booleanValue());
                        this.f59898c = null;
                        this.d = null;
                        this.f59897b = 1;
                        if (flowCollector.emit(notificationsPreferencesViewState, this) == coroutineSingletons) {
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
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesViewModelImpl$special$$inlined$combine$1.2
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        return new Object[flowArr2.length];
                    }
                }, new AnonymousClass3(null), flowCollector, flowArr2);
                return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : Unit.f71739a;
            }
        };
        CloseableCoroutineScope closeableCoroutineScopeA = ViewModelKt.a(this);
        SharingStarted.f74985a.getClass();
        this.t = FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new NotificationsPreferencesViewState(null, false, false, false, false, 31, null));
        M();
        K3(NotificationsPreferencesTrackingUiModel.PreferencesScreen.f59956a);
    }

    public static final void yc(NotificationsPreferencesViewModelImpl notificationsPreferencesViewModelImpl) {
        NotificationsPreferencesTracker notificationsPreferencesTracker = notificationsPreferencesViewModelImpl.d;
        Map map = (Map) notificationsPreferencesViewModelImpl.f59878j.getValue();
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.g(map.size()));
        for (Map.Entry entry : map.entrySet()) {
            linkedHashMap.put(entry.getKey(), Boolean.valueOf(((NotificationsPreference) entry.getValue()).f59943c));
        }
        SaveNotificationsPreferencesUseCase saveNotificationsPreferencesUseCase = notificationsPreferencesViewModelImpl.f59876h;
        saveNotificationsPreferencesUseCase.getClass();
        saveNotificationsPreferencesUseCase.f49105a.a(linkedHashMap);
        notificationsPreferencesTracker.getClass();
        NotificationsPreferencesTracker.a(linkedHashMap);
        Boolean bool = (Boolean) linkedHashMap.get(NotificationPreferenceType.BRAND_COMMUNICATION);
        boolean zBooleanValue = bool != null ? bool.booleanValue() : false;
        Boolean bool2 = (Boolean) linkedHashMap.get(NotificationPreferenceType.PRODUCT_ORIENTED_COMMUNICATION);
        boolean zBooleanValue2 = bool2 != null ? bool2.booleanValue() : false;
        Boolean bool3 = (Boolean) linkedHashMap.get(NotificationPreferenceType.NOTIFY_ME);
        notificationsPreferencesTracker.f59870a.a(NotificationPreferencesTrackingUiModelKt.a(new NotificationPreferencesTrackingUiModel.NotificationsPreferencesSaveEvent(false, zBooleanValue, zBooleanValue2, bool3 != null ? bool3.booleanValue() : false)));
        BuildersKt.c(ViewModelKt.a(notificationsPreferencesViewModelImpl), null, null, new NotificationsPreferencesViewModelImpl$saveCurrentPreferences$3(notificationsPreferencesViewModelImpl, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesViewModel
    public final void K3(NotificationsPreferencesTrackingUiModel notificationsPreferencesTrackingUiModel) {
        Hit defaultEventHit;
        if (notificationsPreferencesTrackingUiModel.equals(NotificationsPreferencesTrackingUiModel.SystemNotificationPopinScreen.f59957a)) {
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/Consent/NotificationsDisabled", "notifications_disabled_popin", "notifications_permission", EmptyList.f71768b, 1, null);
        } else if (notificationsPreferencesTrackingUiModel.equals(NotificationsPreferencesTrackingUiModel.PersonalizationPopinScreen.f59955a)) {
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/Consent/Personalization", "personalization_popin", "personalization_optin", EmptyList.f71768b, 1, null);
        } else if (notificationsPreferencesTrackingUiModel.equals(NotificationsPreferencesTrackingUiModel.PreferencesScreen.f59956a)) {
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/Consent/Notifications", "notifications_settings", "mylv", EmptyList.f71768b, 1, null);
        } else if (notificationsPreferencesTrackingUiModel.equals(NotificationsPreferencesTrackingUiModel.OnEnableNotificationsClick.f59953a)) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/Consent/NotificationsDisabled", "activate", "notifications_permission", "notifications", "notifications_permission", null, 65, null);
        } else if (notificationsPreferencesTrackingUiModel.equals(NotificationsPreferencesTrackingUiModel.OnCloseNotificationsDisabledPopin.f59951a)) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/Consent/NotificationsDisabled", "close_popin", "notifications_permission", "click", "notifications_permission", null, 65, null);
        } else if (notificationsPreferencesTrackingUiModel.equals(NotificationsPreferencesTrackingUiModel.OnEnableOptionsClick.f59954a)) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/Consent/Personalization", "enable_options", "personalization_optin", "notifications", "personalization_optin", null, 65, null);
        } else {
            if (!notificationsPreferencesTrackingUiModel.equals(NotificationsPreferencesTrackingUiModel.OnClosePersonalizationPopin.f59952a)) {
                v40.g();
                return;
            }
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/Consent/Personalization", "close_popin", "personalization_optin", "click", "personalization_optin", null, 65, null);
        }
        this.f59874e.a(defaultEventHit);
    }

    @Override // com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesViewModel
    public final void M() {
        boolean zA = this.f59872b.a();
        Map mapC = this.f59875f.f49103a.c();
        NotificationPreferenceType notificationPreferenceType = NotificationPreferenceType.BRAND_COMMUNICATION;
        Integer numValueOf = Integer.valueOf(R.string.notif_brand_communication_description);
        Boolean bool = (Boolean) mapC.get(notificationPreferenceType);
        Pair pair = new Pair(notificationPreferenceType, new NotificationsPreference(R.string.notif_brand_communication_title, numValueOf, bool != null ? bool.booleanValue() : zA, true));
        NotificationPreferenceType notificationPreferenceType2 = NotificationPreferenceType.PRODUCT_ORIENTED_COMMUNICATION;
        Integer numValueOf2 = Integer.valueOf(R.string.notif_product_oriented_com_description);
        Boolean bool2 = (Boolean) mapC.get(notificationPreferenceType2);
        Pair pair2 = new Pair(notificationPreferenceType2, new NotificationsPreference(R.string.notif_product_oriented_com_title, numValueOf2, bool2 != null ? bool2.booleanValue() : zA, true));
        NotificationPreferenceType notificationPreferenceType3 = NotificationPreferenceType.NOTIFY_ME;
        Integer numValueOf3 = Integer.valueOf(R.string.notif_notify_me_description);
        Boolean bool3 = (Boolean) mapC.get(notificationPreferenceType3);
        Map mapI = MapsKt.i(pair, pair2, new Pair(notificationPreferenceType3, new NotificationsPreference(R.string.notif_notify_me_title, numValueOf3, bool3 != null ? bool3.booleanValue() : zA, false, 8, null)));
        MutableStateFlow mutableStateFlow = this.f59878j;
        mutableStateFlow.setValue(mapI);
        Application application = this.f13405a;
        application.getClass();
        this.f59879k.setValue(Boolean.valueOf(NotificationUtils.a(application)));
        this.l.setValue(Boolean.valueOf(zA));
        NotificationsPreference notificationsPreference = (NotificationsPreference) ((Map) mutableStateFlow.getValue()).get(notificationPreferenceType3);
        this.m.setValue(Boolean.valueOf(notificationsPreference != null ? notificationsPreference.f59943c : true));
    }

    @Override // com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesViewModel
    public final void O7() {
        this.d.f59870a.a(NotificationPreferencesTrackingUiModelKt.a(NotificationPreferencesTrackingUiModel.NotificationsPreferencesSettingsEvent.f59940a));
    }

    @Override // com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getT() {
        return this.t;
    }

    @Override // com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesViewModel
    public final Flow b() {
        return FlowKt.y(this.q);
    }

    @Override // com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesViewModel
    public final void h5() {
        MutableStateFlow mutableStateFlow = this.o;
        if (Intrinsics.c((NotificationsPreferencesBottomSheet) mutableStateFlow.getValue(), NotificationsPreferencesBottomSheet.NotifyMeDisabled.f59949e)) {
            s2(NotificationPreferenceType.NOTIFY_ME, true);
        }
        mutableStateFlow.setValue(NotificationsPreferencesBottomSheet.None.f59948e);
    }

    @Override // com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesViewModel
    /* JADX INFO: renamed from: j2, reason: from getter */
    public final StateFlow getP() {
        return this.p;
    }

    @Override // com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesViewModel
    public final void m3(NotificationsPreferencesBottomSheet notificationsPreferencesBottomSheet) {
        notificationsPreferencesBottomSheet.getClass();
        if (Intrinsics.c(notificationsPreferencesBottomSheet, NotificationsPreferencesBottomSheet.SystemNotificationDisabled.f59950e)) {
            K3(NotificationsPreferencesTrackingUiModel.SystemNotificationPopinScreen.f59957a);
        } else if (Intrinsics.c(notificationsPreferencesBottomSheet, NotificationsPreferencesBottomSheet.NoOptInCustomization.f59947e)) {
            K3(NotificationsPreferencesTrackingUiModel.PersonalizationPopinScreen.f59955a);
        }
        this.o.setValue(notificationsPreferencesBottomSheet);
    }

    @Override // com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesViewModel
    public final void m8() {
        this.d.f59870a.a(NotificationPreferencesTrackingUiModelKt.a(NotificationPreferencesTrackingUiModel.NotificationsPreferencesEntryPointEvent.f59936a));
    }

    @Override // com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesViewModel
    public final void q8() {
        MutableStateFlow mutableStateFlow = this.o;
        NotificationsPreferencesBottomSheet notificationsPreferencesBottomSheet = (NotificationsPreferencesBottomSheet) mutableStateFlow.getValue();
        if (Intrinsics.c(notificationsPreferencesBottomSheet, NotificationsPreferencesBottomSheet.NotifyMeDisabled.f59949e)) {
            s2(NotificationPreferenceType.NOTIFY_ME, false);
            this.d.f59870a.a(NotificationPreferencesTrackingUiModelKt.a(NotificationPreferencesTrackingUiModel.DisableBackInStock.f59934a));
        } else if (Intrinsics.c(notificationsPreferencesBottomSheet, NotificationsPreferencesBottomSheet.SystemNotificationDisabled.f59950e)) {
            BuildersKt.c(ViewModelKt.a(this), null, null, new NotificationsPreferencesViewModelImpl$onBottomSheetPositiveButtonClick$1(this, null), 3);
            K3(NotificationsPreferencesTrackingUiModel.OnEnableNotificationsClick.f59953a);
        } else if (Intrinsics.c(notificationsPreferencesBottomSheet, NotificationsPreferencesBottomSheet.NoOptInCustomization.f59947e)) {
            BuildersKt.c(ViewModelKt.a(this), null, null, new NotificationsPreferencesViewModelImpl$onBottomSheetPositiveButtonClick$2(this, null), 3);
            K3(NotificationsPreferencesTrackingUiModel.OnEnableOptionsClick.f59954a);
        }
        mutableStateFlow.setValue(NotificationsPreferencesBottomSheet.None.f59948e);
    }

    @Override // com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesViewModel
    public final void s2(NotificationPreferenceType notificationPreferenceType, boolean z) {
        notificationPreferenceType.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new NotificationsPreferencesViewModelImpl$onPreferenceCheckChanged$1(this, notificationPreferenceType, z, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesViewModel
    /* JADX INFO: renamed from: w1, reason: from getter */
    public final Flow getS() {
        return this.s;
    }

    @Override // com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesViewModel
    public final void z9() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new NotificationsPreferencesViewModelImpl$onSavePreferencesClick$1(this, null), 3);
    }
}
