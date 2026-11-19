.class public final synthetic Lbd0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lkotlin/jvm/functions/Function0;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Landroidx/compose/material3/SheetState;

.field public final synthetic e:F

.field public final synthetic f:Z

.field public final synthetic g:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic h:J

.field public final synthetic i:J

.field public final synthetic j:J

.field public final synthetic k:Lkotlin/jvm/functions/Function2;

.field public final synthetic l:Lkotlin/jvm/functions/Function2;

.field public final synthetic m:Landroidx/compose/material3/ModalBottomSheetProperties;

.field public final synthetic n:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic o:I

.field public final synthetic p:I


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;FZLandroidx/compose/ui/graphics/Shape;JJJLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/ModalBottomSheetProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbd0;->b:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lbd0;->c:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Lbd0;->d:Landroidx/compose/material3/SheetState;

    iput p4, p0, Lbd0;->e:F

    iput-boolean p5, p0, Lbd0;->f:Z

    iput-object p6, p0, Lbd0;->g:Landroidx/compose/ui/graphics/Shape;

    iput-wide p7, p0, Lbd0;->h:J

    iput-wide p9, p0, Lbd0;->i:J

    iput-wide p11, p0, Lbd0;->j:J

    iput-object p13, p0, Lbd0;->k:Lkotlin/jvm/functions/Function2;

    iput-object p14, p0, Lbd0;->l:Lkotlin/jvm/functions/Function2;

    iput-object p15, p0, Lbd0;->m:Landroidx/compose/material3/ModalBottomSheetProperties;

    move-object/from16 p1, p16

    iput-object p1, p0, Lbd0;->n:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move/from16 p1, p17

    iput p1, p0, Lbd0;->o:I

    move/from16 p1, p18

    iput p1, p0, Lbd0;->p:I

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

    iget v1, v0, Lbd0;->o:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v17

    iget v1, v0, Lbd0;->p:I

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v18

    iget-object v1, v0, Lbd0;->b:Lkotlin/jvm/functions/Function0;

    move-object v2, v1

    iget-object v1, v0, Lbd0;->c:Landroidx/compose/ui/Modifier;

    move-object v3, v2

    iget-object v2, v0, Lbd0;->d:Landroidx/compose/material3/SheetState;

    move-object v4, v3

    iget v3, v0, Lbd0;->e:F

    move-object v5, v4

    iget-boolean v4, v0, Lbd0;->f:Z

    move-object v6, v5

    iget-object v5, v0, Lbd0;->g:Landroidx/compose/ui/graphics/Shape;

    move-object v8, v6

    iget-wide v6, v0, Lbd0;->h:J

    move-object v10, v8

    iget-wide v8, v0, Lbd0;->i:J

    move-object v12, v10

    iget-wide v10, v0, Lbd0;->j:J

    move-object v13, v12

    iget-object v12, v0, Lbd0;->k:Lkotlin/jvm/functions/Function2;

    move-object v14, v13

    iget-object v13, v0, Lbd0;->l:Lkotlin/jvm/functions/Function2;

    move-object v15, v14

    iget-object v14, v0, Lbd0;->m:Landroidx/compose/material3/ModalBottomSheetProperties;

    iget-object v0, v0, Lbd0;->n:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-object/from16 v19, v15

    move-object v15, v0

    move-object/from16 v0, v19

    invoke-static/range {v0 .. v18}, Landroidx/compose/material3/ModalBottomSheetKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;FZLandroidx/compose/ui/graphics/Shape;JJJLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/ModalBottomSheetProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
