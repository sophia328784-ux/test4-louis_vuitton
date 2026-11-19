.class public final synthetic Lcom/vuitton/android/presentation/compose/components/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic d:Landroidx/compose/foundation/pager/PagerState;


# direct methods
.method public synthetic constructor <init>(ILandroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    iput p1, p0, Lcom/vuitton/android/presentation/compose/components/a;->b:I

    iput-object p3, p0, Lcom/vuitton/android/presentation/compose/components/a;->c:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/vuitton/android/presentation/compose/components/a;->d:Landroidx/compose/foundation/pager/PagerState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/vuitton/android/presentation/compose/components/a;->b:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/vuitton/android/presentation/compose/components/AccessibilityPagerButtonsKt$AccessibilityPagerButtons$1$2$1$1;

    iget-object v1, p0, Lcom/vuitton/android/presentation/compose/components/a;->d:Landroidx/compose/foundation/pager/PagerState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vuitton/android/presentation/compose/components/AccessibilityPagerButtonsKt$AccessibilityPagerButtons$1$2$1$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    iget-object p0, p0, Lcom/vuitton/android/presentation/compose/components/a;->c:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v2, v2, v0, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    new-instance v0, Lcom/vuitton/android/presentation/compose/components/AccessibilityPagerButtonsKt$AccessibilityPagerButtons$1$1$1$1;

    iget-object v1, p0, Lcom/vuitton/android/presentation/compose/components/a;->d:Landroidx/compose/foundation/pager/PagerState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vuitton/android/presentation/compose/components/AccessibilityPagerButtonsKt$AccessibilityPagerButtons$1$1$1$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    iget-object p0, p0, Lcom/vuitton/android/presentation/compose/components/a;->c:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v2, v2, v0, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
