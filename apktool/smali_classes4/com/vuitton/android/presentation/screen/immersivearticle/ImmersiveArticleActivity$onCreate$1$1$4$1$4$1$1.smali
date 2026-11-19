.class final Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$onCreate$1$1$4$1$4$1$1;
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
    c = "com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleActivity$onCreate$1$1$4$1$4$1$1"
    f = "ImmersiveArticleActivity.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$onCreate$1$1$4$1$4$1$1;->b:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$onCreate$1$1$4$1$4$1$1;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$onCreate$1$1$4$1$4$1$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$onCreate$1$1$4$1$4$1$1;->b:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$onCreate$1$1$4$1$4$1$1;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$onCreate$1$1$4$1$4$1$1;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$onCreate$1$1$4$1$4$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$onCreate$1$1$4$1$4$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$onCreate$1$1$4$1$4$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$onCreate$1$1$4$1$4$1$1;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;->g:Ljava/util/List;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$onCreate$1$1$4$1$4$1$1;->b:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->I(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_1

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->I(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->C:Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->D:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p0, v1}, Landroidx/activity/result/ActivityResultLauncher;->a(Ljava/lang/Object;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
