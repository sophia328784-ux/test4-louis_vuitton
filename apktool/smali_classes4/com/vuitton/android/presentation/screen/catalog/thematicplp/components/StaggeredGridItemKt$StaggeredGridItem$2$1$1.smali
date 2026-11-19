.class final Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/StaggeredGridItemKt$StaggeredGridItem$2$1$1;
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
.field public final synthetic a:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;

.field public final synthetic b:Lkotlin/jvm/functions/Function2;

.field public final synthetic c:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/StaggeredGridItemKt$StaggeredGridItem$2$1$1;->a:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/StaggeredGridItemKt$StaggeredGridItem$2$1$1;->b:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/StaggeredGridItemKt$StaggeredGridItem$2$1$1;->c:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    new-instance v1, Llr0;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/StaggeredGridItemKt$StaggeredGridItem$2$1$1;->a:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/StaggeredGridItemKt$StaggeredGridItem$2$1$1;->b:Lkotlin/jvm/functions/Function2;

    invoke-direct {v1, v0, v2}, Llr0;-><init>(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;Lkotlin/jvm/functions/Function2;)V

    new-instance v4, Llr0;

    const/4 v2, 0x3

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/StaggeredGridItemKt$StaggeredGridItem$2$1$1;->c:Lkotlin/jvm/functions/Function2;

    invoke-direct {v4, p0, v0, v2}, Llr0;-><init>(Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;I)V

    const/4 v6, 0x6

    const/4 v2, 0x0

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
