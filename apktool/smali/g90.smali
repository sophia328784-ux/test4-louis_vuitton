.class public final synthetic Lg90;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Landroidx/compose/foundation/pager/PagerState;

.field public final synthetic d:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic e:Z

.field public final synthetic f:Landroidx/compose/foundation/gestures/Orientation;

.field public final synthetic g:Landroidx/compose/foundation/gestures/TargetedFlingBehavior;

.field public final synthetic h:Z

.field public final synthetic i:Landroidx/compose/foundation/OverscrollEffect;

.field public final synthetic j:I

.field public final synthetic k:F

.field public final synthetic l:Landroidx/compose/foundation/pager/PageSize;

.field public final synthetic m:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

.field public final synthetic n:Landroidx/compose/ui/Alignment$Horizontal;

.field public final synthetic o:Landroidx/compose/ui/Alignment$Vertical;

.field public final synthetic p:Landroidx/compose/foundation/gestures/snapping/SnapPosition;

.field public final synthetic q:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic r:I

.field public final synthetic s:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/TargetedFlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;IFLandroidx/compose/foundation/pager/PageSize;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg90;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lg90;->c:Landroidx/compose/foundation/pager/PagerState;

    iput-object p3, p0, Lg90;->d:Landroidx/compose/foundation/layout/PaddingValues;

    iput-boolean p4, p0, Lg90;->e:Z

    iput-object p5, p0, Lg90;->f:Landroidx/compose/foundation/gestures/Orientation;

    iput-object p6, p0, Lg90;->g:Landroidx/compose/foundation/gestures/TargetedFlingBehavior;

    iput-boolean p7, p0, Lg90;->h:Z

    iput-object p8, p0, Lg90;->i:Landroidx/compose/foundation/OverscrollEffect;

    iput p9, p0, Lg90;->j:I

    iput p10, p0, Lg90;->k:F

    iput-object p11, p0, Lg90;->l:Landroidx/compose/foundation/pager/PageSize;

    iput-object p12, p0, Lg90;->m:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    iput-object p13, p0, Lg90;->n:Landroidx/compose/ui/Alignment$Horizontal;

    iput-object p14, p0, Lg90;->o:Landroidx/compose/ui/Alignment$Vertical;

    iput-object p15, p0, Lg90;->p:Landroidx/compose/foundation/gestures/snapping/SnapPosition;

    move-object/from16 p1, p16

    iput-object p1, p0, Lg90;->q:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move/from16 p1, p17

    iput p1, p0, Lg90;->r:I

    move/from16 p1, p18

    iput p1, p0, Lg90;->s:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v16, p1

    check-cast v16, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lg90;->r:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v17

    iget v1, v0, Lg90;->s:I

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v18

    iget-object v1, v0, Lg90;->b:Landroidx/compose/ui/Modifier;

    move-object v2, v1

    iget-object v1, v0, Lg90;->c:Landroidx/compose/foundation/pager/PagerState;

    move-object v3, v2

    iget-object v2, v0, Lg90;->d:Landroidx/compose/foundation/layout/PaddingValues;

    move-object v4, v3

    iget-boolean v3, v0, Lg90;->e:Z

    move-object v5, v4

    iget-object v4, v0, Lg90;->f:Landroidx/compose/foundation/gestures/Orientation;

    move-object v6, v5

    iget-object v5, v0, Lg90;->g:Landroidx/compose/foundation/gestures/TargetedFlingBehavior;

    move-object v7, v6

    iget-boolean v6, v0, Lg90;->h:Z

    move-object v8, v7

    iget-object v7, v0, Lg90;->i:Landroidx/compose/foundation/OverscrollEffect;

    move-object v9, v8

    iget v8, v0, Lg90;->j:I

    move-object v10, v9

    iget v9, v0, Lg90;->k:F

    move-object v11, v10

    iget-object v10, v0, Lg90;->l:Landroidx/compose/foundation/pager/PageSize;

    move-object v12, v11

    iget-object v11, v0, Lg90;->m:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    move-object v13, v12

    iget-object v12, v0, Lg90;->n:Landroidx/compose/ui/Alignment$Horizontal;

    move-object v14, v13

    iget-object v13, v0, Lg90;->o:Landroidx/compose/ui/Alignment$Vertical;

    move-object v15, v14

    iget-object v14, v0, Lg90;->p:Landroidx/compose/foundation/gestures/snapping/SnapPosition;

    iget-object v0, v0, Lg90;->q:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-object/from16 v19, v15

    move-object v15, v0

    move-object/from16 v0, v19

    invoke-static/range {v0 .. v18}, Landroidx/compose/foundation/pager/LazyLayoutPagerKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/TargetedFlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;IFLandroidx/compose/foundation/pager/PageSize;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
