.class final Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderResultScreenKt$ShadeFinderResultScreen$1$1$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

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
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Landroidx/compose/runtime/MutableIntState;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroidx/compose/runtime/MutableIntState;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderResultScreenKt$ShadeFinderResultScreen$1$1$1$2;->b:Ljava/util/List;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderResultScreenKt$ShadeFinderResultScreen$1$1$1$2;->c:Landroidx/compose/runtime/MutableIntState;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderResultScreenKt$ShadeFinderResultScreen$1$1$1$2;->d:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderResultScreenKt$ShadeFinderResultScreen$1$1$1$2;->c:Landroidx/compose/runtime/MutableIntState;

    invoke-interface {p2}, Landroidx/compose/runtime/IntState;->f()I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderResultScreenKt$ShadeFinderResultScreen$1$1$1$2;->b:Ljava/util/List;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/RecommendationUiModel;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/RecommendationUiModel;->a:Lcom/vuitton/android/presentation/model/common/ProductTinyUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/model/common/ProductTinyUiModel;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderResultScreenKt$ShadeFinderResultScreen$1$1$1$2;->d:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {p2, p1}, Landroidx/compose/runtime/MutableIntState;->i(I)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
