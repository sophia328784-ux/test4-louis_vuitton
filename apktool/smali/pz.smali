.class public final synthetic Lpz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

.field public final synthetic d:Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/layout/FlowLayoutOverflowState;Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;I)V
    .locals 0

    iput p3, p0, Lpz;->b:I

    iput-object p1, p0, Lpz;->c:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    iput-object p2, p0, Lpz;->d:Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lpz;->b:I

    const/4 v1, 0x0

    iget-object v2, p0, Lpz;->d:Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;

    iget-object p0, p0, Lpz;->c:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    check-cast p1, Landroidx/compose/ui/layout/Placeable;

    packed-switch v0, :pswitch_data_0

    if-eqz p1, :cond_0

    invoke-interface {v2, p1}, Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;->c(Landroidx/compose/ui/layout/Placeable;)I

    move-result v1

    invoke-interface {v2, p1}, Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;->e(Landroidx/compose/ui/layout/Placeable;)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v1, v0}, Landroidx/collection/IntIntPair;->a(II)J

    move-result-wide v0

    new-instance v2, Landroidx/collection/IntIntPair;

    invoke-direct {v2, v0, v1}, Landroidx/collection/IntIntPair;-><init>(J)V

    iput-object v2, p0, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->i:Landroidx/collection/IntIntPair;

    iput-object p1, p0, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->g:Landroidx/compose/ui/layout/Placeable;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    if-eqz p1, :cond_1

    invoke-interface {v2, p1}, Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;->c(Landroidx/compose/ui/layout/Placeable;)I

    move-result v1

    invoke-interface {v2, p1}, Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;->e(Landroidx/compose/ui/layout/Placeable;)I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-static {v1, v0}, Landroidx/collection/IntIntPair;->a(II)J

    move-result-wide v0

    new-instance v2, Landroidx/collection/IntIntPair;

    invoke-direct {v2, v0, v1}, Landroidx/collection/IntIntPair;-><init>(J)V

    iput-object v2, p0, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->h:Landroidx/collection/IntIntPair;

    iput-object p1, p0, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->e:Landroidx/compose/ui/layout/Placeable;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
