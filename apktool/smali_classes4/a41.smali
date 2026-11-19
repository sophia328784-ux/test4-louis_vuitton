.class public final synthetic La41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic d:Landroidx/compose/foundation/lazy/grid/LazyGridState;

.field public final synthetic e:Landroidx/compose/foundation/lazy/grid/LazyGridState;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/LazyGridState;I)V
    .locals 0

    iput p4, p0, La41;->b:I

    iput-object p1, p0, La41;->c:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, La41;->d:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iput-object p3, p0, La41;->e:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, La41;->b:I

    iget-object v1, p0, La41;->e:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iget-object v2, p0, La41;->d:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iget-object p0, p0, La41;->c:Lkotlinx/coroutines/CoroutineScope;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes$Reduced;->b:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes$Reduced;

    invoke-static {p0, v2, v1, v0}, Lcom/vuitton/android/presentation/utils/PlpUtilsKt;->e(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/LazyGridState;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes$Full;->b:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes$Full;

    invoke-static {p0, v2, v1, v0}, Lcom/vuitton/android/presentation/utils/PlpUtilsKt;->e(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/LazyGridState;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
