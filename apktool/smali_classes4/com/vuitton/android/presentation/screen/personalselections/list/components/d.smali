.class public final synthetic Lcom/vuitton/android/presentation/screen/personalselections/list/components/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic c:Landroidx/compose/foundation/pager/PagerState;

.field public final synthetic d:Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/pager/PagerState;Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/components/d;->b:Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/components/d;->c:Landroidx/compose/foundation/pager/PagerState;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/components/d;->d:Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    new-instance v0, Lcom/vuitton/android/presentation/screen/personalselections/list/components/PersonalSelectionsListScreenKt$PersonalSelectionsWithTabs$2$1$1$1;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/components/d;->c:Landroidx/compose/foundation/pager/PagerState;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/components/d;->d:Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/vuitton/android/presentation/screen/personalselections/list/components/PersonalSelectionsListScreenKt$PersonalSelectionsWithTabs$2$1$1$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/components/d;->b:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v3, v3, v0, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
