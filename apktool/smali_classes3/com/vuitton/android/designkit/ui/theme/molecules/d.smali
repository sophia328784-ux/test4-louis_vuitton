.class public final synthetic Lcom/vuitton/android/designkit/ui/theme/molecules/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

.field public final synthetic c:Landroidx/compose/foundation/pager/PagerState;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/util/Map;

.field public final synthetic h:I

.field public final synthetic i:Landroidx/compose/foundation/ScrollState;

.field public final synthetic j:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic k:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/hapticfeedback/HapticFeedback;Landroidx/compose/foundation/pager/PagerState;Lkotlin/jvm/functions/Function1;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;ILandroidx/compose/foundation/ScrollState;Lkotlinx/coroutines/CoroutineScope;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/d;->b:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    iput-object p2, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/d;->c:Landroidx/compose/foundation/pager/PagerState;

    iput-object p3, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/d;->d:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/d;->e:Ljava/util/List;

    iput-object p5, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/d;->f:Ljava/lang/String;

    iput-object p6, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/d;->g:Ljava/util/Map;

    iput p7, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/d;->h:I

    iput-object p8, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/d;->i:Landroidx/compose/foundation/ScrollState;

    iput-object p9, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/d;->j:Lkotlinx/coroutines/CoroutineScope;

    iput p10, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/d;->k:I

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    sget-object v0, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->b:Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->a:I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/d;->b:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    invoke-interface {v1, v0}, Landroidx/compose/ui/hapticfeedback/HapticFeedback;->a(I)V

    iget-object v0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/d;->c:Landroidx/compose/foundation/pager/PagerState;

    iget-object v1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/d;->j:Lkotlinx/coroutines/CoroutineScope;

    if-eqz v0, :cond_0

    new-instance v2, Lcom/vuitton/android/designkit/ui/theme/molecules/LVTabsKt$LVTabsInternal$2$1$onItemClicked$1$1$1$1;

    iget v3, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/d;->k:I

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v4}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVTabsKt$LVTabsInternal$2$1$onItemClicked$1$1$1$1;-><init>(Landroidx/compose/foundation/pager/PagerState;ILkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    invoke-static {v1, v4, v4, v2, v0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_0
    iget-object v0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/d;->e:Ljava/util/List;

    iget-object v2, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/d;->f:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v3, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/d;->d:Lkotlin/jvm/functions/Function1;

    invoke-interface {v3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/d;->g:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/designkit/ui/common/RowItemCenterPosition;

    iget v2, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/d;->h:I

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/d;->i:Landroidx/compose/foundation/ScrollState;

    invoke-static {v0, v2, p0, v1}, Lcom/vuitton/android/designkit/ui/common/ItemUtilsKt;->a(Lcom/vuitton/android/designkit/ui/common/RowItemCenterPosition;ILandroidx/compose/foundation/ScrollState;Lkotlinx/coroutines/CoroutineScope;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
