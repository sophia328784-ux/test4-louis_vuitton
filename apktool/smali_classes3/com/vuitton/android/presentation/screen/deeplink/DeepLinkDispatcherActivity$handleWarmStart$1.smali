.class final Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity$handleWarmStart$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
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
    c = "com.vuitton.android.presentation.screen.deeplink.DeepLinkDispatcherActivity$handleWarmStart$1"
    f = "DeepLinkDispatcherActivity.kt"
    l = {
        0x95
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lw1;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity;Ljava/lang/String;Lw1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity$handleWarmStart$1;->c:Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity$handleWarmStart$1;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity$handleWarmStart$1;->e:Lw1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity$handleWarmStart$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity$handleWarmStart$1;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity$handleWarmStart$1;->e:Lw1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity$handleWarmStart$1;->c:Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity$handleWarmStart$1;-><init>(Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity;Ljava/lang/String;Lw1;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity$handleWarmStart$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity$handleWarmStart$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity$handleWarmStart$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v1, p0

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v1, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity$handleWarmStart$1;->b:I

    const/4 v3, 0x1

    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity$handleWarmStart$1;->c:Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity;

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_0

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v2, v5, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity;->p:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v2}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherViewModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherViewModel;->e:Lkotlinx/coroutines/flow/StateFlow;

    new-instance v6, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity$handleWarmStart$1$routingDataState$1;

    const/4 v7, 0x2

    invoke-direct {v6, v7, v4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    iput v3, v1, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity$handleWarmStart$1;->b:I

    invoke-static {v2, v6, v1}, Lkotlinx/coroutines/flow/FlowKt;->q(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast v2, Lcom/vuitton/android/presentation/screen/deeplink/RoutingDataState;

    instance-of v0, v2, Lcom/vuitton/android/presentation/screen/deeplink/RoutingDataState$Success;

    const-class v6, Lcom/vuitton/android/presentation/screen/main/MainActivity;

    if-eqz v0, :cond_36

    invoke-virtual {v5}, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity;->D()Lcom/vuitton/foundation/logger/Logger;

    check-cast v2, Lcom/vuitton/android/presentation/screen/deeplink/RoutingDataState$Success;

    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/deeplink/RoutingDataState$Success;->a:Lcom/vuitton/android/presentation/link/models/LinkRoutingData;

    iget-object v2, v5, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity;->n:Lcom/vuitton/android/presentation/link/parsing/WarmStartLinkExclusionPolicy;

    if-eqz v2, :cond_35

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lcom/vuitton/android/presentation/link/parsing/WarmStartLinkExclusionPolicy;->a:Lcom/vuitton/android/presentation/link/parsing/LinkClassifier;

    iget-object v7, v1, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity$handleWarmStart$1;->d:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/vuitton/android/presentation/link/parsing/LinkClassifier;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/vuitton/android/presentation/link/models/LinkRoutingData;->a:Ljava/util/Set;

    invoke-interface {v2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v7}, Lcom/vuitton/android/presentation/link/parsing/AppLinkPatterns;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-virtual {v5}, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity;->D()Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v5, v6}, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity;->B(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_13

    :cond_4
    iget-object v2, v5, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity;->l:Lcom/vuitton/android/presentation/link/parsing/LinkParser;

    if-eqz v2, :cond_34

    invoke-virtual {v2, v7}, Lcom/vuitton/android/presentation/link/parsing/LinkParser;->a(Ljava/lang/String;)Lcom/vuitton/android/presentation/link/models/ParsedLink;

    move-result-object v2

    if-eqz v2, :cond_33

    iget-object v7, v5, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity;->m:Lcom/vuitton/android/presentation/link/navigation/LinkNavigator;

    if-eqz v7, :cond_32

    iget-object v8, v7, Lcom/vuitton/android/presentation/link/navigation/LinkNavigator;->d:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    iget-boolean v9, v0, Lcom/vuitton/android/presentation/link/models/LinkRoutingData;->c:Z

    iget-boolean v10, v0, Lcom/vuitton/android/presentation/link/models/LinkRoutingData;->d:Z

    instance-of v11, v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$StoryArticle;

    sget-object v12, Lcom/vuitton/android/presentation/link/models/LinkTarget$ForwardToExistingFlow;->a:Lcom/vuitton/android/presentation/link/models/LinkTarget$ForwardToExistingFlow;

    if-eqz v11, :cond_6

    check-cast v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$StoryArticle;

    iget-object v0, v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$StoryArticle;->b:Ljava/lang/String;

    const/16 v2, 0x7d

    invoke-static {v4, v0, v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinationsKt;->c(Landroid/net/Uri;Ljava/lang/String;I)Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0, v5}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v0, v4

    :goto_1
    invoke-static {v0}, Lcom/vuitton/android/presentation/link/navigation/LinkNavigator;->d(Landroid/content/Intent;)Lcom/vuitton/android/presentation/link/models/LinkTarget;

    move-result-object v0

    :goto_2
    move-object v3, v4

    move-object v4, v6

    move-object v11, v7

    move-object/from16 v18, v12

    :goto_3
    move-object v12, v0

    goto/16 :goto_11

    :cond_6
    instance-of v11, v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$ImmersiveArticle;

    if-eqz v11, :cond_8

    check-cast v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$ImmersiveArticle;

    iget-object v0, v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$ImmersiveArticle;->b:Landroid/net/Uri;

    const/16 v2, 0x7e

    invoke-static {v0, v4, v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinationsKt;->c(Landroid/net/Uri;Ljava/lang/String;I)Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {v0, v5}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_4

    :cond_7
    move-object v0, v4

    :goto_4
    invoke-static {v0}, Lcom/vuitton/android/presentation/link/navigation/LinkNavigator;->d(Landroid/content/Intent;)Lcom/vuitton/android/presentation/link/models/LinkTarget;

    move-result-object v0

    goto :goto_2

    :cond_8
    instance-of v11, v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$WebView;

    if-eqz v11, :cond_9

    new-instance v0, Lcom/vuitton/android/presentation/link/models/LinkTarget$StandaloneIntent;

    move-object v3, v4

    sget-object v4, Lcom/vuitton/android/presentation/screen/webview/WebViewActivity;->v:Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$Companion;

    check-cast v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$WebView;

    iget-object v2, v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$WebView;->b:Ljava/lang/String;

    const/4 v14, 0x0

    const/16 v15, 0x7fc

    move-object v8, v7

    const/4 v7, 0x0

    move-object v9, v8

    const/4 v8, 0x0

    move-object v10, v9

    const/4 v9, 0x0

    move-object v11, v10

    const/4 v10, 0x0

    move-object v13, v11

    const/4 v11, 0x0

    move-object/from16 v16, v12

    const/4 v12, 0x0

    move-object/from16 v17, v13

    const/4 v13, 0x0

    move-object/from16 v19, v6

    move-object v6, v2

    move-object/from16 v2, v19

    invoke-static/range {v4 .. v15}, Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$Companion;Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;Ljava/lang/String;ZZLcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;I)Landroid/content/Intent;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/vuitton/android/presentation/link/models/LinkTarget$StandaloneIntent;-><init>(Landroid/content/Intent;)V

    move-object v12, v0

    move-object v4, v2

    move-object/from16 v18, v16

    :goto_5
    move-object/from16 v11, v17

    goto/16 :goto_11

    :cond_9
    move-object/from16 v16, v6

    move-object v6, v4

    move-object/from16 v4, v16

    move-object/from16 v17, v7

    move-object/from16 v16, v12

    instance-of v7, v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$StoreLocator;

    if-eqz v7, :cond_a

    new-instance v2, Lcom/vuitton/android/presentation/link/models/LinkTarget$StandaloneIntent;

    iget-object v0, v0, Lcom/vuitton/android/presentation/link/models/LinkRoutingData;->b:Ljava/lang/String;

    move-object v3, v4

    sget-object v4, Lcom/vuitton/android/presentation/screen/webview/WebViewActivity;->v:Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$Companion;

    const/4 v14, 0x0

    const/16 v15, 0x7fc

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 p1, v3

    move-object v3, v6

    move-object/from16 v18, v16

    move-object v6, v0

    invoke-static/range {v4 .. v15}, Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$Companion;Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;Ljava/lang/String;ZZLcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;I)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/vuitton/android/presentation/link/models/LinkTarget$StandaloneIntent;-><init>(Landroid/content/Intent;)V

    move-object/from16 v4, p1

    move-object v12, v2

    goto :goto_5

    :cond_a
    move v0, v3

    move-object v12, v4

    move-object v3, v6

    move-object/from16 v18, v16

    move-object/from16 v11, v17

    instance-of v4, v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$SharedWishlist;

    if-eqz v4, :cond_b

    new-instance v0, Lcom/vuitton/android/presentation/link/models/LinkTarget$StandaloneIntent;

    sget-object v4, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;->t:Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$Companion;

    check-cast v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$SharedWishlist;

    iget-object v7, v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$SharedWishlist;->b:Ljava/util/List;

    iget-object v8, v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$SharedWishlist;->c:Ljava/lang/String;

    const/4 v9, 0x2

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$Companion;Landroid/content/Context;ZLjava/util/List;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/vuitton/android/presentation/link/models/LinkTarget$StandaloneIntent;-><init>(Landroid/content/Intent;)V

    :goto_6
    move-object v4, v12

    goto/16 :goto_3

    :cond_b
    sget-object v4, Lcom/vuitton/android/presentation/link/models/ParsedLink$PersonalWishlist;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$PersonalWishlist;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_14

    const-class v2, Landroid/app/ActivityManager;

    invoke-virtual {v5, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    if-nez v2, :cond_c

    goto/16 :goto_b

    :cond_c
    :try_start_0
    sget-object v4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Ljava/lang/Iterable;

    instance-of v4, v2, Ljava/util/Collection;

    if-eqz v4, :cond_d

    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_8

    :catchall_0
    move-exception v0

    goto :goto_9

    :cond_d
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$AppTask;

    invoke-virtual {v4}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v4

    if-eqz v4, :cond_f

    iget-object v4, v4, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_f

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-class v9, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v0

    goto :goto_7

    :cond_f
    move v4, v6

    :goto_7
    if-eqz v4, :cond_e

    move v6, v0

    :cond_10
    :goto_8
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_a

    :goto_9
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v2, Lkotlin/Result$Failure;

    invoke-direct {v2, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v2

    :goto_a
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v4, v0, Lkotlin/Result$Failure;

    if-eqz v4, :cond_11

    move-object v0, v2

    :cond_11
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    :goto_b
    if-eqz v6, :cond_13

    invoke-virtual {v8}, Lcom/vuitton/android/domain/service/authentication/UserSessionService;->b()Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v4, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;->t:Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$Companion;

    const/4 v8, 0x0

    const/16 v9, 0xe

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$Companion;Landroid/content/Context;ZLjava/util/List;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    goto :goto_c

    :cond_12
    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->u:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;

    sget-object v2, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;->WELCOME_PAGE_WITH_EXIT_REDIRECT_WISHLIST:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    sget-object v4, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;->WISHLIST:Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;

    sget-object v6, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->WISHLIST:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v2, v4, v6}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;->a(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;)Landroid/content/Intent;

    move-result-object v4

    goto :goto_c

    :cond_13
    move-object v4, v3

    :goto_c
    invoke-static {v4}, Lcom/vuitton/android/presentation/link/navigation/LinkNavigator;->d(Landroid/content/Intent;)Lcom/vuitton/android/presentation/link/models/LinkTarget;

    move-result-object v0

    goto/16 :goto_6

    :cond_14
    instance-of v0, v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$CatalogProductList;

    if-eqz v0, :cond_15

    check-cast v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$CatalogProductList;

    iget-object v0, v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$CatalogProductList;->b:Landroid/net/Uri;

    invoke-static {v5, v0}, Lcom/vuitton/android/presentation/link/navigation/LinkNavigator;->a(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/vuitton/android/presentation/link/navigation/LinkNavigator;->d(Landroid/content/Intent;)Lcom/vuitton/android/presentation/link/models/LinkTarget;

    move-result-object v0

    goto/16 :goto_6

    :cond_15
    instance-of v0, v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$AuthenticateGoogle;

    if-nez v0, :cond_16

    instance-of v0, v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$AuthenticateLine;

    if-nez v0, :cond_16

    instance-of v0, v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$AuthenticateKakao;

    if-nez v0, :cond_16

    instance-of v0, v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$RepairCreate;

    if-nez v0, :cond_16

    instance-of v0, v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$Appointments;

    if-eqz v0, :cond_17

    :cond_16
    move-object v4, v12

    goto :goto_f

    :cond_17
    instance-of v0, v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$LegalNotices;

    if-eqz v0, :cond_18

    new-instance v0, Lcom/vuitton/android/presentation/link/models/LinkTarget$StandaloneIntent;

    check-cast v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$LegalNotices;

    iget-object v2, v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$LegalNotices;->b:Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/vuitton/android/presentation/link/navigation/LinkNavigator;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/vuitton/android/presentation/link/models/LinkTarget$StandaloneIntent;-><init>(Landroid/content/Intent;)V

    goto/16 :goto_6

    :cond_18
    instance-of v0, v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$OrderConfirmation;

    if-eqz v0, :cond_1b

    check-cast v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$OrderConfirmation;

    iget-object v4, v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$OrderConfirmation;->b:Ljava/lang/String;

    iget-object v0, v11, Lcom/vuitton/android/presentation/link/navigation/LinkNavigator;->b:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    invoke-virtual {v0}, Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;->a()Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->l:Ljava/lang/String;

    if-eqz v4, :cond_1a

    invoke-static {v4, v0}, Lcom/vuitton/android/presentation/extensions/StringAndroidExtKt;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    move-object v6, v4

    goto :goto_d

    :cond_19
    move-object v6, v3

    :goto_d
    if-eqz v6, :cond_1a

    sget-object v4, Lcom/vuitton/android/presentation/screen/webview/WebViewActivity;->v:Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$Companion;

    const/4 v14, 0x0

    const/16 v15, 0x7f8

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v17, v11

    const/4 v11, 0x0

    move-object v2, v12

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v4 .. v15}, Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$Companion;Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;Ljava/lang/String;ZZLcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;I)Landroid/content/Intent;

    move-result-object v4

    goto :goto_e

    :cond_1a
    move-object/from16 v17, v11

    move-object v2, v12

    move-object v4, v3

    :goto_e
    invoke-static {v4}, Lcom/vuitton/android/presentation/link/navigation/LinkNavigator;->d(Landroid/content/Intent;)Lcom/vuitton/android/presentation/link/models/LinkTarget;

    move-result-object v12

    move-object v4, v2

    goto/16 :goto_5

    :cond_1b
    move-object v4, v12

    instance-of v0, v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$AudioGuide;

    if-eqz v0, :cond_1d

    :cond_1c
    :goto_f
    move-object/from16 v12, v18

    goto/16 :goto_11

    :cond_1d
    sget-object v0, Lcom/vuitton/android/presentation/link/models/ParsedLink$BareExplore;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$BareExplore;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_f

    :cond_1e
    sget-object v0, Lcom/vuitton/android/presentation/link/models/ParsedLink$MyLv;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$MyLv;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v12, Lcom/vuitton/android/presentation/link/models/LinkTarget$StandaloneIntent;

    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity;->s:Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v3}, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity$Companion;->a(Landroid/content/Context;Lcom/vuitton/android/presentation/link/models/ParsedLink;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {v12, v0}, Lcom/vuitton/android/presentation/link/models/LinkTarget$StandaloneIntent;-><init>(Landroid/content/Intent;)V

    goto/16 :goto_11

    :cond_1f
    sget-object v0, Lcom/vuitton/android/presentation/link/models/ParsedLink$LvPassQrCode;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$LvPassQrCode;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    new-instance v12, Lcom/vuitton/android/presentation/link/models/LinkTarget$StandaloneIntent;

    invoke-virtual {v8}, Lcom/vuitton/android/domain/service/authentication/UserSessionService;->b()Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Lcom/vuitton/android/presentation/screen/account/lvpass/LVPassActivity;->s:Lcom/vuitton/android/presentation/screen/account/lvpass/LVPassActivity$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/vuitton/android/presentation/screen/account/lvpass/LVPassActivity$Companion;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_10

    :cond_20
    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->u:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;

    sget-object v2, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;->WELCOME_PAGE_WITH_EXIT_REDIRECT_LVPASS:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    sget-object v6, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;->MY_LV:Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;

    sget-object v7, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->MY_LV:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v2, v6, v7}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;->a(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;)Landroid/content/Intent;

    move-result-object v0

    :goto_10
    invoke-direct {v12, v0}, Lcom/vuitton/android/presentation/link/models/LinkTarget$StandaloneIntent;-><init>(Landroid/content/Intent;)V

    goto/16 :goto_11

    :cond_21
    sget-object v0, Lcom/vuitton/android/presentation/link/models/ParsedLink$MyLvPrivacySettings;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$MyLvPrivacySettings;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    new-instance v12, Lcom/vuitton/android/presentation/link/models/LinkTarget$StandaloneIntent;

    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity;->s:Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v2}, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity$Companion;->a(Landroid/content/Context;Lcom/vuitton/android/presentation/link/models/ParsedLink;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {v12, v0}, Lcom/vuitton/android/presentation/link/models/LinkTarget$StandaloneIntent;-><init>(Landroid/content/Intent;)V

    goto/16 :goto_11

    :cond_22
    sget-object v0, Lcom/vuitton/android/presentation/link/models/ParsedLink$MyOrders;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$MyOrders;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    new-instance v12, Lcom/vuitton/android/presentation/link/models/LinkTarget$StandaloneIntent;

    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity;->s:Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v2}, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity$Companion;->a(Landroid/content/Context;Lcom/vuitton/android/presentation/link/models/ParsedLink;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {v12, v0}, Lcom/vuitton/android/presentation/link/models/LinkTarget$StandaloneIntent;-><init>(Landroid/content/Intent;)V

    goto/16 :goto_11

    :cond_23
    instance-of v0, v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$OrderDetail;

    if-eqz v0, :cond_24

    new-instance v12, Lcom/vuitton/android/presentation/link/models/LinkTarget$StandaloneIntent;

    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity;->s:Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v2}, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity$Companion;->a(Landroid/content/Context;Lcom/vuitton/android/presentation/link/models/ParsedLink;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {v12, v0}, Lcom/vuitton/android/presentation/link/models/LinkTarget$StandaloneIntent;-><init>(Landroid/content/Intent;)V

    goto/16 :goto_11

    :cond_24
    sget-object v0, Lcom/vuitton/android/presentation/link/models/ParsedLink$Gdpr;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$Gdpr;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    new-instance v12, Lcom/vuitton/android/presentation/link/models/LinkTarget$StandaloneIntent;

    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity;->s:Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v2}, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity$Companion;->a(Landroid/content/Context;Lcom/vuitton/android/presentation/link/models/ParsedLink;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {v12, v0}, Lcom/vuitton/android/presentation/link/models/LinkTarget$StandaloneIntent;-><init>(Landroid/content/Intent;)V

    goto/16 :goto_11

    :cond_25
    sget-object v0, Lcom/vuitton/android/presentation/link/models/ParsedLink$CertificatesList;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$CertificatesList;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    if-eqz v10, :cond_1c

    new-instance v12, Lcom/vuitton/android/presentation/link/models/LinkTarget$StandaloneIntent;

    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity;->s:Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v2}, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity$Companion;->a(Landroid/content/Context;Lcom/vuitton/android/presentation/link/models/ParsedLink;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {v12, v0}, Lcom/vuitton/android/presentation/link/models/LinkTarget$StandaloneIntent;-><init>(Landroid/content/Intent;)V

    goto/16 :goto_11

    :cond_26
    instance-of v0, v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$CertificateDetail;

    if-eqz v0, :cond_27

    if-eqz v10, :cond_1c

    new-instance v12, Lcom/vuitton/android/presentation/link/models/LinkTarget$StandaloneIntent;

    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity;->s:Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v2}, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity$Companion;->a(Landroid/content/Context;Lcom/vuitton/android/presentation/link/models/ParsedLink;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {v12, v0}, Lcom/vuitton/android/presentation/link/models/LinkTarget$StandaloneIntent;-><init>(Landroid/content/Intent;)V

    goto/16 :goto_11

    :cond_27
    sget-object v0, Lcom/vuitton/android/presentation/link/models/ParsedLink$CertificateDiamondActivation;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$CertificateDiamondActivation;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    if-eqz v10, :cond_1c

    new-instance v12, Lcom/vuitton/android/presentation/link/models/LinkTarget$StandaloneIntent;

    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity;->s:Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v2}, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity$Companion;->a(Landroid/content/Context;Lcom/vuitton/android/presentation/link/models/ParsedLink;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {v12, v0}, Lcom/vuitton/android/presentation/link/models/LinkTarget$StandaloneIntent;-><init>(Landroid/content/Intent;)V

    goto/16 :goto_11

    :cond_28
    sget-object v0, Lcom/vuitton/android/presentation/link/models/ParsedLink$ExclusiveSection;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$ExclusiveSection;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    if-eqz v9, :cond_1c

    new-instance v12, Lcom/vuitton/android/presentation/link/models/LinkTarget$StandaloneIntent;

    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity;->s:Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v2}, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity$Companion;->a(Landroid/content/Context;Lcom/vuitton/android/presentation/link/models/ParsedLink;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {v12, v0}, Lcom/vuitton/android/presentation/link/models/LinkTarget$StandaloneIntent;-><init>(Landroid/content/Intent;)V

    goto/16 :goto_11

    :cond_29
    instance-of v0, v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$ExclusiveCategory;

    if-eqz v0, :cond_2a

    if-eqz v9, :cond_1c

    new-instance v12, Lcom/vuitton/android/presentation/link/models/LinkTarget$StandaloneIntent;

    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity;->s:Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v2}, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity$Companion;->a(Landroid/content/Context;Lcom/vuitton/android/presentation/link/models/ParsedLink;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {v12, v0}, Lcom/vuitton/android/presentation/link/models/LinkTarget$StandaloneIntent;-><init>(Landroid/content/Intent;)V

    goto/16 :goto_11

    :cond_2a
    instance-of v0, v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$ExclusiveProduct;

    if-eqz v0, :cond_2b

    if-eqz v9, :cond_1c

    new-instance v12, Lcom/vuitton/android/presentation/link/models/LinkTarget$StandaloneIntent;

    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity;->s:Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v2}, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity$Companion;->a(Landroid/content/Context;Lcom/vuitton/android/presentation/link/models/ParsedLink;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {v12, v0}, Lcom/vuitton/android/presentation/link/models/LinkTarget$StandaloneIntent;-><init>(Landroid/content/Intent;)V

    goto :goto_11

    :cond_2b
    sget-object v0, Lcom/vuitton/android/presentation/link/models/ParsedLink$Travels;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$Travels;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    new-instance v12, Lcom/vuitton/android/presentation/link/models/LinkTarget$StandaloneIntent;

    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity;->s:Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v2}, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity$Companion;->a(Landroid/content/Context;Lcom/vuitton/android/presentation/link/models/ParsedLink;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {v12, v0}, Lcom/vuitton/android/presentation/link/models/LinkTarget$StandaloneIntent;-><init>(Landroid/content/Intent;)V

    goto :goto_11

    :cond_2c
    instance-of v0, v2, Lcom/vuitton/android/presentation/link/models/ParsedLink$PairingV2;

    if-eqz v0, :cond_2d

    invoke-virtual {v8}, Lcom/vuitton/android/domain/service/authentication/UserSessionService;->b()Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance v12, Lcom/vuitton/android/presentation/link/models/LinkTarget$StandaloneIntent;

    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity;->s:Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v2}, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity$Companion;->a(Landroid/content/Context;Lcom/vuitton/android/presentation/link/models/ParsedLink;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {v12, v0}, Lcom/vuitton/android/presentation/link/models/LinkTarget$StandaloneIntent;-><init>(Landroid/content/Intent;)V

    goto :goto_11

    :cond_2d
    sget-object v0, Lcom/vuitton/android/presentation/link/models/ParsedLink$PreferenceCenter;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$PreferenceCenter;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    new-instance v12, Lcom/vuitton/android/presentation/link/models/LinkTarget$StandaloneIntent;

    sget-object v0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesActivity;->q:Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesActivity$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesActivity;

    invoke-direct {v0, v5, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "extra_display_bottom_sheet"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {v12, v0}, Lcom/vuitton/android/presentation/link/models/LinkTarget$StandaloneIntent;-><init>(Landroid/content/Intent;)V

    goto :goto_11

    :cond_2e
    sget-object v0, Lcom/vuitton/android/presentation/link/models/ParsedLink$Privacy;->b:Lcom/vuitton/android/presentation/link/models/ParsedLink$Privacy;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    new-instance v12, Lcom/vuitton/android/presentation/link/models/LinkTarget$StandaloneIntent;

    sget-object v0, Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity;->p:Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v6}, Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity$Companion;->a(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {v12, v0}, Lcom/vuitton/android/presentation/link/models/LinkTarget$StandaloneIntent;-><init>(Landroid/content/Intent;)V

    goto :goto_11

    :cond_2f
    invoke-static {v5, v2}, Lcom/vuitton/android/presentation/link/navigation/LinkNavigator;->b(Landroid/content/Context;Lcom/vuitton/android/presentation/link/models/ParsedLink;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/vuitton/android/presentation/link/navigation/LinkNavigator;->d(Landroid/content/Intent;)Lcom/vuitton/android/presentation/link/models/LinkTarget;

    move-result-object v12

    :goto_11
    instance-of v0, v12, Lcom/vuitton/android/presentation/link/models/LinkTarget$StandaloneIntent;

    if-eqz v0, :cond_30

    iget-object v0, v11, Lcom/vuitton/android/presentation/link/navigation/LinkNavigator;->c:Lcom/vuitton/android/presentation/helper/NavigationHelper;

    check-cast v12, Lcom/vuitton/android/presentation/link/models/LinkTarget$StandaloneIntent;

    iget-object v2, v12, Lcom/vuitton/android/presentation/link/models/LinkTarget$StandaloneIntent;->a:Landroid/content/Intent;

    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const/16 v4, 0xc

    invoke-static {v0, v2, v5, v3, v4}, Lcom/vuitton/android/presentation/helper/NavigationHelper;->b(Lcom/vuitton/android/presentation/helper/NavigationHelper;Landroid/content/Intent;Landroidx/fragment/app/FragmentActivity;Landroidx/activity/result/ActivityResultLauncher;I)Z

    invoke-virtual {v5}, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity;->D()Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_38

    invoke-static {v5, v0}, Lcom/vuitton/android/presentation/push/UtmNotificationTracker;->a(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_13

    :cond_30
    move-object/from16 v2, v18

    invoke-virtual {v12, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    goto :goto_12

    :cond_31
    invoke-static {}, Lv40;->g()V

    return-object v3

    :cond_32
    move-object v3, v4

    const-string v0, "linkNavigator"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v3

    :cond_33
    move-object v4, v6

    :goto_12
    invoke-virtual {v5}, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity;->D()Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v5, v4}, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity;->B(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_13

    :cond_34
    move-object v3, v4

    const-string v0, "linkParser"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v3

    :cond_35
    move-object v3, v4

    const-string v0, "warmStartLinkExclusionPolicy"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v3

    :cond_36
    move-object v3, v4

    move-object v4, v6

    instance-of v0, v2, Lcom/vuitton/android/presentation/screen/deeplink/RoutingDataState$Failure;

    if-eqz v0, :cond_37

    sget v0, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity;->q:I

    invoke-virtual {v5}, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity;->D()Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v5, v4}, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity;->B(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_13

    :cond_37
    sget-object v0, Lcom/vuitton/android/presentation/screen/deeplink/RoutingDataState$Loading;->a:Lcom/vuitton/android/presentation/screen/deeplink/RoutingDataState$Loading;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    :cond_38
    :goto_13
    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity$handleWarmStart$1;->e:Lw1;

    invoke-virtual {v0}, Lw1;->invoke()Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_39
    invoke-static {}, Lv40;->g()V

    return-object v3
.end method
