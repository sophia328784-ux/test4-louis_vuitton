.class final Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleComposableKt$ImmersiveArticleComposable$2$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/vuitton/android/presentation/notification/NotificationUiModel;",
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
        "notification",
        "Lcom/vuitton/android/presentation/notification/NotificationUiModel;"
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
    c = "com.vuitton.android.presentation.screen.immersivearticle.components.ImmersiveArticleComposableKt$ImmersiveArticleComposable$2$1$1"
    f = "ImmersiveArticleComposable.kt"
    l = {
        0x50
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Landroidx/compose/material3/SnackbarHostState;

.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Landroidx/compose/material3/SnackbarHostState;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleComposableKt$ImmersiveArticleComposable$2$1$1;->d:Landroidx/compose/material3/SnackbarHostState;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleComposableKt$ImmersiveArticleComposable$2$1$1;->e:Landroid/content/Context;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleComposableKt$ImmersiveArticleComposable$2$1$1;->f:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleComposableKt$ImmersiveArticleComposable$2$1$1;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleComposableKt$ImmersiveArticleComposable$2$1$1;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleComposableKt$ImmersiveArticleComposable$2$1$1;->f:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleComposableKt$ImmersiveArticleComposable$2$1$1;->d:Landroidx/compose/material3/SnackbarHostState;

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleComposableKt$ImmersiveArticleComposable$2$1$1;-><init>(Landroidx/compose/material3/SnackbarHostState;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleComposableKt$ImmersiveArticleComposable$2$1$1;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleComposableKt$ImmersiveArticleComposable$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleComposableKt$ImmersiveArticleComposable$2$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleComposableKt$ImmersiveArticleComposable$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleComposableKt$ImmersiveArticleComposable$2$1$1;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleComposableKt$ImmersiveArticleComposable$2$1$1;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/vuitton/android/presentation/notification/NotificationBuilderKt;->a:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    sget-object p1, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->DEFAULT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleComposableKt$ImmersiveArticleComposable$2$1$1;->e:Landroid/content/Context;

    invoke-static {v0, v2, p1}, Lcom/vuitton/android/presentation/notification/NotificationBuilderKt;->b(Lcom/vuitton/android/presentation/notification/NotificationUiModel;Landroid/content/Context;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;)Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarVisuals;

    move-result-object p1

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleComposableKt$ImmersiveArticleComposable$2$1$1;->c:Ljava/lang/Object;

    iput v3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleComposableKt$ImmersiveArticleComposable$2$1$1;->b:I

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleComposableKt$ImmersiveArticleComposable$2$1$1;->d:Landroidx/compose/material3/SnackbarHostState;

    invoke-virtual {v2, p1, p0}, Landroidx/compose/material3/SnackbarHostState;->a(Landroidx/compose/material3/SnackbarVisuals;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    :cond_2
    :goto_0
    check-cast p1, Landroidx/compose/material3/SnackbarResult;

    sget-object v1, Landroidx/compose/material3/SnackbarResult;->ActionPerformed:Landroidx/compose/material3/SnackbarResult;

    if-ne p1, v1, :cond_3

    iget-object p1, v0, Lcom/vuitton/android/presentation/notification/NotificationUiModel;->g:Lcom/vuitton/android/presentation/notification/NotificationAction;

    sget-object v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleNotificationAction$GoToWishlist;->b:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleNotificationAction$GoToWishlist;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleComposableKt$ImmersiveArticleComposable$2$1$1;->f:Lkotlin/jvm/functions/Function1;

    sget-object p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleNavigationType$RedirectToWishlist;->a:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleNavigationType$RedirectToWishlist;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
