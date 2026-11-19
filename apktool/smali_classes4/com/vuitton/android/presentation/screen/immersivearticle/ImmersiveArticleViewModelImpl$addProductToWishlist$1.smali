.class final Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$addProductToWishlist$1;
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
    c = "com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModelImpl$addProductToWishlist$1"
    f = "ImmersiveArticleViewModelImpl.kt"
    l = {
        0x182,
        0x18e
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

.field public d:I

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$addProductToWishlist$1;->e:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$addProductToWishlist$1;->f:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$addProductToWishlist$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$addProductToWishlist$1;->e:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$addProductToWishlist$1;->f:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$addProductToWishlist$1;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$addProductToWishlist$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$addProductToWishlist$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$addProductToWishlist$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$addProductToWishlist$1;->d:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$addProductToWishlist$1;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$addProductToWishlist$1;->e:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

    const/4 v6, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v6, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$addProductToWishlist$1;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$addProductToWishlist$1;->b:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-static {v5, v4, v6, v6}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->Ec(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;Ljava/lang/String;ZZ)V

    iget-object p1, v5, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->o:Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    iput v6, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$addProductToWishlist$1;->d:I

    invoke-virtual {p1, v4, p0}, Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v1, p1, Lkotlin/Result$Failure;

    if-nez v1, :cond_5

    move-object v1, p1

    check-cast v1, Lkotlin/Unit;

    iget-object v1, v5, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->f:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;

    new-instance v7, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$AddToWishlist;

    new-instance v8, Lkotlin/Pair;

    const-string v9, "af_content_id"

    invoke-direct {v8, v9, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v8}, Lkotlin/collections/MapsKt;->h(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$AddToWishlist;-><init>(Ljava/util/Map;)V

    const-string v8, "ImmersiveArticleViewModelImpl"

    invoke-interface {v1, v8, v7}, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;->a(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;)V

    iget-object v1, v5, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->s:Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$addProductToWishlist$1;->b:Ljava/lang/Object;

    iput-object v5, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$addProductToWishlist$1;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

    iput v3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$addProductToWishlist$1;->d:I

    invoke-virtual {v1, v4, p0}, Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    :goto_1
    return-object v0

    :cond_4
    move-object p0, p1

    move-object v0, v5

    :goto_2
    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->i:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    new-instance v8, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const p1, 0x7f140de9

    invoke-direct {v8, p1, v2, v3, v2}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v11, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleNotificationAction$GoToWishlist;->b:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleNotificationAction$GoToWishlist;

    const/16 v12, 0x1e

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->Cc(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;Lcom/vuitton/android/presentation/notification/NotificationUiModel;)V

    move-object p1, p0

    :cond_5
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_6

    iget-object v7, v5, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->i:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    invoke-static {v5, p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->yc(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;Ljava/lang/Throwable;)Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    move-result-object v8

    const/4 v11, 0x0

    const/16 v12, 0x3c

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->Cc(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;Lcom/vuitton/android/presentation/notification/NotificationUiModel;)V

    :cond_6
    instance-of p0, p1, Lkotlin/Result$Failure;

    xor-int/2addr p0, v6

    const/4 p1, 0x0

    invoke-static {v5, v4, p0, p1}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->Ec(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;Ljava/lang/String;ZZ)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
