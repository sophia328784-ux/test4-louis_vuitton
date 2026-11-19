.class public final Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;
.implements Lcom/vuitton/android/presentation/chat/ActivityResultHandler;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002BA\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "Lcom/vuitton/android/presentation/chat/ActivityResultHandler;",
        "Lcom/vuitton/android/presentation/chat/ChatCoordinator;",
        "chatCoordinator",
        "Lcom/vuitton/android/domain/usecase/chat/StreamChatEventUseCase;",
        "streamChatEventUseCase",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "Lcom/vuitton/android/presentation/link/LinkHandler;",
        "linkHandler",
        "Lcom/vuitton/android/presentation/chat/ChatAttachable;",
        "chatAttachable",
        "Lcom/vuitton/android/core/events/LVEventSender;",
        "eventSender",
        "Lcom/vuitton/android/data/datasource/inappbanner/InAppBannerMemCacheDataSource;",
        "inAppBannerMemCacheDataSource",
        "<init>",
        "(Lcom/vuitton/android/presentation/chat/ChatCoordinator;Lcom/vuitton/android/domain/usecase/chat/StreamChatEventUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/link/LinkHandler;Lcom/vuitton/android/presentation/chat/ChatAttachable;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/data/datasource/inappbanner/InAppBannerMemCacheDataSource;)V",
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
.field public final b:Lcom/vuitton/android/presentation/chat/ChatCoordinator;

.field public final c:Lcom/vuitton/android/domain/usecase/chat/StreamChatEventUseCase;

.field public final d:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final e:Lcom/vuitton/android/presentation/link/LinkHandler;

.field public final f:Lcom/vuitton/android/presentation/chat/ChatAttachable;

.field public final g:Lcom/vuitton/android/core/events/LVEventSender;

.field public final h:Lcom/vuitton/android/data/datasource/inappbanner/InAppBannerMemCacheDataSource;

.field public final i:Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver$onBackPressedCallback$1;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/chat/ChatCoordinator;Lcom/vuitton/android/domain/usecase/chat/StreamChatEventUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/link/LinkHandler;Lcom/vuitton/android/presentation/chat/ChatAttachable;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/data/datasource/inappbanner/InAppBannerMemCacheDataSource;)V
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;->b:Lcom/vuitton/android/presentation/chat/ChatCoordinator;

    iput-object p2, p0, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;->c:Lcom/vuitton/android/domain/usecase/chat/StreamChatEventUseCase;

    iput-object p3, p0, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;->d:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    iput-object p4, p0, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;->e:Lcom/vuitton/android/presentation/link/LinkHandler;

    iput-object p5, p0, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;->f:Lcom/vuitton/android/presentation/chat/ChatAttachable;

    iput-object p6, p0, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;->g:Lcom/vuitton/android/core/events/LVEventSender;

    iput-object p7, p0, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;->h:Lcom/vuitton/android/data/datasource/inappbanner/InAppBannerMemCacheDataSource;

    new-instance p1, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver$onBackPressedCallback$1;

    invoke-direct {p1, p0}, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver$onBackPressedCallback$1;-><init>(Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;)V

    iput-object p1, p0, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;->i:Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver$onBackPressedCallback$1;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    instance-of v0, p1, Lcom/vuitton/android/presentation/chat/ChatHostActivity;

    if-eqz v0, :cond_1

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/app/Activity;

    iget-object p0, p0, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;->b:Lcom/vuitton/android/presentation/chat/ChatCoordinator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/chat/ChatCoordinator;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/chat/ChatCoordinator;->c:Lcom/vuitton/core/infrastructure/chat/AndroidPlatformContract;

    invoke-interface {p0, p1}, Lcom/vuitton/core/infrastructure/chat/AndroidPlatformContract;->i(Landroid/app/Activity;)V

    :cond_0
    return-void

    :cond_1
    const-string p0, "ChatLifecycleObserver requires the LifecycleOwner to be an Activity and implement ChatHostActivity"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    iget-object p0, p0, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;->b:Lcom/vuitton/android/presentation/chat/ChatCoordinator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/chat/ChatCoordinator;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/chat/ChatCoordinator;->j:Lkotlinx/coroutines/internal/ContextScope;

    new-instance v1, Lcom/vuitton/android/presentation/chat/ChatCoordinator$getConfirmationDetails$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/chat/ChatCoordinator$getConfirmationDetails$1;-><init>(Lcom/vuitton/android/presentation/chat/ChatCoordinator;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final c(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/vuitton/android/presentation/chat/ChatHostActivity;

    if-eqz v0, :cond_2

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/app/Activity;

    iget-object p0, p0, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;->b:Lcom/vuitton/android/presentation/chat/ChatCoordinator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/chat/ChatCoordinator;->e:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->POWERFRONT:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v1}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->b([Lcom/vuitton/foundation/model/domain/model/sync/Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/chat/ChatCoordinator;->f:Lcom/vuitton/android/domain/usecase/privacy/consent/chat/HasChatConsentUseCase;

    invoke-virtual {v0}, Lcom/vuitton/android/domain/usecase/privacy/consent/chat/HasChatConsentUseCase;->a()Z

    move-result v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/chat/ChatCoordinator;->d:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    invoke-virtual {v1}, Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;->a()Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->b0:Lcom/vuitton/foundation/model/domain/model/config/PowerFrontConfig;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vuitton/android/presentation/chat/ChatCoordinator;->c:Lcom/vuitton/core/infrastructure/chat/AndroidPlatformContract;

    invoke-interface {v0, p1}, Lcom/vuitton/core/infrastructure/chat/AndroidPlatformContract;->h(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/chat/ChatCoordinator;->b:Lcom/vuitton/android/domain/usecase/chat/HandleChatSystemUseCase;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/vuitton/android/domain/usecase/chat/HandleChatSystemUseCase;->a:Lcom/vuitton/foundation/contracts/chat/ChatManager;

    invoke-interface {p1, v1}, Lcom/vuitton/foundation/contracts/chat/ChatManager;->a(Lcom/vuitton/foundation/model/domain/model/config/PowerFrontConfig;)V

    iput-object v1, p0, Lcom/vuitton/android/presentation/chat/ChatCoordinator;->i:Lcom/vuitton/foundation/model/domain/model/config/PowerFrontConfig;

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string p0, "ChatLifecycleObserver requires the LifecycleOwner to be an Activity and implement ChatHostActivity"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method

.method public final d(IILandroid/content/Intent;)V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;->b:Lcom/vuitton/android/presentation/chat/ChatCoordinator;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/chat/ChatCoordinator;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/chat/ChatCoordinator;->c:Lcom/vuitton/core/infrastructure/chat/AndroidPlatformContract;

    invoke-interface {p0, p1, p2, p3}, Lcom/vuitton/core/infrastructure/chat/AndroidPlatformContract;->j(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/presentation/chat/ChatHostActivity;

    if-eqz v0, :cond_1

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->b(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v2, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;

    invoke-direct {v2}, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;-><init>()V

    new-instance v3, Ls3;

    const/16 v4, 0x11

    invoke-direct {v3, p0, v4}, Ls3;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2, v3}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->a(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v2

    new-instance v3, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver$listenToChatEvents$2;

    invoke-direct {v3, v0, p1, p0, v1}, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver$listenToChatEvents$2;-><init>(Landroidx/activity/result/ActivityResultLauncher;Landroidx/lifecycle/LifecycleOwner;Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    invoke-static {v2, v1, v1, v3, v0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->a(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v2

    new-instance v3, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver$listenToChatConsentEvents$1;

    invoke-direct {v3, p1, p0, v1}, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver$listenToChatConsentEvents$1;-><init>(Landroidx/lifecycle/LifecycleOwner;Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v1, v1, v3, v0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void

    :cond_1
    const-string p0, "ChatLifecycleObserver requires the LifecycleOwner to be an Activity and implement ChatHostActivity"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method

.method public final onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;->a(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public final onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;->c(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method
