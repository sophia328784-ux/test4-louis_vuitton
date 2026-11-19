.class final Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/ProductCellReducedKt$ProductCellReduced$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/input/pointer/PointerInputEventHandler;


# annotations
.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function1;

.field public final synthetic b:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;

.field public final synthetic c:Lkotlin/jvm/functions/Function2;

.field public final synthetic d:Landroidx/compose/foundation/pager/PagerState;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/pager/PagerState;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/ProductCellReducedKt$ProductCellReduced$3$1;->a:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/ProductCellReducedKt$ProductCellReduced$3$1;->b:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/ProductCellReducedKt$ProductCellReduced$3$1;->c:Lkotlin/jvm/functions/Function2;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/ProductCellReducedKt$ProductCellReduced$3$1;->d:Landroidx/compose/foundation/pager/PagerState;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/ProductCellReducedKt$ProductCellReduced$3$1;->e:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    new-instance v1, Lxp0;

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/ProductCellReducedKt$ProductCellReduced$3$1;->a:Lkotlin/jvm/functions/Function1;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/ProductCellReducedKt$ProductCellReduced$3$1;->b:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;

    invoke-direct {v1, v2, v3, v0}, Lxp0;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;I)V

    new-instance v2, Lcl0;

    const/4 v0, 0x6

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/ProductCellReducedKt$ProductCellReduced$3$1;->c:Lkotlin/jvm/functions/Function2;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/ProductCellReducedKt$ProductCellReduced$3$1;->d:Landroidx/compose/foundation/pager/PagerState;

    invoke-direct {v2, v4, v3, v5, v0}, Lcl0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v4, Lbo0;

    const/4 v0, 0x2

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/ProductCellReducedKt$ProductCellReduced$3$1;->e:Lkotlin/jvm/functions/Function0;

    invoke-direct {v4, p0, v0}, Lbo0;-><init>(Lkotlin/jvm/functions/Function0;I)V

    const/4 v6, 0x4

    const/4 v3, 0x0

    move-object v0, p1

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->e(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
