.class public final synthetic Lcom/vuitton/android/presentation/screen/spotlight/components/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Landroidx/compose/foundation/pager/PagerState;

.field public final synthetic e:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/Object;I)V
    .locals 0

    iput p5, p0, Lcom/vuitton/android/presentation/screen/spotlight/components/a;->b:I

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/spotlight/components/a;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/spotlight/components/a;->d:Landroidx/compose/foundation/pager/PagerState;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/spotlight/components/a;->e:Lkotlinx/coroutines/CoroutineScope;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/spotlight/components/a;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lcom/vuitton/android/presentation/screen/spotlight/components/a;->b:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/spotlight/components/a;->f:Ljava/lang/Object;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/spotlight/components/a;->e:Lkotlinx/coroutines/CoroutineScope;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/spotlight/components/a;->d:Landroidx/compose/foundation/pager/PagerState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/spotlight/components/a;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lkotlin/jvm/functions/Function2;

    check-cast v3, Landroidx/compose/foundation/pager/PagerState;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v6, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightScreenKt;->a:F

    invoke-virtual {v5}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p0, v5, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightScreenKt$SpotlightScreen$5$1$1;

    invoke-direct {p0, v3, v0, v2}, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightScreenKt$SpotlightScreen$5$1$1;-><init>(Landroidx/compose/foundation/pager/PagerState;ILkotlin/coroutines/Continuation;)V

    invoke-static {v4, v2, v2, p0, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget v0, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightScreenKt;->a:F

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;->d:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;

    iget-boolean v6, v0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->e:Z

    if-eqz v6, :cond_0

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->i:Z

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {v5}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_1

    new-instance p0, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightScreenKt$SpotlightScreen$7$1$1;

    invoke-direct {p0, v5, p1, v2}, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightScreenKt$SpotlightScreen$7$1$1;-><init>(Landroidx/compose/foundation/pager/PagerState;ILkotlin/coroutines/Continuation;)V

    invoke-static {v4, v2, v2, p0, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_1
    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget v0, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightScreenKt;->a:F

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;->d:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->e:Z

    if-eqz v0, :cond_3

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->i:Z

    if-eqz p0, :cond_5

    :cond_3
    invoke-virtual {v5}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result p0

    if-lez p0, :cond_4

    new-instance p0, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightScreenKt$SpotlightScreen$6$1$1;

    invoke-direct {p0, v5, p1, v2}, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightScreenKt$SpotlightScreen$6$1$1;-><init>(Landroidx/compose/foundation/pager/PagerState;ILkotlin/coroutines/Continuation;)V

    invoke-static {v4, v2, v2, p0, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_4
    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
