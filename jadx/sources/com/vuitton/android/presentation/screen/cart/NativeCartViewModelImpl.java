package com.vuitton.android.presentation.screen.cart;

import android.os.Parcelable;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.vuitton.android.R;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.service.authentication.UserSessionService;
import com.vuitton.android.domain.usecase.cart.AddGiftMessageUseCase;
import com.vuitton.android.domain.usecase.cart.ChooseSamplesUseCase;
import com.vuitton.android.domain.usecase.cart.GetCartContributionUseCase;
import com.vuitton.android.domain.usecase.cart.GetCartFullUseCase;
import com.vuitton.android.domain.usecase.cart.GetCheckoutUrlUseCase;
import com.vuitton.android.domain.usecase.cart.PutPrepareOrderUseCase;
import com.vuitton.android.domain.usecase.cart.RemoveCartItemUseCase;
import com.vuitton.android.domain.usecase.cart.ResetCartContainerUseCase;
import com.vuitton.android.domain.usecase.cart.UpdateCartItemQuantityUseCase;
import com.vuitton.android.domain.usecase.cart.UpdateShoppingBagUseCase;
import com.vuitton.android.domain.usecase.config.GetNativeCartCommercialModalContentUseCase;
import com.vuitton.android.domain.usecase.config.GetNativeCartCommercialModalTitleUseCase;
import com.vuitton.android.domain.usecase.config.GetNativeCartCommercialTextUseCase;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.config.RequireCachedAppConfigUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.ReportDYAddToCartEventUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.ReportDYAddToWishlistEventUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.ReportDYRemoveFromCartEventUseCase;
import com.vuitton.android.domain.usecase.wishlist.AddProductToWishlistUseCase;
import com.vuitton.android.domain.usecase.wishlist.IsProductInWishlistUseCase;
import com.vuitton.android.presentation.contact.ContactUsDelegate;
import com.vuitton.android.presentation.contact.ContactUsMode;
import com.vuitton.android.presentation.contact.models.ContactUsOrigin;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.notification.NotificationUiModel;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.appsflyer.AppsFlyerTracker;
import com.vuitton.android.presentation.screen.cart.components.giftmessage.CardItemUiModel;
import com.vuitton.android.presentation.screen.cart.models.CartContributionUiModel;
import com.vuitton.android.presentation.screen.cart.models.CartItemIdUiModel;
import com.vuitton.android.presentation.screen.cart.models.CartItemUiModel;
import com.vuitton.android.presentation.screen.cart.models.CartTrackingUiModel;
import com.vuitton.android.presentation.screen.cart.models.CartTrackingUiModelKt;
import com.vuitton.android.presentation.screen.cart.models.CartUiModel;
import com.vuitton.android.presentation.screen.cart.models.ContributionGiftingUiModel;
import com.vuitton.android.presentation.screen.cart.models.NativeCartFeatureFlags;
import com.vuitton.android.presentation.screen.cart.models.NativeCartViewState;
import com.vuitton.android.presentation.screen.cart.models.PerfumeSampleState;
import com.vuitton.android.presentation.screen.cart.models.PerfumeSampleUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.error.cart.CartError;
import com.vuitton.foundation.model.domain.error.cart.MaxQuantityReached;
import com.vuitton.foundation.model.domain.error.cart.MaxSkuQuantityReached;
import com.vuitton.foundation.model.domain.error.cart.OutOfStockError;
import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.cart.Cart;
import com.vuitton.foundation.model.domain.model.cart.GiftOption;
import com.vuitton.foundation.model.domain.model.chat.ChatProductModel;
import com.vuitton.foundation.model.domain.model.chat.ScreenType;
import com.vuitton.foundation.model.domain.model.config.NativeCartConfig;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import defpackage.md;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.collections.immutable.ExtensionsKt;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelKt;
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
@Metadata(d1 = {"\u0000¼\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003Bñ\u0001\b\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0010\u001a\u00020\u0003\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010$\u001a\u00020#\u0012\u0006\u0010&\u001a\u00020%\u0012\u0006\u0010(\u001a\u00020'\u0012\u0006\u0010*\u001a\u00020)\u0012\u0006\u0010,\u001a\u00020+\u0012\u0006\u0010.\u001a\u00020-\u0012\u0006\u00100\u001a\u00020/\u0012\u0006\u00102\u001a\u000201\u0012\u0006\u00104\u001a\u000203\u0012\u0006\u00106\u001a\u000205\u0012\u0006\u00108\u001a\u000207\u0012\u0006\u0010:\u001a\u000209\u0012\u0006\u0010<\u001a\u00020;¢\u0006\u0004\b=\u0010>¨\u0006?"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;", "Lcom/vuitton/android/presentation/contact/ContactUsDelegate;", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/domain/monitoring/Monitor;", "monitor", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/core/events/LVEventSender;", "eventSender", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;", "appsFlyerTracker", "contactUsDelegate", "Lcom/vuitton/android/domain/service/authentication/UserSessionService;", "userSessionService", "Lcom/vuitton/android/presentation/notification/NotificationBuilder;", "notificationBuilder", "Lcom/vuitton/android/domain/usecase/cart/GetCartFullUseCase;", "getCartFullUseCase", "Lcom/vuitton/android/domain/usecase/cart/ChooseSamplesUseCase;", "chooseSamplesUseCase", "Lcom/vuitton/android/domain/usecase/cart/AddGiftMessageUseCase;", "addGiftMessageUseCase", "Lcom/vuitton/android/domain/usecase/cart/RemoveCartItemUseCase;", "removeCartItemUseCase", "Lcom/vuitton/android/domain/usecase/cart/GetCheckoutUrlUseCase;", "getCheckoutUrlUseCase", "Lcom/vuitton/android/domain/usecase/cart/PutPrepareOrderUseCase;", "putPrepareOrderUseCase", "Lcom/vuitton/android/domain/usecase/cart/UpdateShoppingBagUseCase;", "updateShoppingBagUseCase", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/usecase/cart/ResetCartContainerUseCase;", "resetCartContainerUseCase", "Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;", "isProductInWishlistUseCase", "Lcom/vuitton/android/domain/usecase/cart/GetCartContributionUseCase;", "getCartContributionUseCase", "Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;", "addProductToWishlistUseCase", "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;", "requireCachedAppConfigUseCase", "Lcom/vuitton/android/domain/usecase/cart/UpdateCartItemQuantityUseCase;", "updateCartItemQuantityUseCase", "Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToCartEventUseCase;", "reportDYAddToCartEventUseCase", "Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;", "reportDYAddToWishlistEventUseCase", "Lcom/vuitton/android/domain/usecase/config/GetNativeCartCommercialTextUseCase;", "getNativeCartCommercialTextUseCase", "Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYRemoveFromCartEventUseCase;", "reportDYRemoveFromCartEventUseCase", "Lcom/vuitton/android/domain/usecase/config/GetNativeCartCommercialModalTitleUseCase;", "getNativeCartCommercialModalTitleUseCase", "Lcom/vuitton/android/domain/usecase/config/GetNativeCartCommercialModalContentUseCase;", "getNativeCartCommercialModalContentUseCase", "<init>", "(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/cart/GetCartFullUseCase;Lcom/vuitton/android/domain/usecase/cart/ChooseSamplesUseCase;Lcom/vuitton/android/domain/usecase/cart/AddGiftMessageUseCase;Lcom/vuitton/android/domain/usecase/cart/RemoveCartItemUseCase;Lcom/vuitton/android/domain/usecase/cart/GetCheckoutUrlUseCase;Lcom/vuitton/android/domain/usecase/cart/PutPrepareOrderUseCase;Lcom/vuitton/android/domain/usecase/cart/UpdateShoppingBagUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/cart/ResetCartContainerUseCase;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;Lcom/vuitton/android/domain/usecase/cart/GetCartContributionUseCase;Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/cart/UpdateCartItemQuantityUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToCartEventUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;Lcom/vuitton/android/domain/usecase/config/GetNativeCartCommercialTextUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYRemoveFromCartEventUseCase;Lcom/vuitton/android/domain/usecase/config/GetNativeCartCommercialModalTitleUseCase;Lcom/vuitton/android/domain/usecase/config/GetNativeCartCommercialModalContentUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class NativeCartViewModelImpl extends ViewModel implements NativeCartViewModel, ContactUsDelegate {
    public final InAppDispatch A;
    public final BufferedChannel B;
    public final SharedFlowImpl C;
    public final BufferedChannel D;
    public final SharedFlowImpl E;
    public final SharedFlow F;
    public final SharedFlowImpl G;
    public int H;
    public boolean I;
    public final long J;
    public final MutableStateFlow K;
    public final MutableStateFlow L;
    public final MutableStateFlow M;
    public final MutableStateFlow N;
    public final MutableStateFlow O;
    public final MutableStateFlow P;
    public final MutableStateFlow Q;
    public final MutableStateFlow R;
    public final MutableStateFlow S;
    public final MutableStateFlow T;
    public final MutableStateFlow U;
    public final MutableStateFlow V;
    public final MutableStateFlow W;
    public final BufferedChannel X;
    public final MutableStateFlow Y;
    public final StateFlow Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f54871a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Monitor f54872b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AnalyticsTracker f54873c;
    public final LVEventSender d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppsFlyerTracker f54874e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ContactUsDelegate f54875f;
    public final UserSessionService g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final NotificationBuilder f54876h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final GetCartFullUseCase f54877i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ChooseSamplesUseCase f54878j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AddGiftMessageUseCase f54879k;
    public final RemoveCartItemUseCase l;
    public final GetCheckoutUrlUseCase m;
    public final PutPrepareOrderUseCase n;
    public final UpdateShoppingBagUseCase o;
    public final IsFeatureAvailableUseCase p;
    public final ResetCartContainerUseCase q;
    public final IsProductInWishlistUseCase r;
    public final GetCartContributionUseCase s;
    public final AddProductToWishlistUseCase t;
    public final RequireCachedAppConfigUseCase u;
    public final UpdateCartItemQuantityUseCase v;
    public final ReportDYAddToCartEventUseCase w;
    public final ReportDYAddToWishlistEventUseCase x;
    public final ReportDYRemoveFromCartEventUseCase y;
    public final CloseableCoroutineScope z;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl$1", f = "NativeCartViewModelImpl.kt", l = {260}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f54880b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ NativeCartViewModelImpl f54881c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Continuation continuation, NativeCartViewModelImpl nativeCartViewModelImpl) {
            super(2, continuation);
            this.f54881c = nativeCartViewModelImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(continuation, this.f54881c);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f54880b;
            if (i2 == 0) {
                ResultKt.b(obj);
                this.f54880b = 1;
                if (NativeCartViewModelImpl.Ac(this.f54881c, this) == coroutineSingletons) {
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

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl$2", f = "NativeCartViewModelImpl.kt", l = {265}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f54882b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ NativeCartViewModelImpl f54883c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(Continuation continuation, NativeCartViewModelImpl nativeCartViewModelImpl) {
            super(2, continuation);
            this.f54883c = nativeCartViewModelImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass2(continuation, this.f54883c);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            ContactUsDelegate contactUsDelegate = this.f54883c.f54875f;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f54882b;
            if (i2 == 0) {
                ResultKt.b(obj);
                contactUsDelegate.f8(ContactUsMode.DEFAULT);
                this.f54882b = 1;
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
    public NativeCartViewModelImpl(RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, Logger logger, Monitor monitor, AnalyticsTracker analyticsTracker, LVEventSender lVEventSender, AppsFlyerTracker appsFlyerTracker, ContactUsDelegate contactUsDelegate, UserSessionService userSessionService, NotificationBuilder notificationBuilder, GetCartFullUseCase getCartFullUseCase, ChooseSamplesUseCase chooseSamplesUseCase, AddGiftMessageUseCase addGiftMessageUseCase, RemoveCartItemUseCase removeCartItemUseCase, GetCheckoutUrlUseCase getCheckoutUrlUseCase, PutPrepareOrderUseCase putPrepareOrderUseCase, UpdateShoppingBagUseCase updateShoppingBagUseCase, IsFeatureAvailableUseCase isFeatureAvailableUseCase, ResetCartContainerUseCase resetCartContainerUseCase, IsProductInWishlistUseCase isProductInWishlistUseCase, GetCartContributionUseCase getCartContributionUseCase, AddProductToWishlistUseCase addProductToWishlistUseCase, RequireCachedAppConfigUseCase requireCachedAppConfigUseCase, UpdateCartItemQuantityUseCase updateCartItemQuantityUseCase, ReportDYAddToCartEventUseCase reportDYAddToCartEventUseCase, ReportDYAddToWishlistEventUseCase reportDYAddToWishlistEventUseCase, GetNativeCartCommercialTextUseCase getNativeCartCommercialTextUseCase, ReportDYRemoveFromCartEventUseCase reportDYRemoveFromCartEventUseCase, GetNativeCartCommercialModalTitleUseCase getNativeCartCommercialModalTitleUseCase, GetNativeCartCommercialModalContentUseCase getNativeCartCommercialModalContentUseCase) {
        NativeCartConfig.CommercialNotification commercialNotification;
        NativeCartConfig.CommercialNotification commercialNotification2;
        NativeCartConfig.CommercialNotification commercialNotification3;
        requireUserInAppDispatchUseCase.getClass();
        logger.getClass();
        monitor.getClass();
        analyticsTracker.getClass();
        lVEventSender.getClass();
        appsFlyerTracker.getClass();
        contactUsDelegate.getClass();
        userSessionService.getClass();
        notificationBuilder.getClass();
        getCartFullUseCase.getClass();
        chooseSamplesUseCase.getClass();
        addGiftMessageUseCase.getClass();
        removeCartItemUseCase.getClass();
        getCheckoutUrlUseCase.getClass();
        putPrepareOrderUseCase.getClass();
        updateShoppingBagUseCase.getClass();
        isFeatureAvailableUseCase.getClass();
        resetCartContainerUseCase.getClass();
        isProductInWishlistUseCase.getClass();
        getCartContributionUseCase.getClass();
        addProductToWishlistUseCase.getClass();
        requireCachedAppConfigUseCase.getClass();
        updateCartItemQuantityUseCase.getClass();
        reportDYAddToCartEventUseCase.getClass();
        reportDYAddToWishlistEventUseCase.getClass();
        getNativeCartCommercialTextUseCase.getClass();
        reportDYRemoveFromCartEventUseCase.getClass();
        getNativeCartCommercialModalTitleUseCase.getClass();
        getNativeCartCommercialModalContentUseCase.getClass();
        this.f54871a = logger;
        this.f54872b = monitor;
        this.f54873c = analyticsTracker;
        this.d = lVEventSender;
        this.f54874e = appsFlyerTracker;
        this.f54875f = contactUsDelegate;
        this.g = userSessionService;
        this.f54876h = notificationBuilder;
        this.f54877i = getCartFullUseCase;
        this.f54878j = chooseSamplesUseCase;
        this.f54879k = addGiftMessageUseCase;
        this.l = removeCartItemUseCase;
        this.m = getCheckoutUrlUseCase;
        this.n = putPrepareOrderUseCase;
        this.o = updateShoppingBagUseCase;
        this.p = isFeatureAvailableUseCase;
        this.q = resetCartContainerUseCase;
        this.r = isProductInWishlistUseCase;
        this.s = getCartContributionUseCase;
        this.t = addProductToWishlistUseCase;
        this.u = requireCachedAppConfigUseCase;
        this.v = updateCartItemQuantityUseCase;
        this.w = reportDYAddToCartEventUseCase;
        this.x = reportDYAddToWishlistEventUseCase;
        this.y = reportDYRemoveFromCartEventUseCase;
        this.z = ViewModelKt.a(this);
        this.A = requireUserInAppDispatchUseCase.f49912a.b();
        this.B = ChannelKt.a(0, 7, null);
        this.C = SharedFlowKt.b(0, 0, null, 7);
        this.D = ChannelKt.a(0, 7, null);
        SharedFlowImpl sharedFlowImplB = SharedFlowKt.b(0, 1, null, 4);
        this.E = sharedFlowImplB;
        this.F = FlowKt.a(sharedFlowImplB);
        this.G = SharedFlowKt.b(0, 0, null, 7);
        this.J = 300L;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(null);
        this.K = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(null);
        this.L = mutableStateFlowA2;
        Boolean bool = Boolean.FALSE;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(bool);
        this.M = mutableStateFlowA3;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(bool);
        this.N = mutableStateFlowA4;
        MutableStateFlow mutableStateFlowA5 = StateFlowKt.a(bool);
        this.O = mutableStateFlowA5;
        MutableStateFlow mutableStateFlowA6 = StateFlowKt.a(bool);
        this.P = mutableStateFlowA6;
        MutableStateFlow mutableStateFlowA7 = StateFlowKt.a(null);
        this.Q = mutableStateFlowA7;
        MutableStateFlow mutableStateFlowA8 = StateFlowKt.a(new NativeCartFeatureFlags(false, false, false, 7, null));
        this.R = mutableStateFlowA8;
        MutableStateFlow mutableStateFlowA9 = StateFlowKt.a(new ArrayList());
        this.S = mutableStateFlowA9;
        MutableStateFlow mutableStateFlowA10 = StateFlowKt.a(null);
        this.T = mutableStateFlowA10;
        this.U = StateFlowKt.a(null);
        EmptyList emptyList = EmptyList.f71768b;
        MutableStateFlow mutableStateFlowA11 = StateFlowKt.a(emptyList);
        this.V = mutableStateFlowA11;
        MutableStateFlow mutableStateFlowA12 = StateFlowKt.a(emptyList);
        this.W = mutableStateFlowA12;
        this.X = ChannelKt.a(0, 7, null);
        MutableStateFlow mutableStateFlowA13 = StateFlowKt.a(null);
        this.Y = mutableStateFlowA13;
        final Flow[] flowArr = {mutableStateFlowA, mutableStateFlowA2, mutableStateFlowA5, mutableStateFlowA3, mutableStateFlowA6, mutableStateFlowA7, mutableStateFlowA8, mutableStateFlowA9, mutableStateFlowA10, mutableStateFlowA11, mutableStateFlowA12, contactUsDelegate.i(), mutableStateFlowA13, mutableStateFlowA4};
        Flow<NativeCartViewState> flow = new Flow<NativeCartViewState>() { // from class: com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl$special$$inlined$combine$1$3", f = "NativeCartViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super NativeCartViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f54952b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f54953c;
                public /* synthetic */ Object[] d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ NativeCartViewModelImpl f54954e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass3(Continuation continuation, NativeCartViewModelImpl nativeCartViewModelImpl) {
                    super(3, continuation);
                    this.f54954e = nativeCartViewModelImpl;
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3, this.f54954e);
                    anonymousClass3.f54953c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    GiftOption giftOption;
                    boolean z;
                    CartUiModel cartUiModel;
                    List listO;
                    ContributionGiftingUiModel contributionGiftingUiModel;
                    FlowCollector flowCollector = this.f54953c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f54952b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        CartUiModel cartUiModel2 = (CartUiModel) objArr[0];
                        List list = (List) objArr[1];
                        Object obj2 = objArr[2];
                        obj2.getClass();
                        boolean zBooleanValue = ((Boolean) obj2).booleanValue();
                        Object obj3 = objArr[3];
                        obj3.getClass();
                        boolean zBooleanValue2 = ((Boolean) obj3).booleanValue();
                        Object obj4 = objArr[4];
                        obj4.getClass();
                        boolean zBooleanValue3 = ((Boolean) obj4).booleanValue();
                        Pair pair = (Pair) objArr[5];
                        Object obj5 = objArr[6];
                        obj5.getClass();
                        NativeCartFeatureFlags nativeCartFeatureFlags = (NativeCartFeatureFlags) obj5;
                        Object obj6 = objArr[7];
                        obj6.getClass();
                        ArrayList arrayList = (ArrayList) obj6;
                        CartItemIdUiModel cartItemIdUiModel = (CartItemIdUiModel) objArr[8];
                        String str = cartItemIdUiModel != null ? cartItemIdUiModel.f55143b : null;
                        Object obj7 = objArr[9];
                        obj7.getClass();
                        Object obj8 = objArr[10];
                        obj8.getClass();
                        Object obj9 = objArr[11];
                        obj9.getClass();
                        ContactUsUiModel contactUsUiModel = (ContactUsUiModel) obj9;
                        CartContributionUiModel cartContributionUiModel = (CartContributionUiModel) objArr[12];
                        Object obj10 = objArr[13];
                        obj10.getClass();
                        boolean zBooleanValue4 = ((Boolean) obj10).booleanValue();
                        ImmutableList immutableListA = ExtensionsKt.a((List) obj7);
                        ImmutableList immutableListA2 = ExtensionsKt.a((List) obj8);
                        NativeCartViewModelImpl nativeCartViewModelImpl = this.f54954e;
                        CartUiModel cartUiModel3 = (CartUiModel) nativeCartViewModelImpl.K.getValue();
                        GiftOption.None none = GiftOption.None.f66980a;
                        if (cartUiModel3 == null || (giftOption = cartUiModel3.f55184e) == null) {
                            giftOption = none;
                        }
                        CartContributionUiModel cartContributionUiModel2 = (CartContributionUiModel) nativeCartViewModelImpl.Y.getValue();
                        String str2 = (cartContributionUiModel2 == null || (contributionGiftingUiModel = cartContributionUiModel2.f55136a) == null) ? null : contributionGiftingUiModel.f55188a;
                        if (str2 == null) {
                            str2 = null;
                        }
                        if (giftOption instanceof GiftOption.Message) {
                            z = zBooleanValue4;
                            cartUiModel = cartUiModel2;
                            listO = CollectionsKt.O(new CardItemUiModel(new StringResourceUiModel.ResId(R.string.cart_gifting_card_your_message_option, null, 2, null), new StringResourceUiModel.Text(((GiftOption.Message) giftOption).f66978b), str2, null));
                        } else {
                            z = zBooleanValue4;
                            cartUiModel = cartUiModel2;
                            if (giftOption instanceof GiftOption.Blank) {
                                listO = CollectionsKt.O(new CardItemUiModel(new StringResourceUiModel.ResId(R.string.cart_gifting_card_blank_card_option, null, 2, null), new StringResourceUiModel.ResId(R.string.cart_gifting_card_blank_card_selected_label, null, 2, null), str2, null));
                            } else {
                                if (!giftOption.equals(none)) {
                                    v40.g();
                                    return null;
                                }
                                listO = EmptyList.f71768b;
                            }
                        }
                        NativeCartViewState nativeCartViewState = new NativeCartViewState(cartUiModel, list, str, zBooleanValue2, z, zBooleanValue, zBooleanValue3, pair, nativeCartFeatureFlags, arrayList, immutableListA, immutableListA2, false, contactUsUiModel, cartContributionUiModel, listO, 4096, null);
                        this.f54953c = null;
                        this.d = null;
                        this.f54952b = 1;
                        if (flowCollector.emit(nativeCartViewState, this) == coroutineSingletons) {
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
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl$special$$inlined$combine$1.2
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
        this.Z = FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new NativeCartViewState(null, null, null, true, false, false, false, null, null, null, null, null, false, null, null, null, 65527, null));
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass1(null, this), 3);
        NativeCartConfig nativeCartConfig = getNativeCartCommercialTextUseCase.f49683a.a().F;
        String str = (nativeCartConfig == null || (commercialNotification3 = nativeCartConfig.f67265a) == null) ? null : commercialNotification3.f67267a;
        if (str != null) {
            str = StringsKt.w(str) ? null : str;
            if (str != null) {
                NativeCartConfig nativeCartConfig2 = getNativeCartCommercialModalTitleUseCase.f49682a.a().F;
                String str2 = (nativeCartConfig2 == null || (commercialNotification2 = nativeCartConfig2.f67265a) == null) ? null : commercialNotification2.f67268b;
                NativeCartConfig nativeCartConfig3 = getNativeCartCommercialModalContentUseCase.f49681a.a().F;
                Cc(new CommercialNotification(str, str2, (nativeCartConfig3 == null || (commercialNotification = nativeCartConfig3.f67265a) == null) ? null : commercialNotification.f67269c));
            }
        }
        BuildersKt.c(ViewModelKt.a(this), null, null, new NativeCartViewModelImpl$resetCartContainer$1(null, this), 3);
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass2(null, this), 3);
        BuildersKt.c(ViewModelKt.a(this), null, null, new NativeCartViewModelImpl$getCartContribution$1(null, this), 3);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    public static final Object Ac(NativeCartViewModelImpl nativeCartViewModelImpl, ContinuationImpl continuationImpl) {
        NativeCartViewModelImpl$retrieveFeatureFlags$1 nativeCartViewModelImpl$retrieveFeatureFlags$1;
        MutableStateFlow mutableStateFlow;
        boolean z;
        boolean z2;
        RequireCachedAppConfigUseCase requireCachedAppConfigUseCase = nativeCartViewModelImpl.u;
        if (continuationImpl instanceof NativeCartViewModelImpl$retrieveFeatureFlags$1) {
            nativeCartViewModelImpl$retrieveFeatureFlags$1 = (NativeCartViewModelImpl$retrieveFeatureFlags$1) continuationImpl;
            int i2 = nativeCartViewModelImpl$retrieveFeatureFlags$1.g;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                nativeCartViewModelImpl$retrieveFeatureFlags$1.g = i2 - Integer.MIN_VALUE;
            } else {
                nativeCartViewModelImpl$retrieveFeatureFlags$1 = new NativeCartViewModelImpl$retrieveFeatureFlags$1(nativeCartViewModelImpl, continuationImpl);
            }
        } else {
            nativeCartViewModelImpl$retrieveFeatureFlags$1 = new NativeCartViewModelImpl$retrieveFeatureFlags$1(nativeCartViewModelImpl, continuationImpl);
        }
        Object obj = nativeCartViewModelImpl$retrieveFeatureFlags$1.f54937e;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = nativeCartViewModelImpl$retrieveFeatureFlags$1.g;
        if (i3 == 0) {
            ResultKt.b(obj);
            MutableStateFlow mutableStateFlow2 = nativeCartViewModelImpl.R;
            boolean z3 = requireCachedAppConfigUseCase.a().a0.f67283b;
            boolean z4 = requireCachedAppConfigUseCase.a().a0.f67282a;
            IsFeatureAvailableUseCase isFeatureAvailableUseCase = nativeCartViewModelImpl.p;
            Feature[] featureArr = {Feature.REFRESH_AUTH_CHECKOUT};
            nativeCartViewModelImpl$retrieveFeatureFlags$1.f54935b = mutableStateFlow2;
            nativeCartViewModelImpl$retrieveFeatureFlags$1.f54936c = z3;
            nativeCartViewModelImpl$retrieveFeatureFlags$1.d = z4;
            nativeCartViewModelImpl$retrieveFeatureFlags$1.g = 1;
            Object objC = isFeatureAvailableUseCase.c(featureArr, false, nativeCartViewModelImpl$retrieveFeatureFlags$1);
            if (objC == coroutineSingletons) {
                return coroutineSingletons;
            }
            mutableStateFlow = mutableStateFlow2;
            obj = objC;
            z = z4;
            z2 = z3;
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            z = nativeCartViewModelImpl$retrieveFeatureFlags$1.d;
            z2 = nativeCartViewModelImpl$retrieveFeatureFlags$1.f54936c;
            mutableStateFlow = (MutableStateFlow) nativeCartViewModelImpl$retrieveFeatureFlags$1.f54935b;
            ResultKt.b(obj);
        }
        mutableStateFlow.setValue(new NativeCartFeatureFlags(z2, z, ((Boolean) obj).booleanValue()));
        return Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object Bc(NativeCartViewModelImpl nativeCartViewModelImpl, CartItemUiModel cartItemUiModel, boolean z, ContinuationImpl continuationImpl) {
        NativeCartViewModelImpl$updateCartItemVisibility$1 nativeCartViewModelImpl$updateCartItemVisibility$1;
        List list;
        CartItemUiModel cartItemUiModel2;
        CartItemUiModel cartItemUiModel3;
        if (continuationImpl instanceof NativeCartViewModelImpl$updateCartItemVisibility$1) {
            nativeCartViewModelImpl$updateCartItemVisibility$1 = (NativeCartViewModelImpl$updateCartItemVisibility$1) continuationImpl;
            int i2 = nativeCartViewModelImpl$updateCartItemVisibility$1.g;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                nativeCartViewModelImpl$updateCartItemVisibility$1.g = i2 - Integer.MIN_VALUE;
            } else {
                nativeCartViewModelImpl$updateCartItemVisibility$1 = new NativeCartViewModelImpl$updateCartItemVisibility$1(nativeCartViewModelImpl, continuationImpl);
            }
        } else {
            nativeCartViewModelImpl$updateCartItemVisibility$1 = new NativeCartViewModelImpl$updateCartItemVisibility$1(nativeCartViewModelImpl, continuationImpl);
        }
        Object obj = nativeCartViewModelImpl$updateCartItemVisibility$1.f54967e;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = nativeCartViewModelImpl$updateCartItemVisibility$1.g;
        Object obj2 = null;
        if (i3 == 0) {
            ResultKt.b(obj);
            CartUiModel cartUiModel = (CartUiModel) nativeCartViewModelImpl.K.getValue();
            if (cartUiModel != null && (list = cartUiModel.f55183c) != null) {
                for (Object obj3 : list) {
                    if (Intrinsics.c(((CartItemUiModel) obj3).f55151j, cartItemUiModel.f55151j)) {
                        obj2 = obj3;
                        break;
                    }
                }
                CartItemUiModel cartItemUiModel4 = (CartItemUiModel) obj2;
                if (cartItemUiModel4 != null) {
                    IsProductInWishlistUseCase isProductInWishlistUseCase = nativeCartViewModelImpl.r;
                    SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
                    String str = cartItemUiModel.f55144a;
                    companion.getClass();
                    SkuIdUiModel.Companion.b(str);
                    nativeCartViewModelImpl$updateCartItemVisibility$1.f54965b = cartItemUiModel4;
                    nativeCartViewModelImpl$updateCartItemVisibility$1.f54966c = cartItemUiModel4;
                    nativeCartViewModelImpl$updateCartItemVisibility$1.d = z;
                    nativeCartViewModelImpl$updateCartItemVisibility$1.g = 1;
                    Object objA = isProductInWishlistUseCase.a(str, nativeCartViewModelImpl$updateCartItemVisibility$1);
                    if (objA == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                    cartItemUiModel2 = cartItemUiModel4;
                    obj = objA;
                    cartItemUiModel3 = cartItemUiModel2;
                }
            }
            return Unit.f71739a;
        }
        if (i3 != 1) {
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        z = nativeCartViewModelImpl$updateCartItemVisibility$1.d;
        cartItemUiModel3 = nativeCartViewModelImpl$updateCartItemVisibility$1.f54966c;
        cartItemUiModel2 = nativeCartViewModelImpl$updateCartItemVisibility$1.f54965b;
        ResultKt.b(obj);
        cartItemUiModel3.w = ((Boolean) obj).booleanValue();
        cartItemUiModel2.x = z;
        return Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object yc(NativeCartViewModelImpl nativeCartViewModelImpl, ContinuationImpl continuationImpl) {
        NativeCartViewModelImpl$cartFullCall$1 nativeCartViewModelImpl$cartFullCall$1;
        Object objA;
        if (continuationImpl instanceof NativeCartViewModelImpl$cartFullCall$1) {
            nativeCartViewModelImpl$cartFullCall$1 = (NativeCartViewModelImpl$cartFullCall$1) continuationImpl;
            int i2 = nativeCartViewModelImpl$cartFullCall$1.f54894e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                nativeCartViewModelImpl$cartFullCall$1.f54894e = i2 - Integer.MIN_VALUE;
            } else {
                nativeCartViewModelImpl$cartFullCall$1 = new NativeCartViewModelImpl$cartFullCall$1(nativeCartViewModelImpl, continuationImpl);
            }
        } else {
            nativeCartViewModelImpl$cartFullCall$1 = new NativeCartViewModelImpl$cartFullCall$1(nativeCartViewModelImpl, continuationImpl);
        }
        Object obj = nativeCartViewModelImpl$cartFullCall$1.f54893c;
        Object obj2 = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = nativeCartViewModelImpl$cartFullCall$1.f54894e;
        if (i3 == 0) {
            ResultKt.b(obj);
            GetCartFullUseCase getCartFullUseCase = nativeCartViewModelImpl.f54877i;
            nativeCartViewModelImpl$cartFullCall$1.f54894e = 1;
            objA = getCartFullUseCase.a(nativeCartViewModelImpl$cartFullCall$1);
            if (objA != obj2) {
            }
            return obj2;
        }
        if (i3 != 1) {
            if (i3 != 2) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            Object obj3 = nativeCartViewModelImpl$cartFullCall$1.f54892b;
            ResultKt.b(obj);
            return obj3;
        }
        ResultKt.b(obj);
        objA = ((Result) obj).f71708b;
        Result.Companion companion = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            nativeCartViewModelImpl$cartFullCall$1.f54892b = objA;
            nativeCartViewModelImpl$cartFullCall$1.f54894e = 2;
            if (nativeCartViewModelImpl.Dc((Cart) objA, nativeCartViewModelImpl$cartFullCall$1) == obj2) {
                return obj2;
            }
        }
        return objA;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    public static final Object zc(NativeCartViewModelImpl nativeCartViewModelImpl, Throwable th, ContinuationImpl continuationImpl) {
        NativeCartViewModelImpl$notifyIfCartError$1 nativeCartViewModelImpl$notifyIfCartError$1;
        StringResourceUiModel.ResId resId;
        StringResourceUiModel text;
        String strJ;
        nativeCartViewModelImpl.getClass();
        if (continuationImpl instanceof NativeCartViewModelImpl$notifyIfCartError$1) {
            nativeCartViewModelImpl$notifyIfCartError$1 = (NativeCartViewModelImpl$notifyIfCartError$1) continuationImpl;
            int i2 = nativeCartViewModelImpl$notifyIfCartError$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                nativeCartViewModelImpl$notifyIfCartError$1.d = i2 - Integer.MIN_VALUE;
            } else {
                nativeCartViewModelImpl$notifyIfCartError$1 = new NativeCartViewModelImpl$notifyIfCartError$1(nativeCartViewModelImpl, continuationImpl);
            }
        } else {
            nativeCartViewModelImpl$notifyIfCartError$1 = new NativeCartViewModelImpl$notifyIfCartError$1(nativeCartViewModelImpl, continuationImpl);
        }
        Object obj = nativeCartViewModelImpl$notifyIfCartError$1.f54908b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = nativeCartViewModelImpl$notifyIfCartError$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            CartError cartError = th instanceof CartError ? (CartError) th : null;
            if (cartError != null) {
                BufferedChannel bufferedChannel = nativeCartViewModelImpl.X;
                NotificationBuilder notificationBuilder = nativeCartViewModelImpl.f54876h;
                String localizedMessage = cartError.getLocalizedMessage();
                if (localizedMessage == null || (strJ = StringKtExtKt.j(localizedMessage)) == null) {
                    String strJ2 = StringKtExtKt.j(cartError.f66209b);
                    if (strJ2 != null) {
                        text = new StringResourceUiModel.Text(strJ2);
                    } else {
                        if (cartError instanceof OutOfStockError) {
                            resId = new StringResourceUiModel.ResId(R.string.multiple_add_to_cart_one_product_out_of_stock_error, null, 2, null);
                        } else if (cartError instanceof MaxQuantityReached) {
                            resId = new StringResourceUiModel.ResId(R.string.cart_error_too_much_products, null, 2, null);
                        } else {
                            resId = cartError instanceof MaxSkuQuantityReached ? new StringResourceUiModel.ResId(R.string.error_add_cart_multiple_product, null, 2, null) : new StringResourceUiModel.ResId(R.string.generic_api_error_message, null, 2, null);
                        }
                        text = resId;
                    }
                } else {
                    text = new StringResourceUiModel.Text(strJ);
                }
                NotificationUiModel notificationUiModelA = NotificationBuilder.a(notificationBuilder, text, false, null, null, 60);
                nativeCartViewModelImpl$notifyIfCartError$1.d = 1;
                if (bufferedChannel.u(notificationUiModelA, nativeCartViewModelImpl$notifyIfCartError$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        return Unit.f71739a;
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void B(ChatProductModel chatProductModel, int i2, int i3) {
        chatProductModel.getClass();
        this.f54875f.B(chatProductModel, i2, i3);
    }

    @Override // com.vuitton.android.presentation.screen.cart.NativeCartViewModel
    public final void Bb() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new NativeCartViewModelImpl$getCartFull$1(null, this), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void C(ScreenType screenType) {
        screenType.getClass();
        this.f54875f.C(screenType);
    }

    public final void Cc(GenericNotification genericNotification) {
        MutableStateFlow mutableStateFlow = this.S;
        Iterable iterable = (Iterable) mutableStateFlow.getValue();
        ArrayList arrayList = new ArrayList();
        for (Object obj : iterable) {
            if (((GenericNotification) obj).getClass() != genericNotification.getClass()) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(arrayList);
        arrayList2.add(genericNotification);
        mutableStateFlow.setValue(arrayList2);
    }

    @Override // com.vuitton.android.presentation.screen.cart.NativeCartViewModel
    public final Flow D2() {
        return this.d.f43512c;
    }

    /* JADX WARN: Code duplicated, block: B:102:0x023a  */
    /* JADX WARN: Code duplicated, block: B:103:0x023d  */
    /* JADX WARN: Code duplicated, block: B:107:0x024b  */
    /* JADX WARN: Code duplicated, block: B:135:0x02b5  */
    /* JADX WARN: Code duplicated, block: B:139:0x02be  */
    /* JADX WARN: Code duplicated, block: B:143:0x012a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:146:0x0119 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:151:0x0191 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:153:0x0180 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:170:0x01df A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:171:0x01db A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:172:? A[LOOP:8: B:75:0x01cb->B:172:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:28:0x00af  */
    /* JADX WARN: Code duplicated, block: B:32:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:34:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:44:0x011f  */
    /* JADX WARN: Code duplicated, block: B:52:0x0147 A[LOOP:1: B:50:0x0141->B:52:0x0147, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:55:0x0160  */
    /* JADX WARN: Code duplicated, block: B:57:0x0164  */
    /* JADX WARN: Code duplicated, block: B:59:0x016e  */
    /* JADX WARN: Code duplicated, block: B:62:0x0186  */
    /* JADX WARN: Code duplicated, block: B:68:0x019f A[LOOP:3: B:66:0x0199->B:68:0x019f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:71:0x01bd  */
    /* JADX WARN: Code duplicated, block: B:74:0x01c7  */
    /* JADX WARN: Code duplicated, block: B:77:0x01d1  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code duplicated, block: B:83:0x01f2  */
    /* JADX WARN: Code duplicated, block: B:84:0x01fe A[LOOP:7: B:84:0x01fe->B:169:?, LOOP_START] */
    /* JADX WARN: Code duplicated, block: B:86:0x020d  */
    /* JADX WARN: Code duplicated, block: B:88:0x0211  */
    /* JADX WARN: Code duplicated, block: B:91:0x0218  */
    /* JADX WARN: Code duplicated, block: B:94:0x0221  */
    /* JADX WARN: Code duplicated, block: B:95:0x0226  */
    /* JADX WARN: Code duplicated, block: B:97:0x022f  */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00d8, code lost:
    
        if (r1 == r3) goto L30;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v6, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r7v8, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x00d8 -> B:31:0x00db). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object Dc(com.vuitton.foundation.model.domain.model.cart.Cart r18, kotlin.coroutines.jvm.internal.ContinuationImpl r19) {
        /*
            Method dump skipped, instruction units count: 720
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl.Dc(com.vuitton.foundation.model.domain.model.cart.Cart, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object E5(Continuation continuation) {
        return this.f54875f.E5(continuation);
    }

    public final void Ec(PerfumeSampleUiModel perfumeSampleUiModel, boolean z) {
        MutableStateFlow mutableStateFlow;
        Object value;
        ArrayList arrayList;
        int i2;
        Object value2;
        ArrayList arrayList2;
        do {
            mutableStateFlow = this.W;
            value = mutableStateFlow.getValue();
            List<PerfumeSampleUiModel> list = (List) value;
            arrayList = new ArrayList(CollectionsKt.t(list, 10));
            for (PerfumeSampleUiModel perfumeSampleUiModel2 : list) {
                arrayList.add(PerfumeSampleUiModel.a(perfumeSampleUiModel2, Intrinsics.c(perfumeSampleUiModel2.f55213a, perfumeSampleUiModel.f55213a) ? z ? PerfumeSampleState.SELECTED : PerfumeSampleState.NORMAL : perfumeSampleUiModel2.f55217f, 31));
            }
        } while (!mutableStateFlow.i(value, arrayList));
        Iterable iterable = (Iterable) mutableStateFlow.getValue();
        if ((iterable instanceof Collection) && ((Collection) iterable).isEmpty()) {
            i2 = 0;
        } else {
            Iterator it = iterable.iterator();
            i2 = 0;
            while (it.hasNext()) {
                if (((PerfumeSampleUiModel) it.next()).f55217f == PerfumeSampleState.SELECTED && (i2 = i2 + 1) < 0) {
                    CollectionsKt.s0();
                    throw null;
                }
            }
        }
        boolean z2 = i2 == this.H;
        do {
            value2 = mutableStateFlow.getValue();
            List<PerfumeSampleUiModel> list2 = (List) value2;
            arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
            for (PerfumeSampleUiModel perfumeSampleUiModel3 : list2) {
                arrayList2.add(PerfumeSampleUiModel.a(perfumeSampleUiModel3, (z2 && perfumeSampleUiModel3.f55217f == PerfumeSampleState.NORMAL) ? PerfumeSampleState.DISABLED : (z2 || perfumeSampleUiModel3.f55217f != PerfumeSampleState.DISABLED) ? perfumeSampleUiModel3.f55217f : PerfumeSampleState.NORMAL, 31));
            }
        } while (!mutableStateFlow.i(value2, arrayList2));
    }

    @Override // com.vuitton.android.presentation.screen.cart.NativeCartViewModel
    public final void F1() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new NativeCartViewModelImpl$requestShoppingBag$1(null, this), 3);
    }

    @Override // com.vuitton.android.presentation.screen.cart.NativeCartViewModel
    /* JADX INFO: renamed from: G8, reason: from getter */
    public final SharedFlow getF() {
        return this.F;
    }

    @Override // com.vuitton.android.presentation.screen.cart.NativeCartViewModel
    public final void H8() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new NativeCartViewModelImpl$resetCartContainerOnResume$1(null, this), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void I(ChatProductModel chatProductModel, int i2) {
        chatProductModel.getClass();
        this.f54875f.I(chatProductModel, i2);
    }

    @Override // com.vuitton.android.presentation.screen.cart.NativeCartViewModel
    public final void J6(String str) {
        boolean zC;
        str.getClass();
        MutableStateFlow mutableStateFlow = this.T;
        CartItemIdUiModel cartItemIdUiModel = (CartItemIdUiModel) mutableStateFlow.getValue();
        String str2 = cartItemIdUiModel != null ? cartItemIdUiModel.f55143b : null;
        if (str2 == null) {
            zC = false;
        } else {
            Parcelable.Creator<CartItemIdUiModel> creator = CartItemIdUiModel.CREATOR;
            zC = Intrinsics.c(str2, str);
        }
        if (zC) {
            mutableStateFlow.setValue(null);
        }
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object M1(ContactUsOrigin contactUsOrigin, Continuation continuation) {
        return this.f54875f.M1(contactUsOrigin, continuation);
    }

    @Override // com.vuitton.android.presentation.screen.cart.NativeCartViewModel
    public final void M5(CartItemUiModel cartItemUiModel, int i2) {
        cartItemUiModel.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new NativeCartViewModelImpl$updateQuantity$1(i2, cartItemUiModel, this, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.cart.NativeCartViewModel
    /* JADX INFO: renamed from: O9, reason: from getter */
    public final SharedFlowImpl getC() {
        return this.C;
    }

    @Override // com.vuitton.android.presentation.screen.cart.NativeCartViewModel
    public final void P4(boolean z, CartItemUiModel cartItemUiModel) {
        cartItemUiModel.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new NativeCartViewModelImpl$removeItemFromCart$1(this, cartItemUiModel, z, null), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void Q0() {
        this.f54875f.Q0();
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final Object S0(Continuation continuation) {
        return this.f54875f.S0(continuation);
    }

    @Override // com.vuitton.android.presentation.screen.cart.NativeCartViewModel
    public final void W9(CartTrackingUiModel cartTrackingUiModel) {
        cartTrackingUiModel.getClass();
        Hit hitB = CartTrackingUiModelKt.b(cartTrackingUiModel, (CartUiModel) this.K.getValue());
        if (hitB != null) {
            this.f54873c.a(hitB);
        }
    }

    @Override // com.vuitton.android.presentation.screen.cart.NativeCartViewModel
    public final void Za() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new NativeCartViewModelImpl$getCartFullWithMonitoring$1(null, this), 3);
    }

    @Override // com.vuitton.android.presentation.screen.cart.NativeCartViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getZ() {
        return this.Z;
    }

    @Override // com.vuitton.android.presentation.screen.cart.NativeCartViewModel
    public final void a9(CartItemUiModel cartItemUiModel) {
        cartItemUiModel.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new NativeCartViewModelImpl$requestAddToWishlist$1(this, cartItemUiModel, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.cart.NativeCartViewModel
    public final Flow b() {
        return FlowKt.y(this.X);
    }

    @Override // com.vuitton.android.presentation.screen.cart.NativeCartViewModel
    public final void c() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new NativeCartViewModelImpl$setUserChatConsentEnabled$1(null, this), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final void f8(ContactUsMode contactUsMode) {
        contactUsMode.getClass();
        this.f54875f.f8(contactUsMode);
    }

    @Override // com.vuitton.android.presentation.screen.cart.NativeCartViewModel
    public final void fa(GiftOption giftOption) {
        giftOption.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new NativeCartViewModelImpl$setGiftOption$1(this, giftOption, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.cart.NativeCartViewModel
    public final void g1(String str) {
        boolean zEquals;
        str.getClass();
        CartItemIdUiModel cartItemIdUiModel = (CartItemIdUiModel) this.T.getValue();
        String str2 = cartItemIdUiModel != null ? cartItemIdUiModel.f55143b : null;
        if (str2 == null) {
            zEquals = false;
        } else {
            Parcelable.Creator<CartItemIdUiModel> creator = CartItemIdUiModel.CREATOR;
            zEquals = str2.equals(str);
        }
        if (zEquals) {
            return;
        }
        BuildersKt.c(ViewModelKt.a(this), null, null, new NativeCartViewModelImpl$onItemExpanded$1(this, str, null), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Flow i() {
        return this.f54875f.i();
    }

    @Override // com.vuitton.android.presentation.screen.cart.NativeCartViewModel
    public final Flow i9() {
        return FlowKt.a(this.G);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final void m4(StringResourceUiModel stringResourceUiModel) {
        this.f54875f.m4(stringResourceUiModel);
    }

    @Override // com.vuitton.android.presentation.screen.cart.NativeCartViewModel
    public final void mc() {
        W9(CartTrackingUiModel.ProceedToCheckoutClick.f55172a);
        BuildersKt.c(ViewModelKt.a(this), null, null, new NativeCartViewModelImpl$prepareOrder$1(null, this), 3);
    }

    @Override // com.vuitton.android.presentation.screen.cart.NativeCartViewModel
    public final Flow o4() {
        return FlowKt.y(this.D);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void r(ChatProductModel chatProductModel) {
        chatProductModel.getClass();
        this.f54875f.r(chatProductModel);
    }

    @Override // com.vuitton.android.presentation.screen.cart.NativeCartViewModel
    public final void ra(PerfumeSampleUiModel perfumeSampleUiModel, boolean z) {
        perfumeSampleUiModel.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new NativeCartViewModelImpl$updateSampleState$1(this, z, perfumeSampleUiModel, null), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void s() {
        this.f54875f.s();
    }

    @Override // com.vuitton.android.presentation.screen.cart.NativeCartViewModel
    public final void uc() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new NativeCartViewModelImpl$chooseSamples$1(null, this), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void v(String str, String str2) {
        this.f54875f.v(str, str2);
    }

    @Override // com.vuitton.android.presentation.screen.cart.NativeCartViewModel
    public final void v4(PerfumeSampleUiModel perfumeSampleUiModel) {
        perfumeSampleUiModel.getClass();
        if (((List) this.W.getValue()).isEmpty()) {
            v8();
        }
        Ec(perfumeSampleUiModel, false);
        uc();
    }

    @Override // com.vuitton.android.presentation.screen.cart.NativeCartViewModel
    public final void v8() {
        MutableStateFlow mutableStateFlow;
        Object value;
        ArrayList arrayList;
        do {
            mutableStateFlow = this.W;
            value = mutableStateFlow.getValue();
            Iterable iterable = (Iterable) this.V.getValue();
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : iterable) {
                String str = ((PerfumeSampleUiModel) obj).f55213a;
                if (str != null && !StringsKt.w(str)) {
                    arrayList2.add(obj);
                }
            }
            arrayList = new ArrayList(CollectionsKt.t(arrayList2, 10));
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                arrayList.add(PerfumeSampleUiModel.a((PerfumeSampleUiModel) it.next(), null, 63));
            }
        } while (!mutableStateFlow.i(value, arrayList));
    }

    @Override // com.vuitton.android.presentation.screen.cart.NativeCartViewModel
    public final void vb(boolean z, CartItemUiModel cartItemUiModel) {
        cartItemUiModel.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new NativeCartViewModelImpl$addItemToWishlist$1(this, cartItemUiModel, z, null), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object vc(Continuation continuation) {
        return this.f54875f.vc(continuation);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void x(ChatProductModel chatProductModel, int i2) {
        chatProductModel.getClass();
        this.f54875f.x(chatProductModel, i2);
    }

    @Override // com.vuitton.android.presentation.screen.cart.NativeCartViewModel
    public final Flow y2() {
        return FlowKt.y(this.B);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void z() {
        this.f54875f.z();
    }
}
