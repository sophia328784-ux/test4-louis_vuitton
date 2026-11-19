.class final Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/PLPWishlistFeedbackWatcherKt$PLPWishlistFeedbackWatcher$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel;",
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
        "feedback",
        "Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel;"
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
    c = "com.vuitton.android.presentation.screen.plp.components.subcomponents.PLPWishlistFeedbackWatcherKt$PLPWishlistFeedbackWatcher$1$1$1"
    f = "PLPWishlistFeedbackWatcher.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Landroidx/activity/compose/ManagedActivityResultLauncher;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Landroidx/compose/runtime/MutableState;

.field public final synthetic f:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Landroidx/activity/compose/ManagedActivityResultLauncher;Landroid/content/Context;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/PLPWishlistFeedbackWatcherKt$PLPWishlistFeedbackWatcher$1$1$1;->c:Landroidx/activity/compose/ManagedActivityResultLauncher;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/PLPWishlistFeedbackWatcherKt$PLPWishlistFeedbackWatcher$1$1$1;->d:Landroid/content/Context;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/PLPWishlistFeedbackWatcherKt$PLPWishlistFeedbackWatcher$1$1$1;->e:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/PLPWishlistFeedbackWatcherKt$PLPWishlistFeedbackWatcher$1$1$1;->f:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/PLPWishlistFeedbackWatcherKt$PLPWishlistFeedbackWatcher$1$1$1;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/PLPWishlistFeedbackWatcherKt$PLPWishlistFeedbackWatcher$1$1$1;->e:Landroidx/compose/runtime/MutableState;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/PLPWishlistFeedbackWatcherKt$PLPWishlistFeedbackWatcher$1$1$1;->f:Landroidx/compose/runtime/MutableState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/PLPWishlistFeedbackWatcherKt$PLPWishlistFeedbackWatcher$1$1$1;->c:Landroidx/activity/compose/ManagedActivityResultLauncher;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/PLPWishlistFeedbackWatcherKt$PLPWishlistFeedbackWatcher$1$1$1;->d:Landroid/content/Context;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/PLPWishlistFeedbackWatcherKt$PLPWishlistFeedbackWatcher$1$1$1;-><init>(Landroidx/activity/compose/ManagedActivityResultLauncher;Landroid/content/Context;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/PLPWishlistFeedbackWatcherKt$PLPWishlistFeedbackWatcher$1$1$1;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/PLPWishlistFeedbackWatcherKt$PLPWishlistFeedbackWatcher$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/PLPWishlistFeedbackWatcherKt$PLPWishlistFeedbackWatcher$1$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/PLPWishlistFeedbackWatcherKt$PLPWishlistFeedbackWatcher$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/PLPWishlistFeedbackWatcherKt$PLPWishlistFeedbackWatcher$1$1$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    instance-of p1, v0, Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$RequestAuth;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/PLPWishlistFeedbackWatcherKt$PLPWishlistFeedbackWatcher$1$1$1;->e:Landroidx/compose/runtime/MutableState;

    check-cast v0, Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$RequestAuth;

    invoke-interface {p1, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object p1, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->u:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;->WELCOME_PAGE_WITH_EXIT:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;->WISHLIST:Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;

    sget-object v2, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->WISHLIST:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/PLPWishlistFeedbackWatcherKt$PLPWishlistFeedbackWatcher$1$1$1;->d:Landroid/content/Context;

    invoke-static {p1, v0, v1, v2}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;->a(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;)Landroid/content/Intent;

    move-result-object p1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/PLPWishlistFeedbackWatcherKt$PLPWishlistFeedbackWatcher$1$1$1;->c:Landroidx/activity/compose/ManagedActivityResultLauncher;

    invoke-virtual {p0, p1}, Landroidx/activity/compose/ManagedActivityResultLauncher;->a(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    instance-of p1, v0, Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$UpdateItems;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/PLPWishlistFeedbackWatcherKt$PLPWishlistFeedbackWatcher$1$1$1;->f:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    check-cast v0, Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$UpdateItems;

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$UpdateItems;->a:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->a:Landroidx/compose/runtime/MutableState;

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;->h:Landroidx/compose/runtime/MutableState;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->a:Landroidx/compose/runtime/MutableState;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;->h:Landroidx/compose/runtime/MutableState;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->a:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;->a:Ljava/lang/String;

    new-instance v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v3, v0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel;-><init>(ZZ)V

    invoke-interface {v1, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
