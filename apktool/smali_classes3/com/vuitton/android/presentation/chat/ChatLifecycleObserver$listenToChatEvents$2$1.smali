.class final Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver$listenToChatEvents$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "event",
        "Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent;"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.presentation.chat.ChatLifecycleObserver$listenToChatEvents$2$1"
    f = "ChatLifecycleObserver.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Landroidx/lifecycle/LifecycleOwner;

.field public final synthetic d:Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;

.field public final synthetic e:Landroidx/activity/result/ActivityResultLauncher;


# direct methods
.method public constructor <init>(Landroidx/activity/result/ActivityResultLauncher;Landroidx/lifecycle/LifecycleOwner;Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p2, p0, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver$listenToChatEvents$2$1;->c:Landroidx/lifecycle/LifecycleOwner;

    iput-object p3, p0, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver$listenToChatEvents$2$1;->d:Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;

    iput-object p1, p0, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver$listenToChatEvents$2$1;->e:Landroidx/activity/result/ActivityResultLauncher;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance v0, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver$listenToChatEvents$2$1;

    iget-object v1, p0, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver$listenToChatEvents$2$1;->d:Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;

    iget-object v2, p0, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver$listenToChatEvents$2$1;->e:Landroidx/activity/result/ActivityResultLauncher;

    iget-object p0, p0, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver$listenToChatEvents$2$1;->c:Landroidx/lifecycle/LifecycleOwner;

    invoke-direct {v0, v2, p0, v1, p2}, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver$listenToChatEvents$2$1;-><init>(Landroidx/activity/result/ActivityResultLauncher;Landroidx/lifecycle/LifecycleOwner;Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver$listenToChatEvents$2$1;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver$listenToChatEvents$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver$listenToChatEvents$2$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver$listenToChatEvents$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver$listenToChatEvents$2$1;->c:Landroidx/lifecycle/LifecycleOwner;

    iget-object v1, p0, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver$listenToChatEvents$2$1;->d:Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;

    iget-object v2, p0, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver$listenToChatEvents$2$1;->b:Ljava/lang/Object;

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    instance-of p1, v2, Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$TargetedUrlReceived$WebAppLinkUrl;

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->b(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p1, v1, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;->e:Lcom/vuitton/android/presentation/link/LinkHandler;

    move-object v0, v2

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$TargetedUrlReceived$WebAppLinkUrl;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$TargetedUrlReceived$WebAppLinkUrl;->a:Ljava/lang/String;

    sget v4, Lcom/vuitton/android/presentation/link/LinkHandler;->e:I

    invoke-virtual {p1, v0, p0, v3}, Lcom/vuitton/android/presentation/link/LinkHandler;->c(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Landroidx/activity/result/ActivityResultLauncher;)Z

    :cond_0
    iget-object p0, v1, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;->d:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance p1, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnAppLinkClickEvent;

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$TargetedUrlReceived$WebAppLinkUrl;

    iget-object v0, v2, Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$TargetedUrlReceived$WebAppLinkUrl;->a:Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnAppLinkClickEvent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    iget-object p0, v1, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;->b:Lcom/vuitton/android/presentation/chat/ChatCoordinator;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/chat/ChatCoordinator;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/vuitton/android/presentation/chat/ChatCoordinator;->b:Lcom/vuitton/android/domain/usecase/chat/HandleChatSystemUseCase;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/chat/HandleChatSystemUseCase;->a:Lcom/vuitton/foundation/contracts/chat/ChatManager;

    invoke-interface {p0}, Lcom/vuitton/foundation/contracts/chat/ChatManager;->m()V

    :cond_1
    iget-object p0, v1, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;->b:Lcom/vuitton/android/presentation/chat/ChatCoordinator;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/chat/ChatCoordinator;->a()V

    goto/16 :goto_0

    :cond_2
    instance-of p1, v2, Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$UiNotification$AppShouldAskForPermissions;

    if-eqz p1, :cond_3

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    move-result-object p1

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    if-ne p1, v0, :cond_9

    iget-object p0, p0, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver$listenToChatEvents$2$1;->e:Landroidx/activity/result/ActivityResultLauncher;

    if-eqz p0, :cond_9

    const-string p1, "android.permission.CAMERA"

    invoke-virtual {p0, p1}, Landroidx/activity/result/ActivityResultLauncher;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    instance-of p0, v2, Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$UiNotification$ChatIsClosedUiNotification;

    if-eqz p0, :cond_4

    iget-object p0, v1, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;->i:Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver$onBackPressedCallback$1;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/activity/OnBackPressedCallback;->f(Z)V

    iget-object p0, v1, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;->i:Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver$onBackPressedCallback$1;

    invoke-virtual {p0}, Landroidx/activity/OnBackPressedCallback;->e()V

    goto/16 :goto_0

    :cond_4
    instance-of p0, v2, Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$UiNotification$ChatIsVisibleUiNotification;

    const/4 p1, 0x1

    if-eqz p0, :cond_7

    iget-object p0, v1, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;->i:Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver$onBackPressedCallback$1;

    invoke-virtual {p0, p1}, Landroidx/activity/OnBackPressedCallback;->f(Z)V

    move-object p0, v0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->b(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object v2, v1, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;->i:Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver$onBackPressedCallback$1;

    invoke-virtual {p1, v2, v0}, Landroidx/activity/OnBackPressedDispatcher;->b(Landroidx/activity/OnBackPressedCallback;Landroidx/lifecycle/LifecycleOwner;)V

    :cond_5
    iget-object p1, v1, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;->d:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    sget-object v1, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$PowerfrontScreen;->a:Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$PowerfrontScreen;

    invoke-static {v1}, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    instance-of p1, v0, Lcom/vuitton/android/presentation/chat/ChatHostActivity;

    if-eqz p1, :cond_6

    instance-of p1, v0, Landroid/app/Activity;

    if-eqz p1, :cond_6

    invoke-static {p0}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->b(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    if-eqz p0, :cond_9

    const p1, 0x7f0a0274

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/webkit/WebView;

    if-eqz p0, :cond_9

    new-instance p1, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver$listenToKeyboardEvents$2$1$1;

    invoke-direct {p1, p0}, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver$listenToKeyboardEvents$2$1$1;-><init>(Landroid/webkit/WebView;)V

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->A(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V

    goto :goto_0

    :cond_6
    const-string p0, "ChatLifecycleObserver requires the LifecycleOwner to be an Activity and implement ChatHostActivity"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v3

    :cond_7
    instance-of p0, v2, Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$UiNotification$UnReadCountNotification;

    if-eqz p0, :cond_9

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$UiNotification$UnReadCountNotification;

    iget p0, v2, Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent$UiNotification$UnReadCountNotification;->a:I

    iget-object v2, v1, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;->h:Lcom/vuitton/android/data/datasource/inappbanner/InAppBannerMemCacheDataSource;

    if-ne p0, p1, :cond_8

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/inappbanner/InAppBanner;

    check-cast v0, Landroid/content/Context;

    const p0, 0x7f140581

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f140582

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object p0

    const-wide/16 v7, 0x7

    invoke-virtual {p0, v7, v8}, Ljava/time/Instant;->plusSeconds(J)Ljava/time/Instant;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Lc;

    const/16 p0, 0xf

    invoke-direct {v9, v1, p0}, Lc;-><init>(Ljava/lang/Object;I)V

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/vuitton/foundation/model/domain/model/inappbanner/InAppBanner;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/Instant;Ljava/time/Instant;ZLkotlin/jvm/functions/Function2;)V

    iget-object p0, v2, Lcom/vuitton/android/data/datasource/inappbanner/InAppBannerMemCacheDataSource;->a:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object p1, v2, Lcom/vuitton/android/data/datasource/inappbanner/InAppBannerMemCacheDataSource;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit p0

    throw p1

    :cond_8
    invoke-virtual {v2}, Lcom/vuitton/android/data/datasource/inappbanner/InAppBannerMemCacheDataSource;->a()V

    :cond_9
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
