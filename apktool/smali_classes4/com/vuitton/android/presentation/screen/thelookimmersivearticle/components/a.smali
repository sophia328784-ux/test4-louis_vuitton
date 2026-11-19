.class public final synthetic Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lkotlin/jvm/functions/Function2;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleViewState;

.field public final synthetic e:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic f:Lkotlin/jvm/functions/Function2;

.field public final synthetic g:Landroidx/compose/foundation/pager/PagerState;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleViewState;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/pager/PagerState;I)V
    .locals 0

    iput p6, p0, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/a;->b:I

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/a;->c:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/a;->d:Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleViewState;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/a;->e:Lkotlinx/coroutines/CoroutineScope;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/a;->f:Lkotlin/jvm/functions/Function2;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/a;->g:Landroidx/compose/foundation/pager/PagerState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/a;->b:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/a;->g:Landroidx/compose/foundation/pager/PagerState;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/a;->f:Lkotlin/jvm/functions/Function2;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/a;->e:Lkotlinx/coroutines/CoroutineScope;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/a;->d:Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleViewState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/a;->c:Lkotlin/jvm/functions/Function2;

    check-cast p1, Ljava/lang/Integer;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v7, v6, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleViewState;->e:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;

    iget-object v7, v7, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;->a:Ljava/lang/String;

    invoke-interface {p0, p1, v7}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/TheLookImmersiveArticleDetailScreenKt$TheLookImmersiveArticleDetailScreen$5$1$2$3$1$1;

    invoke-direct {p0, v3, v0, v2}, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/TheLookImmersiveArticleDetailScreenKt$TheLookImmersiveArticleDetailScreen$5$1$2$3$1$1;-><init>(Landroidx/compose/foundation/pager/PagerState;ILkotlin/coroutines/Continuation;)V

    invoke-static {v5, v2, v2, p0, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    iget-object p0, v6, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleViewState;->a:Ljava/lang/String;

    iget-object p1, v6, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleViewState;->e:Ljava/util/List;

    iget v0, v6, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleViewState;->f:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;->a:Ljava/lang/String;

    invoke-interface {v4, p0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v7, v6, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleViewState;->e:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;

    iget-object v7, v7, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;->a:Ljava/lang/String;

    invoke-interface {p0, p1, v7}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/TheLookImmersiveArticleDetailScreenKt$TheLookImmersiveArticleDetailScreen$5$1$2$2$1$1;

    invoke-direct {p0, v3, v0, v2}, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/components/TheLookImmersiveArticleDetailScreenKt$TheLookImmersiveArticleDetailScreen$5$1$2$2$1$1;-><init>(Landroidx/compose/foundation/pager/PagerState;ILkotlin/coroutines/Continuation;)V

    invoke-static {v5, v2, v2, p0, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    iget-object p0, v6, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleViewState;->a:Ljava/lang/String;

    iget-object p1, v6, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleViewState;->e:Ljava/util/List;

    iget v0, v6, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleViewState;->f:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleLookCardUiModel;->a:Ljava/lang/String;

    invoke-interface {v4, p0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
