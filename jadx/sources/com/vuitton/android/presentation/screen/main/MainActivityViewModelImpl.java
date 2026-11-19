package com.vuitton.android.presentation.screen.main;

import android.app.Application;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.domain.usecase.aicompanion.HasAITooltipBeenDisplayedUseCase;
import com.vuitton.android.domain.usecase.aicompanion.UpdateAITooltipVisibilityUseCase;
import com.vuitton.android.domain.usecase.analytics.tools.appsflyer.ListenAppsFlyerDeeplinkUseCase;
import com.vuitton.android.domain.usecase.analytics.tools.appsflyer.StartAppsFlyerUseCase;
import com.vuitton.android.domain.usecase.analytics.tools.appsflyer.UnsetAppsFlyerCustomerIdUseCase;
import com.vuitton.android.domain.usecase.applink.ClearContributionLinkToLaunchUseCase;
import com.vuitton.android.domain.usecase.applink.UpdateLocaleUseCase;
import com.vuitton.android.domain.usecase.authentication.oauth.LogoutUseCase;
import com.vuitton.android.domain.usecase.cart.GetCartSizeUseCase;
import com.vuitton.android.domain.usecase.config.GetECommerceStatusUseCase;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.config.RequireCachedAppConfigUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.InitializeDynamicYieldUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.ResetDynamicYieldIdUseCase;
import com.vuitton.android.domain.usecase.permissions.ShouldRequestNotificationsPermissionUseCase;
import com.vuitton.android.domain.usecase.storemode.IsStoreModeStillValidUseCase;
import com.vuitton.android.presentation.applink.AppLinkTrackingUiModel;
import com.vuitton.android.presentation.applink.AppLinkTrackingUiModelKt;
import com.vuitton.android.presentation.contact.ContactUsDelegate;
import com.vuitton.android.presentation.contact.ContactUsMode;
import com.vuitton.android.presentation.contact.models.ContactUsOrigin;
import com.vuitton.android.presentation.link.parsing.AppLinkPatterns;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.push.NotificationsManager;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.feed.models.FeedTab;
import com.vuitton.android.presentation.screen.main.models.BottomBarTrackingUiModel;
import com.vuitton.android.presentation.screen.main.models.MainActivityFeatureFlags;
import com.vuitton.android.presentation.screen.main.models.MainActivitySideEffect;
import com.vuitton.android.presentation.screen.main.models.MainActivityUiEvent;
import com.vuitton.android.presentation.screen.main.models.MainActivityViewState;
import com.vuitton.android.presentation.utils.NotificationUtils;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.chat.ChatProductModel;
import com.vuitton.foundation.model.domain.model.chat.ScreenType;
import com.vuitton.foundation.model.domain.model.config.AppConfig;
import com.vuitton.foundation.model.domain.model.product.availability.ECommerceStatus;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import defpackage.md;
import defpackage.v40;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.SharedFlowKt;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.flow.internal.CombineKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u00011B¹\u0001\b\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0010\u001a\u00020\u0003\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010$\u001a\u00020#\u0012\u0006\u0010&\u001a\u00020%\u0012\u0006\u0010(\u001a\u00020'\u0012\u0006\u0010*\u001a\u00020)\u0012\u0006\u0010,\u001a\u00020+\u0012\u0006\u0010.\u001a\u00020-¢\u0006\u0004\b/\u00100¨\u00062"}, d2 = {"Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;", "Landroidx/lifecycle/AndroidViewModel;", "Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;", "Lcom/vuitton/android/presentation/contact/ContactUsDelegate;", "Landroid/app/Application;", "application", "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;", "requireCachedAppConfigUseCase", "Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/ListenAppsFlyerDeeplinkUseCase;", "listenAppsFlyerDeeplinkUseCase", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/core/events/LVEventSender;", "eventSender", "contactUsDelegate", "Lcom/vuitton/android/presentation/push/NotificationsManager;", "notificationsManager", "Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase;", "logoutUseCase", "Lcom/vuitton/android/domain/usecase/cart/GetCartSizeUseCase;", "getCartSizeUseCase", "Lcom/vuitton/android/domain/usecase/applink/UpdateLocaleUseCase;", "updateLocaleUseCase", "Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/StartAppsFlyerUseCase;", "startAppsFlyerUseCase", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/usecase/config/GetECommerceStatusUseCase;", "getECommerceStatusUseCase", "Lcom/vuitton/android/domain/usecase/dynamicyield/ResetDynamicYieldIdUseCase;", "resetDynamicYieldIdUseCase", "Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;", "isStoreModeStillValidUseCase", "Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase;", "initializeDynamicYieldUseCase", "Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/UnsetAppsFlyerCustomerIdUseCase;", "unsetAppsFlyerCustomerIdUseCase", "Lcom/vuitton/android/domain/usecase/aicompanion/UpdateAITooltipVisibilityUseCase;", "updateAITooltipVisibilityUseCase", "Lcom/vuitton/android/domain/usecase/aicompanion/HasAITooltipBeenDisplayedUseCase;", "hasAITooltipBeenDisplayedUseCase", "Lcom/vuitton/android/domain/usecase/applink/ClearContributionLinkToLaunchUseCase;", "clearContributionLinkToLaunchUseCase", "Lcom/vuitton/android/domain/usecase/permissions/ShouldRequestNotificationsPermissionUseCase;", "shouldRequestNotificationsPermissionUseCase", "<init>", "(Landroid/app/Application;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/ListenAppsFlyerDeeplinkUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/presentation/push/NotificationsManager;Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase;Lcom/vuitton/android/domain/usecase/cart/GetCartSizeUseCase;Lcom/vuitton/android/domain/usecase/applink/UpdateLocaleUseCase;Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/StartAppsFlyerUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/config/GetECommerceStatusUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ResetDynamicYieldIdUseCase;Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase;Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/UnsetAppsFlyerCustomerIdUseCase;Lcom/vuitton/android/domain/usecase/aicompanion/UpdateAITooltipVisibilityUseCase;Lcom/vuitton/android/domain/usecase/aicompanion/HasAITooltipBeenDisplayedUseCase;Lcom/vuitton/android/domain/usecase/applink/ClearContributionLinkToLaunchUseCase;Lcom/vuitton/android/domain/usecase/permissions/ShouldRequestNotificationsPermissionUseCase;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class MainActivityViewModelImpl extends AndroidViewModel implements MainActivityViewModel, ContactUsDelegate {
    public static final String J;
    public final MutableStateFlow A;
    public final MutableStateFlow B;
    public final MutableStateFlow C;
    public final Flow D;
    public final SharedFlowImpl E;
    public final SharedFlow F;
    public final SharedFlowImpl G;
    public final SharedFlow H;
    public final StateFlow I;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Logger f59053b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AnalyticsTracker f59054c;
    public final LVEventSender d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ContactUsDelegate f59055e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final NotificationsManager f59056f;
    public final LogoutUseCase g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final GetCartSizeUseCase f59057h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final UpdateLocaleUseCase f59058i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final StartAppsFlyerUseCase f59059j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final IsFeatureAvailableUseCase f59060k;
    public final GetECommerceStatusUseCase l;
    public final ResetDynamicYieldIdUseCase m;
    public final IsStoreModeStillValidUseCase n;
    public final InitializeDynamicYieldUseCase o;
    public final UnsetAppsFlyerCustomerIdUseCase p;
    public final UpdateAITooltipVisibilityUseCase q;
    public final HasAITooltipBeenDisplayedUseCase r;
    public final ClearContributionLinkToLaunchUseCase s;
    public final BufferedChannel t;
    public final Flow u;
    public final MutableStateFlow v;
    public final AppConfig w;
    public final MutableStateFlow x;
    public final MutableStateFlow y;
    public final MutableStateFlow z;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.main.MainActivityViewModelImpl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.main.MainActivityViewModelImpl$1", f = "MainActivityViewModelImpl.kt", l = {144}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f59061b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ MainActivityViewModelImpl f59062c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Continuation continuation, MainActivityViewModelImpl mainActivityViewModelImpl) {
            super(2, continuation);
            this.f59062c = mainActivityViewModelImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(continuation, this.f59062c);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            ContactUsDelegate contactUsDelegate = this.f59062c.f59055e;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f59061b;
            if (i2 == 0) {
                ResultKt.b(obj);
                contactUsDelegate.f8(ContactUsMode.DEFAULT);
                this.f59061b = 1;
                if (contactUsDelegate.M1(null, this) == coroutineSingletons) {
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

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.main.MainActivityViewModelImpl$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.main.MainActivityViewModelImpl$2", f = "MainActivityViewModelImpl.kt", l = {146}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f59063b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ MainActivityViewModelImpl f59064c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(Continuation continuation, MainActivityViewModelImpl mainActivityViewModelImpl) {
            super(2, continuation);
            this.f59064c = mainActivityViewModelImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass2(continuation, this.f59064c);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f59063b;
            if (i2 == 0) {
                ResultKt.b(obj);
                ContactUsDelegate contactUsDelegate = this.f59064c.f59055e;
                this.f59063b = 1;
                if (contactUsDelegate.vc(this) == coroutineSingletons) {
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

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.main.MainActivityViewModelImpl$3, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.main.MainActivityViewModelImpl$3", f = "MainActivityViewModelImpl.kt", l = {147}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f59065b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ MainActivityViewModelImpl f59066c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass3(Continuation continuation, MainActivityViewModelImpl mainActivityViewModelImpl) {
            super(2, continuation);
            this.f59066c = mainActivityViewModelImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass3(continuation, this.f59066c);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass3) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f59065b;
            if (i2 == 0) {
                ResultKt.b(obj);
                ContactUsDelegate contactUsDelegate = this.f59066c.f59055e;
                this.f59065b = 1;
                if (contactUsDelegate.E5(this) == coroutineSingletons) {
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

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.main.MainActivityViewModelImpl$4, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.main.MainActivityViewModelImpl$4", f = "MainActivityViewModelImpl.kt", l = {149, 150, 151, 155, 157, 158}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass4 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Object f59067b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f59068c;
        public final /* synthetic */ MainActivityViewModelImpl d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass4(Continuation continuation, MainActivityViewModelImpl mainActivityViewModelImpl) {
            super(2, continuation);
            this.d = mainActivityViewModelImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass4(continuation, this.d);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass4) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        /* JADX WARN: Code duplicated, block: B:18:0x005f  */
        /* JADX WARN: Code duplicated, block: B:21:0x0070 A[PHI: r8
          0x0070: PHI (r8v9 java.lang.Object) = (r8v8 java.lang.Object), (r8v0 java.lang.Object) binds: [B:19:0x006c, B:9:0x002b] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Code duplicated, block: B:23:0x0078  */
        /* JADX WARN: Code duplicated, block: B:25:0x008a  */
        /* JADX WARN: Code duplicated, block: B:27:0x00a5  */
        /* JADX WARN: Code duplicated, block: B:28:0x00af  */
        /* JADX WARN: Code duplicated, block: B:30:0x00b5  */
        /* JADX WARN: Code duplicated, block: B:35:0x00cf A[PHI: r3 r8
          0x00cf: PHI (r3v11 kotlinx.coroutines.flow.MutableStateFlow) = (r3v7 kotlinx.coroutines.flow.MutableStateFlow), (r3v14 kotlinx.coroutines.flow.MutableStateFlow) binds: [B:33:0x00cc, B:8:0x0022] A[DONT_GENERATE, DONT_INLINE]
          0x00cf: PHI (r8v18 java.lang.Object) = (r8v14 java.lang.Object), (r8v0 java.lang.Object) binds: [B:33:0x00cc, B:8:0x0022] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Code duplicated, block: B:38:0x00e4 A[PHI: r8
          0x00e4: PHI (r8v22 java.lang.Object) = (r8v21 java.lang.Object), (r8v0 java.lang.Object) binds: [B:36:0x00e1, B:7:0x001d] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Code duplicated, block: B:40:0x00ec  */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x00f5, code lost:
        
            if (r8.a(r7) == r2) goto L42;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r8) {
            /*
                Method dump skipped, instruction units count: 270
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.main.MainActivityViewModelImpl.AnonymousClass4.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.main.MainActivityViewModelImpl$5, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.main.MainActivityViewModelImpl$5", f = "MainActivityViewModelImpl.kt", l = {162}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass5 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f59069b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ MainActivityViewModelImpl f59070c;

        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.main.MainActivityViewModelImpl$5$1, reason: invalid class name */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "hasBeenDisplayed", ""}, k = 3, mv = {2, 3, 0}, xi = 48)
        @DebugMetadata(c = "com.vuitton.android.presentation.screen.main.MainActivityViewModelImpl$5$1", f = "MainActivityViewModelImpl.kt", l = {}, m = "invokeSuspend", v = 2)
        final class AnonymousClass1 extends SuspendLambda implements Function2<Boolean, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public /* synthetic */ boolean f59071b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ MainActivityViewModelImpl f59072c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass1(Continuation continuation, MainActivityViewModelImpl mainActivityViewModelImpl) {
                super(2, continuation);
                this.f59072c = mainActivityViewModelImpl;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(continuation, this.f59072c);
                anonymousClass1.f59071b = ((Boolean) obj).booleanValue();
                return anonymousClass1;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Boolean bool = (Boolean) obj;
                bool.booleanValue();
                return ((AnonymousClass1) create(bool, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                boolean z = this.f59071b;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                ResultKt.b(obj);
                this.f59072c.C.setValue(Boolean.valueOf(z));
                return Unit.f71739a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass5(Continuation continuation, MainActivityViewModelImpl mainActivityViewModelImpl) {
            super(2, continuation);
            this.f59070c = mainActivityViewModelImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass5(continuation, this.f59070c);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass5) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f59069b;
            if (i2 == 0) {
                ResultKt.b(obj);
                MainActivityViewModelImpl mainActivityViewModelImpl = this.f59070c;
                Flow flowJ = mainActivityViewModelImpl.r.f49157a.j();
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(null, mainActivityViewModelImpl);
                this.f59069b = 1;
                if (FlowKt.g(flowJ, anonymousClass1, this) == coroutineSingletons) {
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

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001c\u0010\u0004\u001a\n \u0003*\u0004\u0018\u00010\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl$Companion;", "", "", "kotlin.jvm.PlatformType", "TAG", "Ljava/lang/String;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        J = "MainActivityViewModelImpl";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public MainActivityViewModelImpl(Application application, RequireCachedAppConfigUseCase requireCachedAppConfigUseCase, ListenAppsFlyerDeeplinkUseCase listenAppsFlyerDeeplinkUseCase, Logger logger, AnalyticsTracker analyticsTracker, LVEventSender lVEventSender, ContactUsDelegate contactUsDelegate, NotificationsManager notificationsManager, LogoutUseCase logoutUseCase, GetCartSizeUseCase getCartSizeUseCase, UpdateLocaleUseCase updateLocaleUseCase, StartAppsFlyerUseCase startAppsFlyerUseCase, IsFeatureAvailableUseCase isFeatureAvailableUseCase, GetECommerceStatusUseCase getECommerceStatusUseCase, ResetDynamicYieldIdUseCase resetDynamicYieldIdUseCase, IsStoreModeStillValidUseCase isStoreModeStillValidUseCase, InitializeDynamicYieldUseCase initializeDynamicYieldUseCase, UnsetAppsFlyerCustomerIdUseCase unsetAppsFlyerCustomerIdUseCase, UpdateAITooltipVisibilityUseCase updateAITooltipVisibilityUseCase, HasAITooltipBeenDisplayedUseCase hasAITooltipBeenDisplayedUseCase, ClearContributionLinkToLaunchUseCase clearContributionLinkToLaunchUseCase, ShouldRequestNotificationsPermissionUseCase shouldRequestNotificationsPermissionUseCase) {
        super(application);
        application.getClass();
        requireCachedAppConfigUseCase.getClass();
        listenAppsFlyerDeeplinkUseCase.getClass();
        logger.getClass();
        analyticsTracker.getClass();
        lVEventSender.getClass();
        contactUsDelegate.getClass();
        notificationsManager.getClass();
        logoutUseCase.getClass();
        getCartSizeUseCase.getClass();
        updateLocaleUseCase.getClass();
        startAppsFlyerUseCase.getClass();
        isFeatureAvailableUseCase.getClass();
        getECommerceStatusUseCase.getClass();
        resetDynamicYieldIdUseCase.getClass();
        isStoreModeStillValidUseCase.getClass();
        initializeDynamicYieldUseCase.getClass();
        unsetAppsFlyerCustomerIdUseCase.getClass();
        updateAITooltipVisibilityUseCase.getClass();
        hasAITooltipBeenDisplayedUseCase.getClass();
        clearContributionLinkToLaunchUseCase.getClass();
        shouldRequestNotificationsPermissionUseCase.getClass();
        this.f59053b = logger;
        this.f59054c = analyticsTracker;
        this.d = lVEventSender;
        this.f59055e = contactUsDelegate;
        this.f59056f = notificationsManager;
        this.g = logoutUseCase;
        this.f59057h = getCartSizeUseCase;
        this.f59058i = updateLocaleUseCase;
        this.f59059j = startAppsFlyerUseCase;
        this.f59060k = isFeatureAvailableUseCase;
        this.l = getECommerceStatusUseCase;
        this.m = resetDynamicYieldIdUseCase;
        this.n = isStoreModeStillValidUseCase;
        this.o = initializeDynamicYieldUseCase;
        this.p = unsetAppsFlyerCustomerIdUseCase;
        this.q = updateAITooltipVisibilityUseCase;
        this.r = hasAITooltipBeenDisplayedUseCase;
        this.s = clearContributionLinkToLaunchUseCase;
        BufferedChannel bufferedChannelA = ChannelKt.a(-1, 6, null);
        this.t = bufferedChannelA;
        this.u = FlowKt.y(bufferedChannelA);
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(null);
        this.v = mutableStateFlowA;
        this.w = requireCachedAppConfigUseCase.a();
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(0);
        this.x = mutableStateFlowA2;
        Boolean bool = Boolean.TRUE;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(bool);
        this.y = mutableStateFlowA3;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(bool);
        this.z = mutableStateFlowA4;
        MutableStateFlow mutableStateFlowA5 = StateFlowKt.a(bool);
        this.A = mutableStateFlowA5;
        Boolean bool2 = Boolean.FALSE;
        MutableStateFlow mutableStateFlowA6 = StateFlowKt.a(bool2);
        this.B = mutableStateFlowA6;
        MutableStateFlow mutableStateFlowA7 = StateFlowKt.a(bool2);
        this.C = mutableStateFlowA7;
        this.D = listenAppsFlyerDeeplinkUseCase.f49218a.d();
        SharedFlowImpl sharedFlowImplB = SharedFlowKt.b(0, 1, null, 5);
        this.E = sharedFlowImplB;
        this.F = FlowKt.a(sharedFlowImplB);
        SharedFlowImpl sharedFlowImplB2 = SharedFlowKt.b(0, 1, null, 5);
        this.G = sharedFlowImplB2;
        this.H = FlowKt.a(sharedFlowImplB2);
        final Flow[] flowArr = {mutableStateFlowA4, mutableStateFlowA5, mutableStateFlowA3, new FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1(mutableStateFlowA), mutableStateFlowA2, mutableStateFlowA6, mutableStateFlowA7};
        Flow<MainActivityViewState> flow = new Flow<MainActivityViewState>() { // from class: com.vuitton.android.presentation.screen.main.MainActivityViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.main.MainActivityViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.main.MainActivityViewModelImpl$special$$inlined$combine$1$3", f = "MainActivityViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super MainActivityViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f59084b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f59085c;
                public /* synthetic */ Object[] d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ MainActivityViewModelImpl f59086e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass3(Continuation continuation, MainActivityViewModelImpl mainActivityViewModelImpl) {
                    super(3, continuation);
                    this.f59086e = mainActivityViewModelImpl;
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3, this.f59086e);
                    anonymousClass3.f59085c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f59085c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f59084b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        AppConfig appConfig = this.f59086e.w;
                        String str = appConfig.f67238k;
                        String str2 = appConfig.l;
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
                        MainActivityFeatureFlags mainActivityFeatureFlags = (MainActivityFeatureFlags) obj5;
                        Object obj6 = objArr[4];
                        obj6.getClass();
                        int iIntValue = ((Integer) obj6).intValue();
                        Object obj7 = objArr[5];
                        obj7.getClass();
                        boolean zBooleanValue4 = ((Boolean) obj7).booleanValue();
                        Object obj8 = objArr[6];
                        obj8.getClass();
                        MainActivityViewState mainActivityViewState = new MainActivityViewState(zBooleanValue3, str, str2, zBooleanValue, zBooleanValue2, mainActivityFeatureFlags, iIntValue, zBooleanValue4, ((Boolean) obj8).booleanValue());
                        this.f59085c = null;
                        this.d = null;
                        this.f59084b = 1;
                        if (flowCollector.emit(mainActivityViewState, this) == coroutineSingletons) {
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
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.main.MainActivityViewModelImpl$special$$inlined$combine$1.2
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
        this.I = FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new MainActivityViewState(false, null, null, false, false, null, 0, false, false, 511, null));
        Application application2 = this.f13405a;
        application2.getClass();
        if (shouldRequestNotificationsPermissionUseCase.a(NotificationUtils.a(application2), false)) {
            bufferedChannelA.b(MainActivitySideEffect.RequestNotificationPermission.f59129a);
        }
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass1(null, this), 3);
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass2(null, this), 3);
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass3(null, this), 3);
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass4(null, this), 3);
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass5(null, this), 3);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object yc(MainActivityViewModelImpl mainActivityViewModelImpl, ContinuationImpl continuationImpl) {
        MainActivityViewModelImpl$getActivityFeaturesFlags$1 mainActivityViewModelImpl$getActivityFeaturesFlags$1;
        if (continuationImpl instanceof MainActivityViewModelImpl$getActivityFeaturesFlags$1) {
            mainActivityViewModelImpl$getActivityFeaturesFlags$1 = (MainActivityViewModelImpl$getActivityFeaturesFlags$1) continuationImpl;
            int i2 = mainActivityViewModelImpl$getActivityFeaturesFlags$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                mainActivityViewModelImpl$getActivityFeaturesFlags$1.d = i2 - Integer.MIN_VALUE;
            } else {
                mainActivityViewModelImpl$getActivityFeaturesFlags$1 = new MainActivityViewModelImpl$getActivityFeaturesFlags$1(mainActivityViewModelImpl, continuationImpl);
            }
        } else {
            mainActivityViewModelImpl$getActivityFeaturesFlags$1 = new MainActivityViewModelImpl$getActivityFeaturesFlags$1(mainActivityViewModelImpl, continuationImpl);
        }
        Object objC = mainActivityViewModelImpl$getActivityFeaturesFlags$1.f59075b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = mainActivityViewModelImpl$getActivityFeaturesFlags$1.d;
        if (i3 == 0) {
            ResultKt.b(objC);
            IsFeatureAvailableUseCase isFeatureAvailableUseCase = mainActivityViewModelImpl.f59060k;
            Feature[] featureArr = {Feature.STORE_MODE};
            mainActivityViewModelImpl$getActivityFeaturesFlags$1.d = 1;
            objC = isFeatureAvailableUseCase.c(featureArr, false, mainActivityViewModelImpl$getActivityFeaturesFlags$1);
            if (objC == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objC);
        }
        return new MainActivityFeatureFlags(((Boolean) objC).booleanValue(), mainActivityViewModelImpl.l.a() == ECommerceStatus.Enabled);
    }

    @Override // com.vuitton.android.presentation.screen.main.MainActivityViewModel
    public final boolean A4() {
        Boolean boolC = this.n.f50405a.c();
        Result.Companion companion = Result.INSTANCE;
        return boolC.booleanValue();
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void B(ChatProductModel chatProductModel, int i2, int i3) {
        chatProductModel.getClass();
        this.f59055e.B(chatProductModel, i2, i3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void C(ScreenType screenType) {
        screenType.getClass();
        this.f59055e.C(screenType);
    }

    @Override // com.vuitton.android.presentation.screen.main.MainActivityViewModel
    /* JADX INFO: renamed from: C5, reason: from getter */
    public final SharedFlow getF() {
        return this.F;
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object E5(Continuation continuation) {
        return this.f59055e.E5(continuation);
    }

    @Override // com.vuitton.android.presentation.screen.main.MainActivityViewModel
    public final void F6(MainActivityUiEvent mainActivityUiEvent) {
        boolean z = mainActivityUiEvent instanceof MainActivityUiEvent.NavigateToTopLevelDestination;
        BufferedChannel bufferedChannel = this.t;
        if (z) {
            MainActivityUiEvent.NavigateToTopLevelDestination navigateToTopLevelDestination = (MainActivityUiEvent.NavigateToTopLevelDestination) mainActivityUiEvent;
            bufferedChannel.b(new MainActivitySideEffect.Navigation.NavigateTo(navigateToTopLevelDestination.f59136a, navigateToTopLevelDestination.f59137b));
            return;
        }
        if (mainActivityUiEvent instanceof MainActivityUiEvent.ShowAlreadySignedBottomSheet) {
            bufferedChannel.b(new MainActivitySideEffect.ShowAlreadySignedBottomSheet(((MainActivityUiEvent.ShowAlreadySignedBottomSheet) mainActivityUiEvent).f59138a));
            return;
        }
        if (mainActivityUiEvent instanceof MainActivityUiEvent.NavigateToDeepLink) {
            MainActivityUiEvent.NavigateToDeepLink navigateToDeepLink = (MainActivityUiEvent.NavigateToDeepLink) mainActivityUiEvent;
            bufferedChannel.b(new MainActivitySideEffect.Navigation.NavigateToDeepLink(navigateToDeepLink.f59134a, navigateToDeepLink.f59135b));
        } else {
            if (!(mainActivityUiEvent instanceof MainActivityUiEvent.NavigateToAppLink)) {
                v40.g();
                return;
            }
            List list = AppLinkPatterns.f51698a;
            MainActivityUiEvent.NavigateToAppLink navigateToAppLink = (MainActivityUiEvent.NavigateToAppLink) mainActivityUiEvent;
            String str = navigateToAppLink.f59133b;
            if (AppLinkPatterns.a(str)) {
                bufferedChannel.b(new MainActivitySideEffect.ShowSightCallBottomSheet(str));
            } else {
                bufferedChannel.b(new MainActivitySideEffect.Navigation.NavigateToAppLink(navigateToAppLink.f59132a, str));
            }
        }
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void I(ChatProductModel chatProductModel, int i2) {
        chatProductModel.getClass();
        this.f59055e.I(chatProductModel, i2);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object M1(ContactUsOrigin contactUsOrigin, Continuation continuation) {
        return this.f59055e.M1(contactUsOrigin, continuation);
    }

    @Override // com.vuitton.android.presentation.screen.main.MainActivityViewModel
    public final void N8(Integer num) {
        BuildersKt.c(ViewModelKt.a(this), null, null, new MainActivityViewModelImpl$updateCartSize$1(this, num, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.main.MainActivityViewModel
    /* JADX INFO: renamed from: O3, reason: from getter */
    public final SharedFlow getH() {
        return this.H;
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void Q0() {
        this.f59055e.Q0();
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final Object S0(Continuation continuation) {
        return this.f59055e.S0(continuation);
    }

    @Override // com.vuitton.android.presentation.screen.main.MainActivityViewModel
    public final void S1(FeedTab feedTab) {
        if (feedTab != null) {
            this.G.a(feedTab);
        }
    }

    @Override // com.vuitton.android.presentation.screen.main.MainActivityViewModel
    public final void S2() {
        this.y.setValue(Boolean.FALSE);
    }

    @Override // com.vuitton.android.presentation.screen.main.MainActivityViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getI() {
        return this.I;
    }

    @Override // com.vuitton.android.presentation.screen.main.MainActivityViewModel
    public final void f0() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new MainActivityViewModelImpl$updateTooltipVisibility$1(null, this), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final void f8(ContactUsMode contactUsMode) {
        contactUsMode.getClass();
        this.f59055e.f8(contactUsMode);
    }

    @Override // com.vuitton.android.presentation.screen.main.MainActivityViewModel
    public final void gb(AppLinkTrackingUiModel appLinkTrackingUiModel) {
        this.f59054c.a(AppLinkTrackingUiModelKt.a(appLinkTrackingUiModel));
    }

    @Override // com.vuitton.android.presentation.screen.main.MainActivityViewModel
    /* JADX INFO: renamed from: h, reason: from getter */
    public final Flow getU() {
        return this.u;
    }

    @Override // com.vuitton.android.presentation.screen.main.MainActivityViewModel
    public final void h2(boolean z) {
        this.A.setValue(Boolean.valueOf(z));
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Flow i() {
        return this.f59055e.i();
    }

    @Override // com.vuitton.android.presentation.screen.main.MainActivityViewModel
    public final void k2(boolean z) {
        this.z.setValue(Boolean.valueOf(z));
    }

    @Override // com.vuitton.android.presentation.screen.main.MainActivityViewModel
    public final void k8() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new MainActivityViewModelImpl$clearContributionLinkToLaunch$1(null, this), 3);
    }

    @Override // com.vuitton.android.presentation.screen.main.MainActivityViewModel
    public final void lb(String str) {
        str.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new MainActivityViewModelImpl$updateLocaleAndRestart$1(this, str, null), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final void m4(StringResourceUiModel stringResourceUiModel) {
        this.f59055e.m4(stringResourceUiModel);
    }

    @Override // com.vuitton.android.presentation.screen.main.MainActivityViewModel
    public final void p2(BottomBarTrackingUiModel bottomBarTrackingUiModel) {
        Hit.EventHit.DefaultEventHit defaultEventHit;
        bottomBarTrackingUiModel.getClass();
        if (bottomBarTrackingUiModel instanceof BottomBarTrackingUiModel.OnExploreHitEvent) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/Wall", "explore", "footer", "click", null, null, 97, null);
        } else if (bottomBarTrackingUiModel instanceof BottomBarTrackingUiModel.OnCatalogHitEvent) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/Wall", "catalog", "footer", "click", null, null, 97, null);
        } else if (bottomBarTrackingUiModel instanceof BottomBarTrackingUiModel.OnCartHitEvent) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/Wall", "cart", "footer", "click", null, null, 97, null);
        } else if (bottomBarTrackingUiModel instanceof BottomBarTrackingUiModel.OnServicesHitEvent) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/Wall", "services", "footer", "click", null, null, 97, null);
        } else {
            if (!(bottomBarTrackingUiModel instanceof BottomBarTrackingUiModel.OnWishlistHitEvent)) {
                v40.g();
                return;
            }
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/Wall", "wishlist", "footer", "click", null, null, 97, null);
        }
        this.f59054c.a(defaultEventHit);
    }

    @Override // com.vuitton.android.presentation.screen.main.MainActivityViewModel
    public final void q() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new MainActivityViewModelImpl$logoutUser$1(null, this), 3);
    }

    @Override // com.vuitton.android.presentation.screen.main.MainActivityViewModel
    /* JADX INFO: renamed from: qb, reason: from getter */
    public final Flow getD() {
        return this.D;
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void r(ChatProductModel chatProductModel) {
        chatProductModel.getClass();
        this.f59055e.r(chatProductModel);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void s() {
        this.f59055e.s();
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void v(String str, String str2) {
        this.f59055e.v(str, str2);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object vc(Continuation continuation) {
        return this.f59055e.vc(continuation);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void x(ChatProductModel chatProductModel, int i2) {
        chatProductModel.getClass();
        this.f59055e.x(chatProductModel, i2);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void z() {
        this.f59055e.z();
    }
}
