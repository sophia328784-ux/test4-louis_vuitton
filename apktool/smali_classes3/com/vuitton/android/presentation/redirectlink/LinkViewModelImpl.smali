.class public final Lcom/vuitton/android/presentation/redirectlink/LinkViewModelImpl;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/redirectlink/LinkViewModel;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B!\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/redirectlink/LinkViewModelImpl;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/vuitton/android/presentation/redirectlink/LinkViewModel;",
        "Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;",
        "emitter",
        "Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;",
        "deepLinkHandler",
        "Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler;",
        "appLinkHandler",
        "<init>",
        "(Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler;)V",
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
.field public final a:Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;

.field public final b:Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler;

.field public final c:Lkotlinx/coroutines/flow/StateFlow;

.field public final d:Lkotlinx/coroutines/flow/Flow;

.field public final e:Lkotlinx/coroutines/flow/SharedFlow;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/presentation/redirectlink/LinkViewModelImpl;->a:Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;

    iput-object p3, p0, Lcom/vuitton/android/presentation/redirectlink/LinkViewModelImpl;->b:Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler;

    iget-object p2, p1, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->b:Lkotlinx/coroutines/flow/StateFlow;

    iput-object p2, p0, Lcom/vuitton/android/presentation/redirectlink/LinkViewModelImpl;->c:Lkotlinx/coroutines/flow/StateFlow;

    iget-object p2, p1, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->d:Lkotlinx/coroutines/flow/Flow;

    iput-object p2, p0, Lcom/vuitton/android/presentation/redirectlink/LinkViewModelImpl;->d:Lkotlinx/coroutines/flow/Flow;

    iget-object p1, p1, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->f:Lkotlinx/coroutines/flow/SharedFlow;

    iput-object p1, p0, Lcom/vuitton/android/presentation/redirectlink/LinkViewModelImpl;->e:Lkotlinx/coroutines/flow/SharedFlow;

    return-void
.end method


# virtual methods
.method public final B8()V
    .locals 5

    iget-object p0, p0, Lcom/vuitton/android/presentation/redirectlink/LinkViewModelImpl;->a:Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;

    iget-object v0, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;->j:Lcom/vuitton/android/presentation/redirectlink/DeepLinkConnectivityHandler;

    iget-object p0, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;->e:Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;->b:Lcom/vuitton/android/presentation/redirectlink/PendingPostAuthAction;

    instance-of v2, v1, Lcom/vuitton/android/presentation/redirectlink/PendingPostAuthAction$PairingV2;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    iget-object p0, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkConnectivityHandler;->c:Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;->b:Lcom/vuitton/android/presentation/redirectlink/PendingPostAuthAction;

    instance-of v2, v1, Lcom/vuitton/android/presentation/redirectlink/PendingPostAuthAction$PairingV2;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/vuitton/android/presentation/redirectlink/PendingPostAuthAction$PairingV2;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/vuitton/android/presentation/redirectlink/PendingPostAuthAction$PairingV2;->a:Lcom/vuitton/android/presentation/screen/connectivity/watch/PairWatchV2Ui;

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    if-eqz v1, :cond_3

    iget-object v2, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkConnectivityHandler;->a:Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;

    iget-object v0, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkConnectivityHandler;->b:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    invoke-virtual {v0}, Lcom/vuitton/android/domain/service/authentication/UserSessionService;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v3}, Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;->b(Lcom/vuitton/android/presentation/screen/connectivity/watch/PairWatchV2Ui;)V

    new-instance p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToMyWatchFromPairingWith;

    invoke-direct {p0, v1}, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToMyWatchFromPairingWith;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/watch/PairWatchV2Ui;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v2, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->c:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-interface {v0, p0}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    invoke-virtual {p0, v1}, Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;->b(Lcom/vuitton/android/presentation/screen/connectivity/watch/PairWatchV2Ui;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v2, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->c:Lkotlinx/coroutines/channels/BufferedChannel;

    sget-object v0, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToAuthenticateDeeplinkV2;->a:Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToAuthenticateDeeplinkV2;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void

    :cond_4
    sget-object v2, Lcom/vuitton/android/presentation/redirectlink/PendingPostAuthAction$Travel;->a:Lcom/vuitton/android/presentation/redirectlink/PendingPostAuthAction$Travel;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object p0, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkConnectivityHandler;->a:Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;

    iget-object v1, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkConnectivityHandler;->b:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    invoke-virtual {v1}, Lcom/vuitton/android/domain/service/authentication/UserSessionService;->b()Z

    move-result v1

    iget-object v0, v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkConnectivityHandler;->c:Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;->b:Lcom/vuitton/android/presentation/redirectlink/PendingPostAuthAction;

    instance-of v2, v1, Lcom/vuitton/android/presentation/redirectlink/PendingPostAuthAction$Travel;

    if-nez v2, :cond_5

    move-object v3, v1

    :cond_5
    iput-object v3, v0, Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;->b:Lcom/vuitton/android/presentation/redirectlink/PendingPostAuthAction;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->c:Lkotlinx/coroutines/channels/BufferedChannel;

    sget-object v0, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToTravelFromDeepLink;->a:Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToTravelFromDeepLink;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v0, Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;->b:Lcom/vuitton/android/presentation/redirectlink/PendingPostAuthAction;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;->c:Lkotlinx/coroutines/channels/BufferedChannel;

    sget-object v0, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToAuthenticateFromTravel;->a:Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToAuthenticateFromTravel;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_7
    instance-of v0, v1, Lcom/vuitton/android/presentation/redirectlink/PendingPostAuthAction$LoginRedirect;

    if-nez v0, :cond_9

    if-nez v1, :cond_8

    goto :goto_2

    :cond_8
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_9
    :goto_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;->a(Z)V

    return-void
.end method

.method public final Eb()Lkotlinx/coroutines/flow/SharedFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/redirectlink/LinkViewModelImpl;->e:Lkotlinx/coroutines/flow/SharedFlow;

    return-object p0
.end method

.method public final Z6()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/redirectlink/LinkViewModelImpl;->c:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final Zb()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/redirectlink/LinkViewModelImpl$handleRepairCreateRedirection$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/redirectlink/LinkViewModelImpl$handleRepairCreateRedirection$1;-><init>(Lcom/vuitton/android/presentation/redirectlink/LinkViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final c2()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/redirectlink/LinkViewModelImpl;->d:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method public final f1()V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/redirectlink/LinkViewModelImpl;->b:Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler;->b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    sget-object v0, Lcom/vuitton/android/presentation/applink/AppLinkTrackingUiModel$SwapLocaleScreen;->a:Lcom/vuitton/android/presentation/applink/AppLinkTrackingUiModel$SwapLocaleScreen;

    invoke-static {v0}, Lcom/vuitton/android/presentation/applink/AppLinkTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/applink/AppLinkTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void
.end method

.method public final l9(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 8

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/redirectlink/LinkViewModelImpl$dispatchDeepLinks$1;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/vuitton/android/presentation/redirectlink/LinkViewModelImpl$dispatchDeepLinks$1;-><init>(Lcom/vuitton/android/presentation/redirectlink/LinkViewModelImpl;Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    const/4 p1, 0x0

    invoke-static {v0, p1, p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final wc(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/redirectlink/LinkViewModelImpl$handleAppLink$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/redirectlink/LinkViewModelImpl$handleAppLink$1;-><init>(Lcom/vuitton/android/presentation/redirectlink/LinkViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
