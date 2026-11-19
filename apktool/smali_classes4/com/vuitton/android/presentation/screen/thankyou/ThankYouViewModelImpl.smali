.class public final Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModel;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002Bi\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u00a2\u0006\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModel;",
        "Landroidx/lifecycle/SavedStateHandle;",
        "savedStateHandle",
        "Lcom/vuitton/android/presentation/chat/ChatCoordinator;",
        "chatCoordinator",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "analyticsTracker",
        "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;",
        "appsFlyerTracker",
        "Lcom/vuitton/android/presentation/notification/NotificationBuilder;",
        "notificationBuilder",
        "Lcom/vuitton/android/domain/repository/LoginStateRepository;",
        "loginStateRepository",
        "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;",
        "getProfileUseCase",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "Lcom/vuitton/android/domain/usecase/cart/SendCheckoutFeedbackUseCase;",
        "sendCheckoutFeedbackUseCase",
        "Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYPurchaseEventUseCase;",
        "reportDYPurchaseEventUseCase",
        "Lcom/vuitton/android/domain/usecase/cart/GetConfirmationDetailsUseCase;",
        "getConfirmationDetailsUseCase",
        "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;",
        "requireCachedAppConfigUseCase",
        "<init>",
        "(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/presentation/chat/ChatCoordinator;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/repository/LoginStateRepository;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/cart/SendCheckoutFeedbackUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYPurchaseEventUseCase;Lcom/vuitton/android/domain/usecase/cart/GetConfirmationDetailsUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;)V",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcom/vuitton/android/presentation/chat/ChatCoordinator;

.field public final b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final c:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;

.field public final d:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

.field public final e:Lcom/vuitton/android/domain/repository/LoginStateRepository;

.field public final f:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

.field public final g:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

.field public final h:Lcom/vuitton/android/domain/usecase/cart/SendCheckoutFeedbackUseCase;

.field public final i:Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYPurchaseEventUseCase;

.field public final j:Lcom/vuitton/android/domain/usecase/cart/GetConfirmationDetailsUseCase;

.field public final k:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

.field public final l:Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;

.field public final m:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final n:Lkotlinx/coroutines/flow/StateFlow;

.field public final o:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final p:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final q:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final r:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final s:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final t:Lkotlinx/coroutines/flow/StateFlow;

.field public u:Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeatureFlags;

.field public v:Lkotlinx/coroutines/Job;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/presentation/chat/ChatCoordinator;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/repository/LoginStateRepository;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/cart/SendCheckoutFeedbackUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYPurchaseEventUseCase;Lcom/vuitton/android/domain/usecase/cart/GetConfirmationDetailsUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;->a:Lcom/vuitton/android/presentation/chat/ChatCoordinator;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;->c:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;->d:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;->e:Lcom/vuitton/android/domain/repository/LoginStateRepository;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;->f:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;->g:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;->h:Lcom/vuitton/android/domain/usecase/cart/SendCheckoutFeedbackUseCase;

    iput-object p10, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;->i:Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYPurchaseEventUseCase;

    iput-object p11, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;->j:Lcom/vuitton/android/domain/usecase/cart/GetConfirmationDetailsUseCase;

    iput-object p12, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;->k:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    invoke-static {}, Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;->a()Lkotlin/enums/EnumEntries;

    move-result-object p2

    const-string p3, "PREVIOUS_SCREEN"

    invoke-virtual {p1, p3}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, p3

    :goto_0
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;->l:Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;

    sget-object p1, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Loading;->a:Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Loading;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->b(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;->n:Lkotlinx/coroutines/flow/StateFlow;

    const/4 p1, 0x0

    const/4 p2, 0x7

    invoke-static {p3, p3, p1, p2}, Lkotlinx/coroutines/flow/SharedFlowKt;->b(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object p4

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;->o:Lkotlinx/coroutines/flow/SharedFlowImpl;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;->p:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-static {p3, p3, p1, p2}, Lkotlinx/coroutines/flow/SharedFlowKt;->b(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object p2

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;->q:Lkotlinx/coroutines/flow/SharedFlowImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;->r:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;->s:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;->t:Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p2

    new-instance p3, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$1;

    invoke-direct {p3, p0, p1}, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$1;-><init>(Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p2, p1, p1, p3, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final yc(Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$resolveDisplayName$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$resolveDisplayName$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$resolveDisplayName$1;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$resolveDisplayName$1;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$resolveDisplayName$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$resolveDisplayName$1;-><init>(Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$resolveDisplayName$1;->d:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$resolveDisplayName$1;->f:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$resolveDisplayName$1;->b:Ljava/lang/String;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p1, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    iget-boolean p0, v0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$resolveDisplayName$1;->c:Z

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$resolveDisplayName$1;->b:Ljava/lang/String;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;->e:Lcom/vuitton/android/domain/repository/LoginStateRepository;

    invoke-interface {p2}, Lcom/vuitton/android/domain/repository/LoginStateRepository;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    invoke-interface {p2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;

    invoke-virtual {p2}, Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;->a()Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;->f:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$resolveDisplayName$1;->b:Ljava/lang/String;

    iput-boolean p2, v0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$resolveDisplayName$1;->c:Z

    iput v5, v0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$resolveDisplayName$1;->f:I

    invoke-virtual {p0, v0}, Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    goto :goto_2

    :cond_4
    move v6, p2

    move-object p2, p0

    move p0, v6

    :goto_1
    check-cast p2, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$resolveDisplayName$1;->b:Ljava/lang/String;

    iput-boolean p0, v0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$resolveDisplayName$1;->c:Z

    iput v4, v0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$resolveDisplayName$1;->f:I

    invoke-interface {p2, v0}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    :goto_3
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p2, p1, Lkotlin/Result$Failure;

    if-eqz p2, :cond_6

    goto :goto_4

    :cond_6
    move-object v3, p1

    :goto_4
    check-cast v3, Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    if-eqz v3, :cond_8

    iget-object p1, v3, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->s:Ljava/lang/String;

    if-nez p1, :cond_7

    goto :goto_5

    :cond_7
    return-object p1

    :cond_8
    :goto_5
    return-object p0

    :cond_9
    return-object p1
.end method

.method public static final zc(Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;->g:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$retrieveFeatureFlags$1;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$retrieveFeatureFlags$1;

    iget v2, v1, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$retrieveFeatureFlags$1;->g:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$retrieveFeatureFlags$1;->g:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$retrieveFeatureFlags$1;

    invoke-direct {v1, p0, p1}, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$retrieveFeatureFlags$1;-><init>(Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v1, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$retrieveFeatureFlags$1;->e:Ljava/lang/Object;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, v1, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$retrieveFeatureFlags$1;->g:I

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v6, :cond_2

    if-ne v3, v5, :cond_1

    iget-boolean p0, v1, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$retrieveFeatureFlags$1;->d:Z

    iget-boolean v0, v1, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$retrieveFeatureFlags$1;->c:Z

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$retrieveFeatureFlags$1;->b:Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget-boolean p0, v1, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$retrieveFeatureFlags$1;->c:Z

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$retrieveFeatureFlags$1;->b:Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v7, v3

    move v3, p0

    move-object p0, v7

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;->k:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    invoke-virtual {p1}, Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;->a()Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    move-result-object p1

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->a0:Lcom/vuitton/foundation/model/domain/model/config/VatIncludedConfig;

    iget-boolean p1, p1, Lcom/vuitton/foundation/model/domain/model/config/VatIncludedConfig;->a:Z

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->NATIVE_THANK_YOU_PAGE_FEEDBACK:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v3}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v3

    iput-object p0, v1, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$retrieveFeatureFlags$1;->b:Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;

    iput-boolean p1, v1, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$retrieveFeatureFlags$1;->c:Z

    iput v6, v1, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$retrieveFeatureFlags$1;->g:I

    invoke-virtual {v0, v3, v4, v1}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_4

    goto :goto_2

    :cond_4
    move-object v7, v3

    move v3, p1

    move-object p1, v7

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sget-object v6, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->NATIVE_ACCOUNT_ACTIVATION:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v6}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v6

    iput-object p0, v1, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$retrieveFeatureFlags$1;->b:Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;

    iput-boolean v3, v1, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$retrieveFeatureFlags$1;->c:Z

    iput-boolean p1, v1, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$retrieveFeatureFlags$1;->d:Z

    iput v5, v1, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$retrieveFeatureFlags$1;->g:I

    invoke-virtual {v0, v6, v4, v1}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_5

    :goto_2
    return-object v2

    :cond_5
    move-object v1, p0

    move p0, p1

    move-object p1, v0

    move v0, v3

    :goto_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    new-instance v2, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeatureFlags;

    invoke-direct {v2, v0, p0, p1}, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeatureFlags;-><init>(ZZZ)V

    iput-object v2, v1, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;->u:Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeatureFlags;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final Ac()Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel;
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;->n:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState;

    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Success;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Success;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Success;->c:Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel;

    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Error;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Error;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Error;->a:Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel;

    return-object p0

    :cond_1
    instance-of p0, p0, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Loading;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    return-object v0

    :cond_2
    invoke-static {}, Lv40;->g()V

    return-object v0
.end method

.method public final B6()Lkotlinx/coroutines/flow/SharedFlowImpl;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;->p:Lkotlinx/coroutines/flow/SharedFlowImpl;

    return-object p0
.end method

.method public final Ba(Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouTrackingUiModel;)V
    .locals 13

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;->l:Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouTrackingUiModel$Screen;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    check-cast p1, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouTrackingUiModel$Screen;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouTrackingUiModel$Screen;->a:Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutConfirmationDetailUiModel;

    invoke-static {v0, p1}, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutConfirmationDetailUiModel;)Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    const-string v4, "order_review_page"

    const-string v5, "order"

    const-string v6, "checkout_order"

    invoke-direct/range {v2 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_2

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouTrackingUiModel$PurchaseConfirmation;

    if-eqz v1, :cond_1

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast p1, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouTrackingUiModel$PurchaseConfirmation;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouTrackingUiModel$PurchaseConfirmation;->a:Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutConfirmationDetailUiModel;

    invoke-static {v0, p1}, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutConfirmationDetailUiModel;)Ljava/util/List;

    move-result-object v9

    const/16 v10, 0x20

    const/4 v11, 0x0

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Purchase;->a:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Purchase;

    const-string v4, "order_review_page"

    const-string v5, "confirm_order"

    const-string v6, "buypath"

    const-string v7, "event"

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_2

    :cond_1
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouTrackingUiModel$Close;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Custom;

    const-string p1, "custom"

    invoke-direct {v2, p1}, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Custom;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x60

    const/4 v10, 0x0

    const-string v3, "order_review_page"

    const-string v4, "close_popin"

    const-string v5, "buypath"

    const-string v6, "click"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_0
    move-object v2, v1

    goto/16 :goto_2

    :cond_2
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouTrackingUiModel$FeedbackScreen;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v7, 0x11

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "checkout_feedback"

    const-string v4, "order"

    const-string v5, "checkout_order"

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouTrackingUiModel$CloseFeedbackNotification;

    if-eqz v0, :cond_4

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x61

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "order_review_page"

    const-string v4, "close_notification_toast_checkout_feedback"

    const-string v5, "buypath"

    const-string v6, "click"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouTrackingUiModel$CloseFeedbackScreen;

    if-eqz v0, :cond_5

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x61

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "checkout_feedback"

    const-string v4, "close_popin"

    const-string v5, "buypath"

    const-string v6, "click"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_5
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouTrackingUiModel$SelectFeedbackRating;

    const-string v1, "note_"

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    check-cast p1, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouTrackingUiModel$SelectFeedbackRating;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouTrackingUiModel$SelectFeedbackRating;->a:Ljava/lang/Integer;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    invoke-static {p1, v1}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :cond_6
    if-nez v2, :cond_7

    sget-object v2, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_7
    move-object v10, v2

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/4 v4, 0x0

    const-string v5, "checkout_feedback"

    const-string v6, "select_rating_intention"

    const-string v7, "buypath"

    const-string v8, "click"

    const/4 v9, 0x0

    const/16 v11, 0x21

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_1
    move-object v2, v3

    goto :goto_2

    :cond_8
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouTrackingUiModel$TypeFeedbackMessage;

    if-eqz v0, :cond_9

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v11, 0x61

    const/4 v12, 0x0

    const/4 v4, 0x0

    const-string v5, "checkout_feedback"

    const-string v6, "type_message"

    const-string v7, "buypath"

    const-string v8, "input"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    :cond_9
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouTrackingUiModel$SubmitFeedback;

    if-eqz v0, :cond_c

    check-cast p1, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouTrackingUiModel$SubmitFeedback;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouTrackingUiModel$SubmitFeedback;->a:Ljava/lang/Integer;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    invoke-static {p1, v1}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :cond_a
    if-nez v2, :cond_b

    sget-object v2, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_b
    move-object v10, v2

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/4 v4, 0x0

    const-string v5, "checkout_feedback"

    const-string v6, "submit_feedback"

    const-string v7, "buypath"

    const-string v8, "click"

    const/4 v9, 0x0

    const/16 v11, 0x21

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    :goto_2
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-virtual {p0, v2}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void

    :cond_c
    invoke-static {}, Lv40;->g()V

    return-void
.end method

.method public final V3(Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouBottomSheet$Feedback;)V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$showBottomSheet$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$showBottomSheet$1;-><init>(Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouBottomSheet;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;->n:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final e()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;->t:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final o6()V
    .locals 5

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;->Ac()Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v3, v0, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel;->d:Z

    if-eqz v3, :cond_0

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v3

    new-instance v4, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$submitFeedback$1;

    invoke-direct {v4, p0, v0, v2}, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$submitFeedback$1;-><init>(Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {v3, v2, v2, v4, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v3, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$submitFeedback$2;

    invoke-direct {v3, p0, v2}, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$submitFeedback$2;-><init>(Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v2, v2, v3, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onCleared()V
    .locals 1

    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    sget-object v0, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouTrackingUiModel$Close;->a:Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouTrackingUiModel$Close;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;->Ba(Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouTrackingUiModel;)V

    return-void
.end method

.method public final t1(Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel;)V
    .locals 14

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel;->b:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState;

    iget-object v4, p1, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xc8

    if-le v5, v6, :cond_0

    move v5, v6

    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v5

    rsub-int v11, v5, 0xc8

    if-nez v4, :cond_2

    invoke-static {v10}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    move v12, v7

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v7, 0x1

    goto :goto_1

    :goto_3
    const/4 v13, 0x1

    const/4 v9, 0x0

    move-object v8, p1

    invoke-static/range {v8 .. v13}, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel;->a(Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel;Ljava/lang/Integer;Ljava/lang/String;IZI)Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel;

    move-result-object p1

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;->Ac()Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel;

    move-result-object v5

    iget-object v6, p1, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel;->a:Ljava/lang/Integer;

    const/4 v7, 0x0

    if-eqz v5, :cond_3

    iget-object v9, v5, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel;->a:Ljava/lang/Integer;

    goto :goto_4

    :cond_3
    move-object v9, v7

    :goto_4
    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    new-instance v5, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouTrackingUiModel$SelectFeedbackRating;

    invoke-direct {v5, v4}, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouTrackingUiModel$SelectFeedbackRating;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {p0, v5}, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;->Ba(Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouTrackingUiModel;)V

    goto :goto_6

    :cond_4
    if-eqz v5, :cond_5

    iget-object v4, v5, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel;->b:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object v4, v7

    :goto_5
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;->v:Lkotlinx/coroutines/Job;

    if-eqz v4, :cond_6

    invoke-interface {v4, v7}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_6
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v4

    new-instance v5, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$onFeedbackChange$1$1;

    invoke-direct {v5, p0, v7}, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$onFeedbackChange$1$1;-><init>(Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    invoke-static {v4, v7, v7, v5, v6}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object v4

    iput-object v4, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;->v:Lkotlinx/coroutines/Job;

    :cond_7
    :goto_6
    instance-of v4, v3, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Success;

    if-eqz v4, :cond_8

    check-cast v3, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Success;

    iget-object v4, v3, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Success;->a:Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutConfirmationDetailUiModel;

    iget-object v5, v3, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Success;->b:Ljava/lang/String;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Success;->d:Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeatureFlags;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Success;

    invoke-direct {v6, v4, v5, p1, v3}, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Success;-><init>(Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutConfirmationDetailUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel;Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeatureFlags;)V

    move-object v3, v6

    goto :goto_7

    :cond_8
    instance-of v4, v3, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Error;

    if-eqz v4, :cond_9

    check-cast v3, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Error;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Error;->b:Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeatureFlags;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Error;

    invoke-direct {v4, p1, v3}, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Error;-><init>(Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel;Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeatureFlags;)V

    move-object v3, v4

    goto :goto_7

    :cond_9
    instance-of p1, v3, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Loading;

    if-eqz p1, :cond_b

    :goto_7
    invoke-interface {v1, v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    return-void

    :cond_a
    move-object p1, v8

    goto/16 :goto_0

    :cond_b
    invoke-static {}, Lv40;->g()V

    return-void
.end method

.method public final t6()Lkotlinx/coroutines/flow/SharedFlowImpl;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;->r:Lkotlinx/coroutines/flow/SharedFlowImpl;

    return-object p0
.end method
