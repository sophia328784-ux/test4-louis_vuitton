.class public final synthetic Lsl0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/pager/PagerState;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic e:Landroidx/compose/foundation/pager/PageSize;

.field public final synthetic f:I

.field public final synthetic g:F

.field public final synthetic h:Landroidx/compose/ui/Alignment$Vertical;

.field public final synthetic i:Landroidx/compose/foundation/gestures/TargetedFlingBehavior;

.field public final synthetic j:Z

.field public final synthetic k:Z

.field public final synthetic l:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

.field public final synthetic m:Landroidx/compose/foundation/gestures/snapping/SnapPosition;

.field public final synthetic n:Landroidx/compose/foundation/OverscrollEffect;

.field public final synthetic o:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic p:I

.field public final synthetic q:I

.field public final synthetic r:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize;IFLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/TargetedFlingBehavior;ZZLandroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/runtime/internal/ComposableLambdaImpl;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsl0;->b:Landroidx/compose/foundation/pager/PagerState;

    iput-object p2, p0, Lsl0;->c:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Lsl0;->d:Landroidx/compose/foundation/layout/PaddingValues;

    iput-object p4, p0, Lsl0;->e:Landroidx/compose/foundation/pager/PageSize;

    iput p5, p0, Lsl0;->f:I

    iput p6, p0, Lsl0;->g:F

    iput-object p7, p0, Lsl0;->h:Landroidx/compose/ui/Alignment$Vertical;

    iput-object p8, p0, Lsl0;->i:Landroidx/compose/foundation/gestures/TargetedFlingBehavior;

    iput-boolean p9, p0, Lsl0;->j:Z

    iput-boolean p10, p0, Lsl0;->k:Z

    iput-object p11, p0, Lsl0;->l:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    iput-object p12, p0, Lsl0;->m:Landroidx/compose/foundation/gestures/snapping/SnapPosition;

    iput-object p13, p0, Lsl0;->n:Landroidx/compose/foundation/OverscrollEffect;

    iput-object p14, p0, Lsl0;->o:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iput p15, p0, Lsl0;->p:I

    move/from16 p1, p16

    iput p1, p0, Lsl0;->q:I

    move/from16 p1, p17

    iput p1, p0, Lsl0;->r:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    check-cast v14, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lsl0;->p:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v15

    iget v1, v0, Lsl0;->q:I

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v16

    iget-object v1, v0, Lsl0;->b:Landroidx/compose/foundation/pager/PagerState;

    move-object v2, v1

    iget-object v1, v0, Lsl0;->c:Landroidx/compose/ui/Modifier;

    move-object v3, v2

    iget-object v2, v0, Lsl0;->d:Landroidx/compose/foundation/layout/PaddingValues;

    move-object v4, v3

    iget-object v3, v0, Lsl0;->e:Landroidx/compose/foundation/pager/PageSize;

    move-object v5, v4

    iget v4, v0, Lsl0;->f:I

    move-object v6, v5

    iget v5, v0, Lsl0;->g:F

    move-object v7, v6

    iget-object v6, v0, Lsl0;->h:Landroidx/compose/ui/Alignment$Vertical;

    move-object v8, v7

    iget-object v7, v0, Lsl0;->i:Landroidx/compose/foundation/gestures/TargetedFlingBehavior;

    move-object v9, v8

    iget-boolean v8, v0, Lsl0;->j:Z

    move-object v10, v9

    iget-boolean v9, v0, Lsl0;->k:Z

    move-object v11, v10

    iget-object v10, v0, Lsl0;->l:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    move-object v12, v11

    iget-object v11, v0, Lsl0;->m:Landroidx/compose/foundation/gestures/snapping/SnapPosition;

    move-object v13, v12

    iget-object v12, v0, Lsl0;->n:Landroidx/compose/foundation/OverscrollEffect;

    move-object/from16 v17, v13

    iget-object v13, v0, Lsl0;->o:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iget v0, v0, Lsl0;->r:I

    move-object/from16 v18, v17

    move/from16 v17, v0

    move-object/from16 v0, v18

    invoke-static/range {v0 .. v17}, Landroidx/compose/foundation/pager/PagerKt;->a(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize;IFLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/TargetedFlingBehavior;ZZLandroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
