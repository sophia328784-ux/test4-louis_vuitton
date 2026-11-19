.class public final synthetic Li90;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

.field public final synthetic c:Landroidx/compose/foundation/gestures/Orientation;

.field public final synthetic d:Landroidx/compose/foundation/lazy/staggeredgrid/LazyGridStaggeredGridSlotsProvider;

.field public final synthetic e:Landroidx/compose/ui/Modifier;

.field public final synthetic f:Landroidx/compose/foundation/layout/PaddingValuesImpl;

.field public final synthetic g:Landroidx/compose/foundation/gestures/FlingBehavior;

.field public final synthetic h:Z

.field public final synthetic i:Landroidx/compose/foundation/OverscrollEffect;

.field public final synthetic j:F

.field public final synthetic k:Lkotlin/jvm/functions/Function1;

.field public final synthetic l:I

.field public final synthetic m:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/lazy/staggeredgrid/LazyGridStaggeredGridSlotsProvider;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;FLkotlin/jvm/functions/Function1;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li90;->b:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    iput-object p2, p0, Li90;->c:Landroidx/compose/foundation/gestures/Orientation;

    iput-object p3, p0, Li90;->d:Landroidx/compose/foundation/lazy/staggeredgrid/LazyGridStaggeredGridSlotsProvider;

    iput-object p4, p0, Li90;->e:Landroidx/compose/ui/Modifier;

    iput-object p5, p0, Li90;->f:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    iput-object p6, p0, Li90;->g:Landroidx/compose/foundation/gestures/FlingBehavior;

    iput-boolean p7, p0, Li90;->h:Z

    iput-object p8, p0, Li90;->i:Landroidx/compose/foundation/OverscrollEffect;

    iput p9, p0, Li90;->j:F

    iput-object p10, p0, Li90;->k:Lkotlin/jvm/functions/Function1;

    iput p11, p0, Li90;->l:I

    iput p12, p0, Li90;->m:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    move-object v10, p1

    check-cast v10, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Li90;->l:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v11

    iget p1, p0, Li90;->m:I

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v12

    iget-object v0, p0, Li90;->b:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    iget-object v1, p0, Li90;->c:Landroidx/compose/foundation/gestures/Orientation;

    iget-object v2, p0, Li90;->d:Landroidx/compose/foundation/lazy/staggeredgrid/LazyGridStaggeredGridSlotsProvider;

    iget-object v3, p0, Li90;->e:Landroidx/compose/ui/Modifier;

    iget-object v4, p0, Li90;->f:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    iget-object v5, p0, Li90;->g:Landroidx/compose/foundation/gestures/FlingBehavior;

    iget-boolean v6, p0, Li90;->h:Z

    iget-object v7, p0, Li90;->i:Landroidx/compose/foundation/OverscrollEffect;

    iget v8, p0, Li90;->j:F

    iget-object v9, p0, Li90;->k:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v0 .. v12}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridKt;->a(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/lazy/staggeredgrid/LazyGridStaggeredGridSlotsProvider;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;FLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
