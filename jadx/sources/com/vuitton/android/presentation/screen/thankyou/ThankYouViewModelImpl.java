package com.vuitton.android.presentation.screen.thankyou;

import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.appsflyer.sdk_base.referrer.Payload;
import com.vuitton.android.domain.repository.LoginStateRepository;
import com.vuitton.android.domain.usecase.account.GetProfileUseCase;
import com.vuitton.android.domain.usecase.cart.GetConfirmationDetailsUseCase;
import com.vuitton.android.domain.usecase.cart.SendCheckoutFeedbackUseCase;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.config.RequireCachedAppConfigUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.ReportDYPurchaseEventUseCase;
import com.vuitton.android.presentation.chat.ChatCoordinator;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.appsflyer.AppsFlyerTracker;
import com.vuitton.android.presentation.screen.cart.models.CartPreviousScreen;
import com.vuitton.android.presentation.screen.thankyou.models.CheckoutConfirmationDetailUiModel;
import com.vuitton.android.presentation.screen.thankyou.models.ThankYouBottomSheet;
import com.vuitton.android.presentation.screen.thankyou.models.ThankYouFeatureFlags;
import com.vuitton.android.presentation.screen.thankyou.models.ThankYouFeedbackUiModel;
import com.vuitton.android.presentation.screen.thankyou.models.ThankYouTrackingUiModel;
import com.vuitton.android.presentation.screen.thankyou.models.ThankYouTrackingUiModelKt;
import com.vuitton.android.presentation.screen.thankyou.models.ThankYouViewState;
import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.analytics.HitType;
import com.vuitton.foundation.model.domain.model.authentication.LoginState;
import com.vuitton.foundation.model.domain.model.common.ResultStrategy;
import com.vuitton.foundation.model.domain.model.profile.Profile;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import defpackage.md;
import defpackage.pq0;
import defpackage.v40;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
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
import kotlin.enums.EnumEntries;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.SharedFlowKt;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002Bi\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019¢\u0006\u0004\b\u001b\u0010\u001c¨\u0006\u001d"}, d2 = {"Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModel;", "Landroidx/lifecycle/SavedStateHandle;", "savedStateHandle", "Lcom/vuitton/android/presentation/chat/ChatCoordinator;", "chatCoordinator", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "analyticsTracker", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;", "appsFlyerTracker", "Lcom/vuitton/android/presentation/notification/NotificationBuilder;", "notificationBuilder", "Lcom/vuitton/android/domain/repository/LoginStateRepository;", "loginStateRepository", "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;", "getProfileUseCase", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/usecase/cart/SendCheckoutFeedbackUseCase;", "sendCheckoutFeedbackUseCase", "Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYPurchaseEventUseCase;", "reportDYPurchaseEventUseCase", "Lcom/vuitton/android/domain/usecase/cart/GetConfirmationDetailsUseCase;", "getConfirmationDetailsUseCase", "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;", "requireCachedAppConfigUseCase", "<init>", "(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/presentation/chat/ChatCoordinator;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/repository/LoginStateRepository;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/cart/SendCheckoutFeedbackUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYPurchaseEventUseCase;Lcom/vuitton/android/domain/usecase/cart/GetConfirmationDetailsUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ThankYouViewModelImpl extends ViewModel implements ThankYouViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ChatCoordinator f65198a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AnalyticsTracker f65199b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppsFlyerTracker f65200c;
    public final NotificationBuilder d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LoginStateRepository f65201e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final GetProfileUseCase f65202f;
    public final IsFeatureAvailableUseCase g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final SendCheckoutFeedbackUseCase f65203h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ReportDYPurchaseEventUseCase f65204i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final GetConfirmationDetailsUseCase f65205j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final RequireCachedAppConfigUseCase f65206k;
    public final CartPreviousScreen l;
    public final MutableStateFlow m;
    public final StateFlow n;
    public final SharedFlowImpl o;
    public final SharedFlowImpl p;
    public final SharedFlowImpl q;
    public final SharedFlowImpl r;
    public final MutableStateFlow s;
    public final StateFlow t;
    public ThankYouFeatureFlags u;
    public Job v;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.thankyou.ThankYouViewModelImpl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.thankyou.ThankYouViewModelImpl$1", f = "ThankYouViewModelImpl.kt", l = {86}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f65207b;

        public AnonymousClass1(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return ThankYouViewModelImpl.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f65207b;
            ThankYouViewModelImpl thankYouViewModelImpl = ThankYouViewModelImpl.this;
            if (i2 == 0) {
                ResultKt.b(obj);
                this.f65207b = 1;
                if (ThankYouViewModelImpl.zc(thankYouViewModelImpl, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            BuildersKt.c(ViewModelKt.a(thankYouViewModelImpl), null, null, new ThankYouViewModelImpl$retrieveCheckoutConfirmationDetails$1(thankYouViewModelImpl, null), 3);
            return Unit.f71739a;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Inject
    public ThankYouViewModelImpl(SavedStateHandle savedStateHandle, ChatCoordinator chatCoordinator, AnalyticsTracker analyticsTracker, AppsFlyerTracker appsFlyerTracker, NotificationBuilder notificationBuilder, LoginStateRepository loginStateRepository, GetProfileUseCase getProfileUseCase, IsFeatureAvailableUseCase isFeatureAvailableUseCase, SendCheckoutFeedbackUseCase sendCheckoutFeedbackUseCase, ReportDYPurchaseEventUseCase reportDYPurchaseEventUseCase, GetConfirmationDetailsUseCase getConfirmationDetailsUseCase, RequireCachedAppConfigUseCase requireCachedAppConfigUseCase) {
        savedStateHandle.getClass();
        chatCoordinator.getClass();
        analyticsTracker.getClass();
        appsFlyerTracker.getClass();
        notificationBuilder.getClass();
        loginStateRepository.getClass();
        getProfileUseCase.getClass();
        isFeatureAvailableUseCase.getClass();
        sendCheckoutFeedbackUseCase.getClass();
        reportDYPurchaseEventUseCase.getClass();
        getConfirmationDetailsUseCase.getClass();
        requireCachedAppConfigUseCase.getClass();
        this.f65198a = chatCoordinator;
        this.f65199b = analyticsTracker;
        this.f65200c = appsFlyerTracker;
        this.d = notificationBuilder;
        this.f65201e = loginStateRepository;
        this.f65202f = getProfileUseCase;
        this.g = isFeatureAvailableUseCase;
        this.f65203h = sendCheckoutFeedbackUseCase;
        this.f65204i = reportDYPurchaseEventUseCase;
        this.f65205j = getConfirmationDetailsUseCase;
        this.f65206k = requireCachedAppConfigUseCase;
        EnumEntries enumEntriesA = CartPreviousScreen.a();
        Integer num = (Integer) savedStateHandle.a("PREVIOUS_SCREEN");
        this.l = (CartPreviousScreen) enumEntriesA.get(num != null ? num.intValue() : 0);
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(ThankYouViewState.Loading.f65300a);
        this.m = mutableStateFlowA;
        this.n = FlowKt.b(mutableStateFlowA);
        SharedFlowImpl sharedFlowImplB = SharedFlowKt.b(0, 0, null, 7);
        this.o = sharedFlowImplB;
        this.p = sharedFlowImplB;
        SharedFlowImpl sharedFlowImplB2 = SharedFlowKt.b(0, 0, null, 7);
        this.q = sharedFlowImplB2;
        this.r = sharedFlowImplB2;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(null);
        this.s = mutableStateFlowA2;
        this.t = mutableStateFlowA2;
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass1(null), 3);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x007f  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object yc(ThankYouViewModelImpl thankYouViewModelImpl, String str, ContinuationImpl continuationImpl) {
        ThankYouViewModelImpl$resolveDisplayName$1 thankYouViewModelImpl$resolveDisplayName$1;
        boolean z;
        Object obj;
        String str2;
        String str3;
        if (continuationImpl instanceof ThankYouViewModelImpl$resolveDisplayName$1) {
            thankYouViewModelImpl$resolveDisplayName$1 = (ThankYouViewModelImpl$resolveDisplayName$1) continuationImpl;
            int i2 = thankYouViewModelImpl$resolveDisplayName$1.f65216f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                thankYouViewModelImpl$resolveDisplayName$1.f65216f = i2 - Integer.MIN_VALUE;
            } else {
                thankYouViewModelImpl$resolveDisplayName$1 = new ThankYouViewModelImpl$resolveDisplayName$1(thankYouViewModelImpl, continuationImpl);
            }
        } else {
            thankYouViewModelImpl$resolveDisplayName$1 = new ThankYouViewModelImpl$resolveDisplayName$1(thankYouViewModelImpl, continuationImpl);
        }
        Object obj2 = thankYouViewModelImpl$resolveDisplayName$1.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = thankYouViewModelImpl$resolveDisplayName$1.f65216f;
        if (i3 != 0) {
            if (i3 == 1) {
                z = thankYouViewModelImpl$resolveDisplayName$1.f65214c;
                str = thankYouViewModelImpl$resolveDisplayName$1.f65213b;
                ResultKt.b(obj2);
            } else {
                if (i3 != 2) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                str2 = thankYouViewModelImpl$resolveDisplayName$1.f65213b;
                ResultKt.b(obj2);
                obj = ((Result) obj2).f71708b;
            }
            Result.Companion companion = Result.INSTANCE;
            Profile profile = (Profile) (obj instanceof Result.Failure ? null : obj);
            return (profile != null || (str3 = profile.s) == null) ? str2 : str3;
        }
        ResultKt.b(obj2);
        boolean zA = ((LoginState) thankYouViewModelImpl.f65201e.a().getValue()).a();
        if (!zA) {
            return str;
        }
        GetProfileUseCase getProfileUseCase = thankYouViewModelImpl.f65202f;
        thankYouViewModelImpl$resolveDisplayName$1.f65213b = str;
        thankYouViewModelImpl$resolveDisplayName$1.f65214c = zA;
        thankYouViewModelImpl$resolveDisplayName$1.f65216f = 1;
        Object objA = getProfileUseCase.a(thankYouViewModelImpl$resolveDisplayName$1);
        if (objA != coroutineSingletons) {
            obj2 = objA;
            z = zA;
        }
        return coroutineSingletons;
        thankYouViewModelImpl$resolveDisplayName$1.f65213b = str;
        thankYouViewModelImpl$resolveDisplayName$1.f65214c = z;
        thankYouViewModelImpl$resolveDisplayName$1.f65216f = 2;
        Object objC = ((ResultStrategy) obj2).c(thankYouViewModelImpl$resolveDisplayName$1);
        if (objC != coroutineSingletons) {
            String str4 = str;
            obj = objC;
            str2 = str4;
            Result.Companion companion2 = Result.INSTANCE;
            Profile profile2 = (Profile) (obj instanceof Result.Failure ? null : obj);
            if (profile2 != null) {
            }
        }
        return coroutineSingletons;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static final Object zc(ThankYouViewModelImpl thankYouViewModelImpl, ContinuationImpl continuationImpl) {
        ThankYouViewModelImpl$retrieveFeatureFlags$1 thankYouViewModelImpl$retrieveFeatureFlags$1;
        boolean z;
        ThankYouViewModelImpl thankYouViewModelImpl2;
        boolean z2;
        boolean z3;
        IsFeatureAvailableUseCase isFeatureAvailableUseCase = thankYouViewModelImpl.g;
        if (continuationImpl instanceof ThankYouViewModelImpl$retrieveFeatureFlags$1) {
            thankYouViewModelImpl$retrieveFeatureFlags$1 = (ThankYouViewModelImpl$retrieveFeatureFlags$1) continuationImpl;
            int i2 = thankYouViewModelImpl$retrieveFeatureFlags$1.g;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                thankYouViewModelImpl$retrieveFeatureFlags$1.g = i2 - Integer.MIN_VALUE;
            } else {
                thankYouViewModelImpl$retrieveFeatureFlags$1 = new ThankYouViewModelImpl$retrieveFeatureFlags$1(thankYouViewModelImpl, continuationImpl);
            }
        } else {
            thankYouViewModelImpl$retrieveFeatureFlags$1 = new ThankYouViewModelImpl$retrieveFeatureFlags$1(thankYouViewModelImpl, continuationImpl);
        }
        Object obj = thankYouViewModelImpl$retrieveFeatureFlags$1.f65225e;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = thankYouViewModelImpl$retrieveFeatureFlags$1.g;
        if (i3 == 0) {
            ResultKt.b(obj);
            boolean z4 = thankYouViewModelImpl.f65206k.a().a0.f67282a;
            Feature[] featureArr = {Feature.NATIVE_THANK_YOU_PAGE_FEEDBACK};
            thankYouViewModelImpl$retrieveFeatureFlags$1.f65223b = thankYouViewModelImpl;
            thankYouViewModelImpl$retrieveFeatureFlags$1.f65224c = z4;
            thankYouViewModelImpl$retrieveFeatureFlags$1.g = 1;
            Object objC = isFeatureAvailableUseCase.c(featureArr, false, thankYouViewModelImpl$retrieveFeatureFlags$1);
            if (objC != coroutineSingletons) {
                z = z4;
                obj = objC;
            }
            return coroutineSingletons;
        }
        if (i3 == 1) {
            boolean z5 = thankYouViewModelImpl$retrieveFeatureFlags$1.f65224c;
            ThankYouViewModelImpl thankYouViewModelImpl3 = thankYouViewModelImpl$retrieveFeatureFlags$1.f65223b;
            ResultKt.b(obj);
            z = z5;
            thankYouViewModelImpl = thankYouViewModelImpl3;
        } else {
            if (i3 != 2) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            z2 = thankYouViewModelImpl$retrieveFeatureFlags$1.d;
            z3 = thankYouViewModelImpl$retrieveFeatureFlags$1.f65224c;
            thankYouViewModelImpl2 = thankYouViewModelImpl$retrieveFeatureFlags$1.f65223b;
            ResultKt.b(obj);
        }
        thankYouViewModelImpl2.u = new ThankYouFeatureFlags(z3, z2, ((Boolean) obj).booleanValue());
        return Unit.f71739a;
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        Feature[] featureArr2 = {Feature.NATIVE_ACCOUNT_ACTIVATION};
        thankYouViewModelImpl$retrieveFeatureFlags$1.f65223b = thankYouViewModelImpl;
        thankYouViewModelImpl$retrieveFeatureFlags$1.f65224c = z;
        thankYouViewModelImpl$retrieveFeatureFlags$1.d = zBooleanValue;
        thankYouViewModelImpl$retrieveFeatureFlags$1.g = 2;
        Object objC2 = isFeatureAvailableUseCase.c(featureArr2, false, thankYouViewModelImpl$retrieveFeatureFlags$1);
        if (objC2 != coroutineSingletons) {
            thankYouViewModelImpl2 = thankYouViewModelImpl;
            z2 = zBooleanValue;
            obj = objC2;
            z3 = z;
            thankYouViewModelImpl2.u = new ThankYouFeatureFlags(z3, z2, ((Boolean) obj).booleanValue());
            return Unit.f71739a;
        }
        return coroutineSingletons;
    }

    public final ThankYouFeedbackUiModel Ac() {
        ThankYouViewState thankYouViewState = (ThankYouViewState) this.n.getValue();
        if (thankYouViewState instanceof ThankYouViewState.Success) {
            return ((ThankYouViewState.Success) thankYouViewState).f65303c;
        }
        if (thankYouViewState instanceof ThankYouViewState.Error) {
            return ((ThankYouViewState.Error) thankYouViewState).f65298a;
        }
        if (thankYouViewState instanceof ThankYouViewState.Loading) {
            return null;
        }
        v40.g();
        return null;
    }

    @Override // com.vuitton.android.presentation.screen.thankyou.ThankYouViewModel
    /* JADX INFO: renamed from: B6, reason: from getter */
    public final SharedFlowImpl getP() {
        return this.p;
    }

    @Override // com.vuitton.android.presentation.screen.thankyou.ThankYouViewModel
    public final void Ba(ThankYouTrackingUiModel thankYouTrackingUiModel) {
        List listO;
        Hit.EventHit.DefaultEventHit defaultEventHit;
        Hit defaultEventHit2;
        Hit defaultEventHit3;
        CartPreviousScreen cartPreviousScreen = this.l;
        cartPreviousScreen.getClass();
        if (thankYouTrackingUiModel instanceof ThankYouTrackingUiModel.Screen) {
            defaultEventHit2 = new Hit.ScreenHit.DefaultScreenHit(null, "order_review_page", "order", "checkout_order", ThankYouTrackingUiModelKt.a(cartPreviousScreen, ((ThankYouTrackingUiModel.Screen) thankYouTrackingUiModel).f65293a), 1, null);
        } else if (thankYouTrackingUiModel instanceof ThankYouTrackingUiModel.PurchaseConfirmation) {
            defaultEventHit2 = new Hit.EventHit.DefaultEventHit(HitType.Purchase.f66516a, "order_review_page", "confirm_order", "buypath", MvelScriptManager.VAR_EVENT, null, ThankYouTrackingUiModelKt.a(cartPreviousScreen, ((ThankYouTrackingUiModel.PurchaseConfirmation) thankYouTrackingUiModel).f65292a), 32, null);
        } else {
            if (thankYouTrackingUiModel instanceof ThankYouTrackingUiModel.Close) {
                defaultEventHit3 = new Hit.EventHit.DefaultEventHit(new HitType.Custom(Payload.CUSTOM), "order_review_page", "close_popin", "buypath", "click", null, null, 96, null);
            } else if (thankYouTrackingUiModel instanceof ThankYouTrackingUiModel.FeedbackScreen) {
                defaultEventHit3 = new Hit.ScreenHit.DefaultScreenHit(null, "checkout_feedback", "order", "checkout_order", null, 17, null);
            } else if (thankYouTrackingUiModel instanceof ThankYouTrackingUiModel.CloseFeedbackNotification) {
                defaultEventHit3 = new Hit.EventHit.DefaultEventHit(null, "order_review_page", "close_notification_toast_checkout_feedback", "buypath", "click", null, null, 97, null);
            } else if (thankYouTrackingUiModel instanceof ThankYouTrackingUiModel.CloseFeedbackScreen) {
                defaultEventHit3 = new Hit.EventHit.DefaultEventHit(null, "checkout_feedback", "close_popin", "buypath", "click", null, null, 97, null);
            } else {
                if (thankYouTrackingUiModel instanceof ThankYouTrackingUiModel.SelectFeedbackRating) {
                    Integer num = ((ThankYouTrackingUiModel.SelectFeedbackRating) thankYouTrackingUiModel).f65294a;
                    listO = num != null ? CollectionsKt.O(new AdditionalProperty.ContentId(pq0.k(num.intValue(), "note_"))) : null;
                    if (listO == null) {
                        listO = EmptyList.f71768b;
                    }
                    defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "checkout_feedback", "select_rating_intention", "buypath", "click", null, listO, 33, null);
                } else if (thankYouTrackingUiModel instanceof ThankYouTrackingUiModel.TypeFeedbackMessage) {
                    defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "checkout_feedback", "type_message", "buypath", "input", null, null, 97, null);
                } else {
                    if (!(thankYouTrackingUiModel instanceof ThankYouTrackingUiModel.SubmitFeedback)) {
                        v40.g();
                        return;
                    }
                    Integer num2 = ((ThankYouTrackingUiModel.SubmitFeedback) thankYouTrackingUiModel).f65295a;
                    listO = num2 != null ? CollectionsKt.O(new AdditionalProperty.ContentId(pq0.k(num2.intValue(), "note_"))) : null;
                    if (listO == null) {
                        listO = EmptyList.f71768b;
                    }
                    defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "checkout_feedback", "submit_feedback", "buypath", "click", null, listO, 33, null);
                }
                defaultEventHit2 = defaultEventHit;
            }
            defaultEventHit2 = defaultEventHit3;
        }
        this.f65199b.a(defaultEventHit2);
    }

    @Override // com.vuitton.android.presentation.screen.thankyou.ThankYouViewModel
    public final void V3(ThankYouBottomSheet.Feedback feedback) {
        BuildersKt.c(ViewModelKt.a(this), null, null, new ThankYouViewModelImpl$showBottomSheet$1(this, feedback, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.thankyou.ThankYouViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getN() {
        return this.n;
    }

    @Override // com.vuitton.android.presentation.screen.thankyou.ThankYouViewModel
    /* JADX INFO: renamed from: e, reason: from getter */
    public final StateFlow getT() {
        return this.t;
    }

    @Override // com.vuitton.android.presentation.screen.thankyou.ThankYouViewModel
    public final void o6() {
        ThankYouFeedbackUiModel thankYouFeedbackUiModelAc = Ac();
        if (thankYouFeedbackUiModelAc != null && thankYouFeedbackUiModelAc.d) {
            BuildersKt.c(ViewModelKt.a(this), null, null, new ThankYouViewModelImpl$submitFeedback$1(this, thankYouFeedbackUiModelAc, null), 3);
        }
        BuildersKt.c(ViewModelKt.a(this), null, null, new ThankYouViewModelImpl$submitFeedback$2(this, null), 3);
    }

    @Override // androidx.lifecycle.ViewModel
    public final void onCleared() {
        super.onCleared();
        Ba(ThankYouTrackingUiModel.Close.f65288a);
    }

    @Override // com.vuitton.android.presentation.screen.thankyou.ThankYouViewModel
    public final void t1(ThankYouFeedbackUiModel thankYouFeedbackUiModel) {
        thankYouFeedbackUiModel.getClass();
        String str = thankYouFeedbackUiModel.f65286b;
        while (true) {
            MutableStateFlow mutableStateFlow = this.m;
            Object value = mutableStateFlow.getValue();
            ThankYouViewState error = (ThankYouViewState) value;
            Integer num = thankYouFeedbackUiModel.f65285a;
            int length = str.length();
            if (length > 200) {
                length = 200;
            }
            String strSubstring = str.substring(0, length);
            ThankYouFeedbackUiModel thankYouFeedbackUiModel2 = thankYouFeedbackUiModel;
            ThankYouFeedbackUiModel thankYouFeedbackUiModelA = ThankYouFeedbackUiModel.a(thankYouFeedbackUiModel2, null, strSubstring, 200 - strSubstring.length(), (num == null && StringsKt.w(strSubstring)) ? false : true, 1);
            ThankYouFeedbackUiModel thankYouFeedbackUiModelAc = Ac();
            if (Intrinsics.c(thankYouFeedbackUiModelA.f65285a, thankYouFeedbackUiModelAc != null ? thankYouFeedbackUiModelAc.f65285a : null)) {
                if (!Intrinsics.c(str, thankYouFeedbackUiModelAc != null ? thankYouFeedbackUiModelAc.f65286b : null)) {
                    Job job = this.v;
                    if (job != null) {
                        job.cancel(null);
                    }
                    this.v = BuildersKt.c(ViewModelKt.a(this), null, null, new ThankYouViewModelImpl$onFeedbackChange$1$1(this, null), 3);
                }
            } else {
                Ba(new ThankYouTrackingUiModel.SelectFeedbackRating(num));
            }
            if (error instanceof ThankYouViewState.Success) {
                ThankYouViewState.Success success = (ThankYouViewState.Success) error;
                CheckoutConfirmationDetailUiModel checkoutConfirmationDetailUiModel = success.f65301a;
                String str2 = success.f65302b;
                ThankYouFeatureFlags thankYouFeatureFlags = success.d;
                checkoutConfirmationDetailUiModel.getClass();
                str2.getClass();
                thankYouFeatureFlags.getClass();
                error = new ThankYouViewState.Success(checkoutConfirmationDetailUiModel, str2, thankYouFeedbackUiModelA, thankYouFeatureFlags);
            } else if (error instanceof ThankYouViewState.Error) {
                ThankYouFeatureFlags thankYouFeatureFlags2 = ((ThankYouViewState.Error) error).f65299b;
                thankYouFeatureFlags2.getClass();
                error = new ThankYouViewState.Error(thankYouFeedbackUiModelA, thankYouFeatureFlags2);
            } else if (!(error instanceof ThankYouViewState.Loading)) {
                v40.g();
                return;
            }
            if (mutableStateFlow.i(value, error)) {
                return;
            } else {
                thankYouFeedbackUiModel = thankYouFeedbackUiModel2;
            }
        }
    }

    @Override // com.vuitton.android.presentation.screen.thankyou.ThankYouViewModel
    /* JADX INFO: renamed from: t6, reason: from getter */
    public final SharedFlowImpl getR() {
        return this.r;
    }
}
