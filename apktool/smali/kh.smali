.class public final synthetic Lkh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Landroidx/compose/material3/BottomSheetScaffoldState;

.field public final synthetic e:F

.field public final synthetic f:F

.field public final synthetic g:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic h:J

.field public final synthetic i:J

.field public final synthetic j:F

.field public final synthetic k:Lkotlin/jvm/functions/Function2;

.field public final synthetic l:Z

.field public final synthetic m:Lkotlin/jvm/functions/Function2;

.field public final synthetic n:Lkotlin/jvm/functions/Function3;

.field public final synthetic o:J

.field public final synthetic p:J

.field public final synthetic q:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic r:I

.field public final synthetic s:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/BottomSheetScaffoldState;FFLandroidx/compose/ui/graphics/Shape;JJFLkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;JJLandroidx/compose/runtime/internal/ComposableLambdaImpl;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkh;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iput-object p2, p0, Lkh;->c:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Lkh;->d:Landroidx/compose/material3/BottomSheetScaffoldState;

    iput p4, p0, Lkh;->e:F

    iput p5, p0, Lkh;->f:F

    iput-object p6, p0, Lkh;->g:Landroidx/compose/ui/graphics/Shape;

    iput-wide p7, p0, Lkh;->h:J

    iput-wide p9, p0, Lkh;->i:J

    iput p11, p0, Lkh;->j:F

    iput-object p12, p0, Lkh;->k:Lkotlin/jvm/functions/Function2;

    iput-boolean p13, p0, Lkh;->l:Z

    iput-object p14, p0, Lkh;->m:Lkotlin/jvm/functions/Function2;

    iput-object p15, p0, Lkh;->n:Lkotlin/jvm/functions/Function3;

    move-wide/from16 p1, p16

    iput-wide p1, p0, Lkh;->o:J

    move-wide/from16 p1, p18

    iput-wide p1, p0, Lkh;->p:J

    move-object/from16 p1, p20

    iput-object p1, p0, Lkh;->q:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move/from16 p1, p22

    iput p1, p0, Lkh;->r:I

    move/from16 p1, p23

    iput p1, p0, Lkh;->s:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v20, p1

    check-cast v20, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x7

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v21

    iget v1, v0, Lkh;->r:I

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v22

    iget-object v1, v0, Lkh;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-object v2, v1

    iget-object v1, v0, Lkh;->c:Landroidx/compose/ui/Modifier;

    move-object v3, v2

    iget-object v2, v0, Lkh;->d:Landroidx/compose/material3/BottomSheetScaffoldState;

    move-object v4, v3

    iget v3, v0, Lkh;->e:F

    move-object v5, v4

    iget v4, v0, Lkh;->f:F

    move-object v6, v5

    iget-object v5, v0, Lkh;->g:Landroidx/compose/ui/graphics/Shape;

    move-object v8, v6

    iget-wide v6, v0, Lkh;->h:J

    move-object v10, v8

    iget-wide v8, v0, Lkh;->i:J

    move-object v11, v10

    iget v10, v0, Lkh;->j:F

    move-object v12, v11

    iget-object v11, v0, Lkh;->k:Lkotlin/jvm/functions/Function2;

    move-object v13, v12

    iget-boolean v12, v0, Lkh;->l:Z

    move-object v14, v13

    iget-object v13, v0, Lkh;->m:Lkotlin/jvm/functions/Function2;

    move-object v15, v14

    iget-object v14, v0, Lkh;->n:Lkotlin/jvm/functions/Function3;

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    iget-wide v1, v0, Lkh;->o:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lkh;->p:J

    move-wide/from16 p1, v1

    iget-object v1, v0, Lkh;->q:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iget v0, v0, Lkh;->s:I

    move/from16 v23, v0

    move-object v0, v15

    move-object/from16 v2, v17

    move-wide/from16 v24, v18

    move-object/from16 v19, v1

    move-wide/from16 v17, p1

    move-object/from16 v1, v16

    move-wide/from16 v15, v24

    invoke-static/range {v0 .. v23}, Landroidx/compose/material3/BottomSheetScaffoldKt;->a(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/BottomSheetScaffoldState;FFLandroidx/compose/ui/graphics/Shape;JJFLkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;JJLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;III)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
