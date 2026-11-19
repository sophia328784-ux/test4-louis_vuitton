package com.vuitton.android.presentation.screen.wishlist;

import android.app.Application;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.runtime.snapshots.StateListIterator;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.vuitton.android.R;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.data.monitoring.DynatraceMonitorAction;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.wishlist.WishlistMonitoring;
import com.vuitton.android.domain.usecase.account.GetProfileUseCase;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.config.RequireCachedAppConfigUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.domain.usecase.products.GetSkusProductsListUseCase;
import com.vuitton.android.domain.usecase.storemode.DisableStoreModeUseCase;
import com.vuitton.android.domain.usecase.storemode.GetRmsCodeUseCase;
import com.vuitton.android.domain.usecase.storemode.IsStoreModeStillValidUseCase;
import com.vuitton.android.domain.usecase.wishlist.DeleteProductFromWishlistUseCase;
import com.vuitton.android.domain.usecase.wishlist.GetWishlistUseCase;
import com.vuitton.android.domain.usecase.wishlist.ShareWishlistContentUseCase;
import com.vuitton.android.presentation.contact.ContactUsDelegate;
import com.vuitton.android.presentation.contact.ContactUsMode;
import com.vuitton.android.presentation.contact.models.ContactUsOrigin;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistIdUiModel;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistItemUiModel;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistTrackingUiModel;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistUiModel;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistViewState;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.chat.ChatProductModel;
import com.vuitton.foundation.model.domain.model.chat.ScreenType;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.profile.Profile;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import defpackage.cj;
import defpackage.md;
import defpackage.v40;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
import java.util.regex.Pattern;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.SharedFlowKt;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.flow.internal.CombineKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0099\u0001\b\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u0012\u0006\u0010!\u001a\u00020 \u0012\u0006\u0010#\u001a\u00020\"\u0012\u0006\u0010%\u001a\u00020$\u0012\u0006\u0010&\u001a\u00020\u0003¢\u0006\u0004\b'\u0010(¨\u0006)"}, d2 = {"Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;", "Lcom/vuitton/android/presentation/contact/ContactUsDelegate;", "Landroid/app/Application;", "application", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/domain/monitoring/Monitor;", "monitor", "Lcom/vuitton/android/core/events/LVEventSender;", "eventSender", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;", "getWishlistUseCase", "Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;", "deleteProductFromWishlistUseCase", "Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;", "isStoreModeStillValidUseCase", "Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;", "disableStoreModeUseCase", "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;", "getProfileUseCase", "Lcom/vuitton/android/domain/usecase/wishlist/ShareWishlistContentUseCase;", "shareWishlistContentUseCase", "Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;", "getSkusProductsListUseCase", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/usecase/storemode/GetRmsCodeUseCase;", "getRmsCodeUseCase", "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;", "requireCachedAppConfigUseCase", "Lcom/vuitton/android/presentation/notification/NotificationBuilder;", "notificationBuilder", "contactUsDelegate", "<init>", "(Landroid/app/Application;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/wishlist/ShareWishlistContentUseCase;Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/storemode/GetRmsCodeUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class WishlistViewModelImpl extends ViewModel implements WishlistViewModel, ContactUsDelegate {
    public final MutableStateFlow A;
    public final BufferedChannel B;
    public final StateFlow C;
    public Profile D;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Application f65617a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Logger f65618b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Monitor f65619c;
    public final LVEventSender d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AnalyticsTracker f65620e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final GetWishlistUseCase f65621f;
    public final DeleteProductFromWishlistUseCase g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final IsStoreModeStillValidUseCase f65622h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final DisableStoreModeUseCase f65623i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final GetProfileUseCase f65624j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ShareWishlistContentUseCase f65625k;
    public final GetSkusProductsListUseCase l;
    public final GetRmsCodeUseCase m;
    public final NotificationBuilder n;
    public final ContactUsDelegate o;
    public final InAppDispatch p;
    public final long q;
    public final SharedFlowImpl r;
    public final BufferedChannel s;
    public final MutableStateFlow t;
    public final MutableStateFlow u;
    public final MutableStateFlow v;
    public final MutableStateFlow w;
    public final MutableStateFlow x;
    public final MutableStateFlow y;
    public final MutableStateFlow z;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.wishlist.WishlistViewModelImpl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.wishlist.WishlistViewModelImpl$1", f = "WishlistViewModelImpl.kt", l = {159}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f65626b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ WishlistViewModelImpl f65627c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Continuation continuation, WishlistViewModelImpl wishlistViewModelImpl) {
            super(2, continuation);
            this.f65627c = wishlistViewModelImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(continuation, this.f65627c);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            ContactUsDelegate contactUsDelegate = this.f65627c.o;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f65626b;
            if (i2 == 0) {
                ResultKt.b(obj);
                contactUsDelegate.f8(ContactUsMode.DEFAULT);
                this.f65626b = 1;
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

    @Inject
    public WishlistViewModelImpl(Application application, Logger logger, Monitor monitor, LVEventSender lVEventSender, AnalyticsTracker analyticsTracker, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, GetWishlistUseCase getWishlistUseCase, DeleteProductFromWishlistUseCase deleteProductFromWishlistUseCase, IsStoreModeStillValidUseCase isStoreModeStillValidUseCase, DisableStoreModeUseCase disableStoreModeUseCase, GetProfileUseCase getProfileUseCase, ShareWishlistContentUseCase shareWishlistContentUseCase, GetSkusProductsListUseCase getSkusProductsListUseCase, IsFeatureAvailableUseCase isFeatureAvailableUseCase, GetRmsCodeUseCase getRmsCodeUseCase, RequireCachedAppConfigUseCase requireCachedAppConfigUseCase, NotificationBuilder notificationBuilder, ContactUsDelegate contactUsDelegate) {
        application.getClass();
        logger.getClass();
        monitor.getClass();
        lVEventSender.getClass();
        analyticsTracker.getClass();
        requireUserInAppDispatchUseCase.getClass();
        getWishlistUseCase.getClass();
        deleteProductFromWishlistUseCase.getClass();
        isStoreModeStillValidUseCase.getClass();
        disableStoreModeUseCase.getClass();
        getProfileUseCase.getClass();
        shareWishlistContentUseCase.getClass();
        getSkusProductsListUseCase.getClass();
        isFeatureAvailableUseCase.getClass();
        getRmsCodeUseCase.getClass();
        requireCachedAppConfigUseCase.getClass();
        notificationBuilder.getClass();
        contactUsDelegate.getClass();
        this.f65617a = application;
        this.f65618b = logger;
        this.f65619c = monitor;
        this.d = lVEventSender;
        this.f65620e = analyticsTracker;
        this.f65621f = getWishlistUseCase;
        this.g = deleteProductFromWishlistUseCase;
        this.f65622h = isStoreModeStillValidUseCase;
        this.f65623i = disableStoreModeUseCase;
        this.f65624j = getProfileUseCase;
        this.f65625k = shareWishlistContentUseCase;
        this.l = getSkusProductsListUseCase;
        this.m = getRmsCodeUseCase;
        this.n = notificationBuilder;
        this.o = contactUsDelegate;
        InAppDispatch inAppDispatchB = requireUserInAppDispatchUseCase.f49912a.b();
        this.p = inAppDispatchB;
        this.q = 300L;
        this.r = SharedFlowKt.b(0, 0, null, 7);
        this.s = ChannelKt.a(-2, 6, null);
        Boolean bool = Boolean.FALSE;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(bool);
        this.t = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(bool);
        this.u = mutableStateFlowA2;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(null);
        this.v = mutableStateFlowA3;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(null);
        this.w = mutableStateFlowA4;
        MutableStateFlow mutableStateFlowA5 = StateFlowKt.a(Boolean.TRUE);
        this.x = mutableStateFlowA5;
        MutableStateFlow mutableStateFlowA6 = StateFlowKt.a(null);
        this.y = mutableStateFlowA6;
        MutableStateFlow mutableStateFlowA7 = StateFlowKt.a(null);
        this.z = mutableStateFlowA7;
        MutableStateFlow mutableStateFlowA8 = StateFlowKt.a(Boolean.valueOf(isFeatureAvailableUseCase.b(new Feature[]{Feature.NATIVE_SHARE_WISHLIST})));
        this.A = mutableStateFlowA8;
        this.B = ChannelKt.a(0, 7, null);
        final Flow[] flowArr = {mutableStateFlowA, mutableStateFlowA2, mutableStateFlowA3, mutableStateFlowA4, mutableStateFlowA5, mutableStateFlowA7, mutableStateFlowA8, mutableStateFlowA6, contactUsDelegate.i()};
        Flow<WishlistViewState> flow = new Flow<WishlistViewState>() { // from class: com.vuitton.android.presentation.screen.wishlist.WishlistViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.wishlist.WishlistViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.wishlist.WishlistViewModelImpl$special$$inlined$combine$1$3", f = "WishlistViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super WishlistViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f65664b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f65665c;
                public /* synthetic */ Object[] d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ WishlistViewModelImpl f65666e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass3(Continuation continuation, WishlistViewModelImpl wishlistViewModelImpl) {
                    super(3, continuation);
                    this.f65666e = wishlistViewModelImpl;
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3, this.f65666e);
                    anonymousClass3.f65665c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f65665c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f65664b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        Object obj2 = objArr[0];
                        obj2.getClass();
                        boolean zBooleanValue = ((Boolean) obj2).booleanValue();
                        Object obj3 = objArr[1];
                        obj3.getClass();
                        boolean zBooleanValue2 = ((Boolean) obj3).booleanValue();
                        WishlistUiModel wishlistUiModel = (WishlistUiModel) objArr[2];
                        WishlistIdUiModel wishlistIdUiModel = (WishlistIdUiModel) objArr[3];
                        String str = wishlistIdUiModel != null ? wishlistIdUiModel.f65738b : null;
                        Object obj4 = objArr[4];
                        obj4.getClass();
                        boolean zBooleanValue3 = ((Boolean) obj4).booleanValue();
                        Result result = (Result) objArr[5];
                        Object obj5 = objArr[6];
                        obj5.getClass();
                        boolean zBooleanValue4 = ((Boolean) obj5).booleanValue();
                        String str2 = (String) objArr[7];
                        Object obj6 = objArr[8];
                        obj6.getClass();
                        WishlistViewState wishlistViewState = new WishlistViewState(this.f65666e.p, zBooleanValue, zBooleanValue2, wishlistUiModel, str, zBooleanValue3, result, zBooleanValue4, str2, (ContactUsUiModel) obj6, null);
                        this.f65665c = null;
                        this.d = null;
                        this.f65664b = 1;
                        if (flowCollector.emit(wishlistViewState, this) == coroutineSingletons) {
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
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.wishlist.WishlistViewModelImpl$special$$inlined$combine$1.2
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
        this.C = FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new WishlistViewState(inAppDispatchB, false, false, null, null, false, null, false, null, null, 1022, null));
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass1(null, this), 3);
    }

    public static final void yc(WishlistViewModelImpl wishlistViewModelImpl, String str, boolean z) {
        Object value;
        WishlistUiModel wishlistUiModel;
        MutableStateFlow mutableStateFlow = wishlistViewModelImpl.v;
        do {
            value = mutableStateFlow.getValue();
            WishlistUiModel wishlistUiModel2 = (WishlistUiModel) value;
            if (wishlistUiModel2 != null) {
                SnapshotStateList snapshotStateList = wishlistUiModel2.f65755a;
                ArrayList arrayList = new ArrayList(CollectionsKt.t(snapshotStateList, 10));
                ListIterator listIterator = snapshotStateList.listIterator();
                while (true) {
                    StateListIterator stateListIterator = (StateListIterator) listIterator;
                    if (!stateListIterator.hasNext()) {
                        break;
                    }
                    WishlistItemUiModel wishlistItemUiModel = (WishlistItemUiModel) stateListIterator.next();
                    String str2 = wishlistItemUiModel.f65740b;
                    SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
                    if (Intrinsics.c(str2, str)) {
                        String str3 = wishlistItemUiModel.f65739a;
                        String str4 = wishlistItemUiModel.f65740b;
                        String str5 = wishlistItemUiModel.f65741c;
                        String str6 = wishlistItemUiModel.d;
                        String str7 = wishlistItemUiModel.f65742e;
                        str3.getClass();
                        str4.getClass();
                        str5.getClass();
                        str6.getClass();
                        str7.getClass();
                        wishlistItemUiModel = new WishlistItemUiModel(str3, str4, str5, str6, str7, z, null);
                    }
                    arrayList.add(wishlistItemUiModel);
                }
                SnapshotStateList snapshotStateList2 = new SnapshotStateList();
                snapshotStateList2.addAll(arrayList);
                wishlistUiModel = new WishlistUiModel(snapshotStateList2, wishlistUiModel2.f65756b);
            } else {
                wishlistUiModel = null;
            }
        } while (!mutableStateFlow.i(value, wishlistUiModel));
    }

    public final void Ac(int i2) {
        BuildersKt.c(ViewModelKt.a(this), null, null, new WishlistViewModelImpl$showErrorNotification$1(this, i2, null), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void B(ChatProductModel chatProductModel, int i2, int i3) {
        chatProductModel.getClass();
        this.o.B(chatProductModel, i2, i3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void C(ScreenType screenType) {
        screenType.getClass();
        this.o.C(screenType);
    }

    @Override // com.vuitton.android.presentation.screen.wishlist.WishlistViewModel
    public final void D5(String str, String str2) {
        boolean zEquals;
        str.getClass();
        str2.getClass();
        WishlistIdUiModel wishlistIdUiModel = (WishlistIdUiModel) this.w.getValue();
        String str3 = wishlistIdUiModel != null ? wishlistIdUiModel.f65738b : null;
        if (str3 == null) {
            zEquals = false;
        } else {
            WishlistIdUiModel.Companion companion = WishlistIdUiModel.f65737c;
            zEquals = str3.equals(str);
        }
        if (zEquals) {
            return;
        }
        h1(new WishlistTrackingUiModel.SwipeToDeleteEvent(str2, null));
        BuildersKt.c(ViewModelKt.a(this), null, null, new WishlistViewModelImpl$onItemExpanded$1(this, str, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.wishlist.WishlistViewModel
    public final void D8(String str) {
        boolean zC;
        str.getClass();
        MutableStateFlow mutableStateFlow = this.w;
        WishlistIdUiModel wishlistIdUiModel = (WishlistIdUiModel) mutableStateFlow.getValue();
        String str2 = wishlistIdUiModel != null ? wishlistIdUiModel.f65738b : null;
        if (str2 == null) {
            zC = false;
        } else {
            WishlistIdUiModel.Companion companion = WishlistIdUiModel.f65737c;
            zC = Intrinsics.c(str2, str);
        }
        if (zC) {
            mutableStateFlow.setValue(null);
        }
    }

    @Override // com.vuitton.android.presentation.screen.wishlist.WishlistViewModel
    public final void E3() {
        zc(null);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object E5(Continuation continuation) {
        return this.o.E5(continuation);
    }

    @Override // com.vuitton.android.presentation.screen.wishlist.WishlistViewModel
    public final boolean F() {
        Boolean boolC = this.f65622h.f50405a.c();
        Result.Companion companion = Result.INSTANCE;
        boolean zBooleanValue = boolC.booleanValue();
        this.x.setValue(boolC);
        if (!zBooleanValue) {
            this.f65623i.a();
        }
        return zBooleanValue;
    }

    @Override // com.vuitton.android.presentation.screen.wishlist.WishlistViewModel
    public final void G() {
        this.f65623i.a();
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void I(ChatProductModel chatProductModel, int i2) {
        chatProductModel.getClass();
        this.o.I(chatProductModel, i2);
    }

    @Override // com.vuitton.android.presentation.screen.wishlist.WishlistViewModel
    public final void K9(String str) {
        str.getClass();
        h1(new WishlistTrackingUiModel.ConfirmDeleteEvent(str, null));
        BuildersKt.c(ViewModelKt.a(this), null, null, new WishlistViewModelImpl$deleteProduct$1(this, str, null), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object M1(ContactUsOrigin contactUsOrigin, Continuation continuation) {
        return this.o.M1(contactUsOrigin, continuation);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void Q0() {
        this.o.Q0();
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final Object S0(Continuation continuation) {
        return this.o.S0(continuation);
    }

    @Override // com.vuitton.android.presentation.screen.wishlist.WishlistViewModel
    public final Flow W7() {
        return FlowKt.a(this.r);
    }

    @Override // com.vuitton.android.presentation.screen.wishlist.WishlistViewModel
    public final void X4(String str, String str2) {
        str.getClass();
        str2.getClass();
        if (!Pattern.compile("^[_A-Za-z0-9-+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$").matcher(str2).matches()) {
            Ac(R.string.mylv_accountcreation_pleaseenteravalidemailaddress);
            return;
        }
        if (StringsKt.w(str)) {
            Ac(R.string.error_missing_fields);
            return;
        }
        h1(WishlistTrackingUiModel.ShareWishlistEvent.f65749a);
        Profile profile = this.D;
        if (profile != null) {
            BuildersKt.c(ViewModelKt.a(this), null, null, new WishlistViewModelImpl$shareWishlist$1$1(this, profile.f68166c, str, str2, null), 3);
        }
    }

    @Override // com.vuitton.android.presentation.screen.wishlist.WishlistViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getC() {
        return this.C;
    }

    @Override // com.vuitton.android.presentation.screen.wishlist.WishlistViewModel
    public final Flow b() {
        return FlowKt.y(this.B);
    }

    @Override // com.vuitton.android.presentation.screen.wishlist.WishlistViewModel
    public final void c() {
        this.o.Q0();
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final void f8(ContactUsMode contactUsMode) {
        contactUsMode.getClass();
        this.o.f8(contactUsMode);
    }

    @Override // com.vuitton.android.presentation.screen.wishlist.WishlistViewModel
    public final void h1(WishlistTrackingUiModel wishlistTrackingUiModel) {
        Hit defaultEventHit;
        if (wishlistTrackingUiModel.equals(WishlistTrackingUiModel.WishlistScreen.f65753a)) {
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/MyLV/Dashboard/MyWishlists", "mylv/my_wishlist", "mylv", null, 17, null);
        } else if (wishlistTrackingUiModel instanceof WishlistTrackingUiModel.WishlistSharedScreen) {
            List list = ((WishlistTrackingUiModel.WishlistSharedScreen) wishlistTrackingUiModel).f65754a;
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/MyLV/Dashboard/MyWishlists", null, "shared_wishlist", CollectionsKt.P(new AdditionalProperty.ProductSku(list), new AdditionalProperty.Quantity(String.valueOf(list.size()))), 1, null);
        } else if (wishlistTrackingUiModel.equals(WishlistTrackingUiModel.ShareWishlistEvent.f65749a)) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Dashboard/MyWishlists", "share_intention", "MyLV", "my_wishlist", null, null, 97, null);
        } else if (wishlistTrackingUiModel instanceof WishlistTrackingUiModel.SwipeToDeleteEvent) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Dashboard/MyWishlists", "delete_intention", "MyLV", "my_wishlist", null, CollectionsKt.O(new AdditionalProperty.ProductSku(cj.q(SkuIdUiModel.f61763c, ((WishlistTrackingUiModel.SwipeToDeleteEvent) wishlistTrackingUiModel).f65752a))), 33, null);
        } else if (wishlistTrackingUiModel instanceof WishlistTrackingUiModel.ConfirmDeleteEvent) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Dashboard/MyWishlists", "delete_confirmation", "MyLV", "my_wishlist", null, CollectionsKt.O(new AdditionalProperty.ProductSku(cj.q(SkuIdUiModel.f61763c, ((WishlistTrackingUiModel.ConfirmDeleteEvent) wishlistTrackingUiModel).f65747a))), 33, null);
        } else if (wishlistTrackingUiModel instanceof WishlistTrackingUiModel.SharedWishlistProductClickEvent) {
            String str = ((WishlistTrackingUiModel.SharedWishlistProductClickEvent) wishlistTrackingUiModel).f65751a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Dashboard/MyWishlists", str, "shared_wishlist", "product_selection", null, null, 97, null);
        } else if (wishlistTrackingUiModel.equals(WishlistTrackingUiModel.OpenMyLVEvent.f65748a)) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "wishlist", "open_myLV", "wishlist", "click", "my_wishlist", null, 65, null);
        } else {
            if (!wishlistTrackingUiModel.equals(WishlistTrackingUiModel.ShareWishlistSuccessEvent.f65750a)) {
                v40.g();
                return;
            }
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/MyLV/Dashboard/MyWishlists", "Share", "MyLV", "social", null, null, 97, null);
        }
        this.f65620e.a(defaultEventHit);
    }

    @Override // com.vuitton.android.presentation.screen.wishlist.WishlistViewModel
    public final Flow hc() {
        return FlowKt.y(this.s);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Flow i() {
        return this.o.i();
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final void m4(StringResourceUiModel stringResourceUiModel) {
        this.o.m4(stringResourceUiModel);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void r(ChatProductModel chatProductModel) {
        chatProductModel.getClass();
        this.o.r(chatProductModel);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void s() {
        this.o.s();
    }

    @Override // com.vuitton.android.presentation.screen.wishlist.WishlistViewModel
    public final void ub(ArrayList arrayList) {
        DynatraceMonitorAction dynatraceMonitorActionA = this.f65619c.a(this.p, WishlistMonitoring.Action.OpenWishlist.f49000a);
        if (arrayList != null) {
            BuildersKt.c(ViewModelKt.a(this), null, null, new WishlistViewModelImpl$getSharedWishList$1(dynatraceMonitorActionA, this, arrayList, null), 3);
        } else {
            Object objE = this.m.f50391a.e();
            Result.Companion companion = Result.INSTANCE;
            if (!(objE instanceof Result.Failure)) {
                this.y.setValue((String) objE);
            }
            zc(dynatraceMonitorActionA);
            BuildersKt.c(ViewModelKt.a(this), null, null, new WishlistViewModelImpl$retrieveProfile$1(null, this), 3);
        }
        BuildersKt.c(ViewModelKt.a(this), null, null, new WishlistViewModelImpl$load$1(null, this), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void v(String str, String str2) {
        this.o.v(str, str2);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object vc(Continuation continuation) {
        return this.o.vc(continuation);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void x(ChatProductModel chatProductModel, int i2) {
        chatProductModel.getClass();
        this.o.x(chatProductModel, i2);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void z() {
        this.o.z();
    }

    @Override // com.vuitton.android.presentation.screen.wishlist.WishlistViewModel
    public final void z2() {
        String str;
        WishlistUiModel wishlistUiModel = (WishlistUiModel) this.v.getValue();
        if (wishlistUiModel == null || (str = wishlistUiModel.f65756b) == null) {
            return;
        }
        Application application = this.f65617a;
        String string = application.getString(R.string.mylv_mywishlists_nativeshare_title);
        string.getClass();
        String string2 = application.getString(R.string.mylv_mywishlists_nativeshare_subtitle);
        string2.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new WishlistViewModelImpl$nativeShareWishlist$1$1(this, string2, str, string, null), 3);
    }

    public final void zc(MonitorAction monitorAction) {
        BuildersKt.c(ViewModelKt.a(this), null, null, new WishlistViewModelImpl$getWishlist$1(this, monitorAction, null), 3);
    }
}
