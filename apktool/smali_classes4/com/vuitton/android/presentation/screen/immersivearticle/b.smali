.class public final synthetic Lcom/vuitton/android/presentation/screen/immersivearticle/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/b;->b:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/b;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;

    sget-object v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->H:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$onCreate$1$1$4$1$4$1$1;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/b;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$onCreate$1$1$4$1$4$1$1;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/b;->b:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v2, v2, v0, p1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
