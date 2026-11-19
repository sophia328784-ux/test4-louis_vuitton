package com.vuitton.android.presentation.screen.aicompanion;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.domain.service.authentication.UserSessionService;
import com.vuitton.android.domain.usecase.aicompanion.DeleteChatSessionFromHistoryUseCase;
import com.vuitton.android.domain.usecase.aicompanion.GetChatHistoryListUseCase;
import com.vuitton.android.domain.usecase.aicompanion.GetChatSessionByIdUseCase;
import com.vuitton.android.domain.usecase.aicompanion.HasAICompanionVideoBeenDisplayedUseCase;
import com.vuitton.android.domain.usecase.aicompanion.PostChatMessageUseCase;
import com.vuitton.android.domain.usecase.aicompanion.UpdateAICompanionVideoVisibilityUseCase;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.config.RequireCachedAppConfigUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.domain.usecase.products.GetProductShortListUseCase;
import com.vuitton.android.domain.usecase.wishlist.AddProductToWishlistUseCase;
import com.vuitton.android.domain.usecase.wishlist.DeleteProductFromWishlistUseCase;
import com.vuitton.android.domain.usecase.wishlist.GetWishlistUseCase;
import com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel;
import com.vuitton.android.presentation.common.editorial.models.ProductCarouselItemUiModel;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.screen.aicompanion.models.AICompanionBottomSheet;
import com.vuitton.android.presentation.screen.aicompanion.models.AICompanionViewState;
import com.vuitton.android.presentation.screen.aicompanion.models.ChatMessageSectionUiModel;
import com.vuitton.android.presentation.screen.aicompanion.models.ChatMessageUiModel;
import com.vuitton.android.presentation.screen.aicompanion.models.ChatSessionUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.utils.DateTimeUtils;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.aicompanion.ChatRole;
import com.vuitton.foundation.model.domain.model.authentication.LoginState;
import com.vuitton.foundation.model.domain.model.config.AICompanionConfig;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.md;
import java.time.format.FormatStyle;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.TimeZone;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.datetime.Clock;
import kotlinx.datetime.Instant;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001'B\u0091\u0001\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010$\u001a\u00020#¢\u0006\u0004\b%\u0010&¨\u0006("}, d2 = {"Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/android/core/events/LVEventSender;", "eventSender", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/domain/service/authentication/UserSessionService;", "userSessionService", "Lcom/vuitton/android/presentation/notification/NotificationBuilder;", "notificationBuilder", "Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase;", "postChatMessageUseCase", "Lcom/vuitton/android/domain/usecase/aicompanion/GetChatHistoryListUseCase;", "getChatHistoryListUseCase", "Lcom/vuitton/android/domain/usecase/aicompanion/GetChatSessionByIdUseCase;", "getChatSessionByIdUseCase", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/usecase/products/GetProductShortListUseCase;", "getProductShortListUseCase", "Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;", "addProductToWishListUseCase", "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;", "requireCachedAppConfigUseCase", "Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;", "deleteProductFromWishlistUseCase", "Lcom/vuitton/android/domain/usecase/aicompanion/DeleteChatSessionFromHistoryUseCase;", "deleteChatSessionFromHistoryUseCase", "Lcom/vuitton/android/domain/usecase/aicompanion/HasAICompanionVideoBeenDisplayedUseCase;", "hasAICompanionVideoBeenDisplayedUseCase", "Lcom/vuitton/android/domain/usecase/aicompanion/UpdateAICompanionVideoVisibilityUseCase;", "updateAICompanionVideoVisibilityUseCase", "Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;", "getWishlistUseCase", "<init>", "(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase;Lcom/vuitton/android/domain/usecase/aicompanion/GetChatHistoryListUseCase;Lcom/vuitton/android/domain/usecase/aicompanion/GetChatSessionByIdUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/products/GetProductShortListUseCase;Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;Lcom/vuitton/android/domain/usecase/aicompanion/DeleteChatSessionFromHistoryUseCase;Lcom/vuitton/android/domain/usecase/aicompanion/HasAICompanionVideoBeenDisplayedUseCase;Lcom/vuitton/android/domain/usecase/aicompanion/UpdateAICompanionVideoVisibilityUseCase;Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AICompanionViewModelImpl extends ViewModel implements AICompanionViewModel {
    public static final String v;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LVEventSender f52729a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Logger f52730b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final UserSessionService f52731c;
    public final NotificationBuilder d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final PostChatMessageUseCase f52732e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final GetChatHistoryListUseCase f52733f;
    public final GetChatSessionByIdUseCase g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final IsFeatureAvailableUseCase f52734h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final GetProductShortListUseCase f52735i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AddProductToWishlistUseCase f52736j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final RequireCachedAppConfigUseCase f52737k;
    public final DeleteProductFromWishlistUseCase l;
    public final DeleteChatSessionFromHistoryUseCase m;
    public final HasAICompanionVideoBeenDisplayedUseCase n;
    public final UpdateAICompanionVideoVisibilityUseCase o;
    public final GetWishlistUseCase p;
    public final InAppDispatch q;
    public final MutableStateFlow r;
    public final BufferedChannel s;
    public final MutableStateFlow t;
    public final StateFlow u;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModelImpl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModelImpl$1", f = "AICompanionViewModelImpl.kt", l = {513}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f52738b;

        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModelImpl$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "loginState", "Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;"}, k = 3, mv = {2, 3, 0}, xi = 48)
        @DebugMetadata(c = "com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModelImpl$1$1", f = "AICompanionViewModelImpl.kt", l = {}, m = "invokeSuspend", v = 2)
        final class C02621 extends SuspendLambda implements Function2<LoginState, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public /* synthetic */ Object f52740b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ AICompanionViewModelImpl f52741c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C02621(AICompanionViewModelImpl aICompanionViewModelImpl, Continuation continuation) {
                super(2, continuation);
                this.f52741c = aICompanionViewModelImpl;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                C02621 c02621 = new C02621(this.f52741c, continuation);
                c02621.f52740b = obj;
                return c02621;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((C02621) create((LoginState) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object value;
                LoginState loginState = (LoginState) this.f52740b;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                ResultKt.b(obj);
                MutableStateFlow mutableStateFlow = this.f52741c.t;
                do {
                    value = mutableStateFlow.getValue();
                } while (!mutableStateFlow.i(value, AICompanionViewState.a((AICompanionViewState) value, loginState.a(), null, null, null, null, null, false, false, null, 510)));
                return Unit.f71739a;
            }
        }

        public AnonymousClass1(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return AICompanionViewModelImpl.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f52738b;
            if (i2 == 0) {
                ResultKt.b(obj);
                AICompanionViewModelImpl aICompanionViewModelImpl = AICompanionViewModelImpl.this;
                StateFlow stateFlow = aICompanionViewModelImpl.f52731c.g;
                C02621 c02621 = new C02621(aICompanionViewModelImpl, null);
                stateFlow.getClass();
                this.f52738b = 1;
                if (FlowKt.g(stateFlow, c02621, this) == coroutineSingletons) {
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

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$Companion;", "", "", "TAG", "Ljava/lang/String;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        v = Reflection.f71922a.b(AICompanionViewModelImpl.class).B();
    }

    @Inject
    public AICompanionViewModelImpl(RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, LVEventSender lVEventSender, Logger logger, UserSessionService userSessionService, NotificationBuilder notificationBuilder, PostChatMessageUseCase postChatMessageUseCase, GetChatHistoryListUseCase getChatHistoryListUseCase, GetChatSessionByIdUseCase getChatSessionByIdUseCase, IsFeatureAvailableUseCase isFeatureAvailableUseCase, GetProductShortListUseCase getProductShortListUseCase, AddProductToWishlistUseCase addProductToWishlistUseCase, RequireCachedAppConfigUseCase requireCachedAppConfigUseCase, DeleteProductFromWishlistUseCase deleteProductFromWishlistUseCase, DeleteChatSessionFromHistoryUseCase deleteChatSessionFromHistoryUseCase, HasAICompanionVideoBeenDisplayedUseCase hasAICompanionVideoBeenDisplayedUseCase, UpdateAICompanionVideoVisibilityUseCase updateAICompanionVideoVisibilityUseCase, GetWishlistUseCase getWishlistUseCase) {
        List list;
        requireUserInAppDispatchUseCase.getClass();
        lVEventSender.getClass();
        logger.getClass();
        userSessionService.getClass();
        notificationBuilder.getClass();
        postChatMessageUseCase.getClass();
        getChatHistoryListUseCase.getClass();
        getChatSessionByIdUseCase.getClass();
        isFeatureAvailableUseCase.getClass();
        getProductShortListUseCase.getClass();
        addProductToWishlistUseCase.getClass();
        requireCachedAppConfigUseCase.getClass();
        deleteProductFromWishlistUseCase.getClass();
        deleteChatSessionFromHistoryUseCase.getClass();
        hasAICompanionVideoBeenDisplayedUseCase.getClass();
        updateAICompanionVideoVisibilityUseCase.getClass();
        getWishlistUseCase.getClass();
        this.f52729a = lVEventSender;
        this.f52730b = logger;
        this.f52731c = userSessionService;
        this.d = notificationBuilder;
        this.f52732e = postChatMessageUseCase;
        this.f52733f = getChatHistoryListUseCase;
        this.g = getChatSessionByIdUseCase;
        this.f52734h = isFeatureAvailableUseCase;
        this.f52735i = getProductShortListUseCase;
        this.f52736j = addProductToWishlistUseCase;
        this.f52737k = requireCachedAppConfigUseCase;
        this.l = deleteProductFromWishlistUseCase;
        this.m = deleteChatSessionFromHistoryUseCase;
        this.n = hasAICompanionVideoBeenDisplayedUseCase;
        this.o = updateAICompanionVideoVisibilityUseCase;
        this.p = getWishlistUseCase;
        this.q = requireUserInAppDispatchUseCase.f49912a.b();
        this.r = StateFlowKt.a(null);
        this.s = ChannelKt.a(0, 7, null);
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(new AICompanionViewState(false, null, null, null, null, null, false, false, null, 511, null));
        this.t = mutableStateFlowA;
        this.u = FlowKt.b(mutableStateFlowA);
        BuildersKt.c(ViewModelKt.a(this), null, null, new AICompanionViewModelImpl$checkIfAICompanionVideoHasBeenDisplayed$1(this, null), 3);
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass1(null), 3);
        BuildersKt.c(ViewModelKt.a(this), null, null, new AICompanionViewModelImpl$checkIfSessionIdCopyIsEnabled$1(this, null), 3);
        AICompanionConfig aICompanionConfig = requireCachedAppConfigUseCase.a().f67237j;
        if (aICompanionConfig != null && (list = aICompanionConfig.f67221a) != null) {
            while (true) {
                Object value = mutableStateFlowA.getValue();
                List list2 = list;
                if (mutableStateFlowA.i(value, AICompanionViewState.a((AICompanionViewState) value, false, null, null, null, list2, null, false, false, null, 495))) {
                    break;
                } else {
                    list = list2;
                }
            }
        }
        BuildersKt.c(ViewModelKt.a(this), null, null, new AICompanionViewModelImpl$listenToWishlistEvents$1(this, null), 3);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0098  */
    public static final void yc(AICompanionViewModelImpl aICompanionViewModelImpl, String str, boolean z) {
        Object value;
        AICompanionViewState aICompanionViewState;
        ArrayList arrayList;
        MutableStateFlow mutableStateFlow = aICompanionViewModelImpl.t;
        do {
            value = mutableStateFlow.getValue();
            aICompanionViewState = (AICompanionViewState) value;
            List<ChatMessageUiModel> list = aICompanionViewState.d.f52909b;
            arrayList = new ArrayList(CollectionsKt.t(list, 10));
            for (ChatMessageUiModel chatMessageUiModel : list) {
                List<ChatMessageSectionUiModel> list2 = chatMessageUiModel.d;
                ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
                for (ChatMessageSectionUiModel editorialSection : list2) {
                    if (editorialSection instanceof ChatMessageSectionUiModel.EditorialSection) {
                        EditorialModuleUiModel editorialModuleUiModel = ((ChatMessageSectionUiModel.EditorialSection) editorialSection).f52901a;
                        if (editorialModuleUiModel instanceof EditorialModuleUiModel.ProductCarouselUiModel) {
                            EditorialModuleUiModel.ProductCarouselUiModel productCarouselUiModel = (EditorialModuleUiModel.ProductCarouselUiModel) editorialModuleUiModel;
                            List<ProductCarouselItemUiModel> list3 = productCarouselUiModel.f50845b;
                            ArrayList arrayList3 = new ArrayList(CollectionsKt.t(list3, 10));
                            for (ProductCarouselItemUiModel productCarouselItemUiModelA : list3) {
                                String str2 = productCarouselItemUiModelA.f50867a;
                                SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
                                if (Intrinsics.c(str2, str)) {
                                    productCarouselItemUiModelA = ProductCarouselItemUiModel.a(productCarouselItemUiModelA, z);
                                }
                                arrayList3.add(productCarouselItemUiModelA);
                            }
                            editorialSection = new ChatMessageSectionUiModel.EditorialSection(EditorialModuleUiModel.ProductCarouselUiModel.b(productCarouselUiModel, arrayList3, 5));
                        }
                    }
                    arrayList2.add(editorialSection);
                }
                arrayList.add(ChatMessageUiModel.a(chatMessageUiModel, arrayList2, 55));
            }
        } while (!mutableStateFlow.i(value, AICompanionViewState.a(aICompanionViewState, false, null, null, ChatSessionUiModel.a(aICompanionViewState.d, arrayList), null, null, false, false, null, 503)));
    }

    @Override // com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModel
    public final void Cb(String str) {
        MutableStateFlow mutableStateFlow;
        Object value;
        AICompanionViewState aICompanionViewStateA;
        str.getClass();
        do {
            mutableStateFlow = this.t;
            value = mutableStateFlow.getValue();
            aICompanionViewStateA = (AICompanionViewState) value;
            List<ChatMessageUiModel> list = aICompanionViewStateA.d.f52909b;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                for (ChatMessageUiModel chatMessageUiModel : list) {
                    if (Intrinsics.c(chatMessageUiModel.f52903a, str) && !chatMessageUiModel.f52907f) {
                        ChatSessionUiModel chatSessionUiModel = aICompanionViewStateA.d;
                        List<ChatMessageUiModel> list2 = chatSessionUiModel.f52909b;
                        ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
                        for (ChatMessageUiModel chatMessageUiModelA : list2) {
                            if (Intrinsics.c(chatMessageUiModelA.f52903a, str)) {
                                chatMessageUiModelA = ChatMessageUiModel.a(chatMessageUiModelA, null, 31);
                            }
                            arrayList.add(chatMessageUiModelA);
                        }
                        aICompanionViewStateA = AICompanionViewState.a(aICompanionViewStateA, false, null, null, ChatSessionUiModel.a(chatSessionUiModel, arrayList), null, null, false, false, null, 503);
                        break;
                    }
                }
            }
        } while (!mutableStateFlow.i(value, aICompanionViewStateA));
    }

    @Override // com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModel
    public final void E1(String str) {
        str.getClass();
        s9(str);
    }

    @Override // com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModel
    public final void I2(String str) {
        str.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new AICompanionViewModelImpl$loadHistoryConversation$1(this, str, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModel
    public final void S8() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new AICompanionViewModelImpl$getChatSessionHistory$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModel
    public final void T4(AICompanionBottomSheet aICompanionBottomSheet) {
        this.r.setValue(aICompanionBottomSheet);
    }

    @Override // com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModel
    public final void Z1(String str, boolean z) {
        str.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new AICompanionViewModelImpl$addOrRemoveFromWishlist$1(z, this, str, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModel
    public final void Z7(String str) {
        str.getClass();
        zc(str);
    }

    @Override // com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getU() {
        return this.u;
    }

    @Override // com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModel
    public final Flow b() {
        return FlowKt.y(this.s);
    }

    @Override // com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModel
    public final StateFlow e() {
        return this.r;
    }

    @Override // com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModel
    public final void e3() {
        MutableStateFlow mutableStateFlow;
        Object value;
        do {
            mutableStateFlow = this.t;
            value = mutableStateFlow.getValue();
        } while (!mutableStateFlow.i(value, AICompanionViewState.a((AICompanionViewState) value, false, null, "", new ChatSessionUiModel(null, null, 3, null), null, null, false, false, null, 371)));
    }

    @Override // com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModel
    public final void k1(String str) {
        s9(str);
    }

    @Override // com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModel
    public final void o5(String str) {
        str.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new AICompanionViewModelImpl$onDeleteConversationClicked$1(this, str, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModel
    public final void s9(String str) {
        str.getClass();
        while (true) {
            MutableStateFlow mutableStateFlow = this.t;
            Object value = mutableStateFlow.getValue();
            String str2 = str;
            if (mutableStateFlow.i(value, AICompanionViewState.a((AICompanionViewState) value, false, null, str2, null, null, null, false, false, null, 507))) {
                return;
            } else {
                str = str2;
            }
        }
    }

    @Override // com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModel
    public final void v2() {
        String string = StringsKt.a0(((AICompanionViewState) this.u.getValue()).f52894c).toString();
        if (StringsKt.w(string)) {
            string = null;
        }
        if (string != null) {
            zc(string);
        }
    }

    @Override // com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModel
    public final void z5() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new AICompanionViewModelImpl$updateAICompanionVideoVisibility$1(this, null), 3);
    }

    /* JADX WARN: Type inference failed for: r13v2, types: [java.lang.Object, java.time.LocalDateTime] */
    public final void zc(String str) {
        MutableStateFlow mutableStateFlow;
        Object value;
        AICompanionViewState aICompanionViewState;
        ChatSessionUiModel chatSessionUiModel;
        List list;
        InAppDispatch inAppDispatch;
        Instant instantA;
        String string;
        ChatRole chatRole;
        List listO;
        ?? localDateTime;
        do {
            mutableStateFlow = this.t;
            value = mutableStateFlow.getValue();
            aICompanionViewState = (AICompanionViewState) value;
            chatSessionUiModel = aICompanionViewState.d;
            list = chatSessionUiModel.f52909b;
            str.getClass();
            inAppDispatch = this.q;
            inAppDispatch.getClass();
            instantA = Clock.System.a();
            string = instantA.toString();
            chatRole = ChatRole.USER;
            listO = CollectionsKt.O(new ChatMessageSectionUiModel.SimpleText(str));
            localDateTime = instantA.f75239b.atZone(TimeZone.getDefault().toZoneId()).toLocalDateTime();
            localDateTime.getClass();
        } while (!mutableStateFlow.i(value, AICompanionViewState.a(aICompanionViewState, false, null, "", ChatSessionUiModel.a(chatSessionUiModel, CollectionsKt.X(new ChatMessageUiModel(string, chatRole, instantA, listO, DateTimeUtils.h(inAppDispatch, localDateTime, FormatStyle.MEDIUM), false, 32, null), list)), null, null, false, true, null, 371)));
        BuildersKt.c(ViewModelKt.a(this), null, null, new AICompanionViewModelImpl$handleChatRequest$2(this, str, null), 3);
    }
}
