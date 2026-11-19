.class final Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Landroidx/compose/material3/BottomSheetScaffoldState;

.field public final synthetic c:Lkotlin/jvm/functions/Function2;

.field public final synthetic d:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic e:F

.field public final synthetic f:F

.field public final synthetic g:Z

.field public final synthetic h:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic i:J

.field public final synthetic j:J

.field public final synthetic k:F

.field public final synthetic l:Lkotlin/jvm/functions/Function2;

.field public final synthetic m:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic n:Lkotlin/jvm/functions/Function3;


# direct methods
.method public constructor <init>(Landroidx/compose/material3/BottomSheetScaffoldState;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;FFZLandroidx/compose/ui/graphics/Shape;JJFLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$1$1;->b:Landroidx/compose/material3/BottomSheetScaffoldState;

    iput-object p2, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$1$1;->c:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$1$1;->d:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iput p4, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$1$1;->e:F

    iput p5, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$1$1;->f:F

    iput-boolean p6, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$1$1;->g:Z

    iput-object p7, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$1$1;->h:Landroidx/compose/ui/graphics/Shape;

    iput-wide p8, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$1$1;->i:J

    iput-wide p10, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$1$1;->j:J

    iput p12, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$1$1;->k:F

    iput-object p13, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$1$1;->l:Lkotlin/jvm/functions/Function2;

    iput-object p14, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$1$1;->m:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iput-object p15, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$1$1;->n:Lkotlin/jvm/functions/Function3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x1

    if-eq v2, v3, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/2addr v1, v5

    invoke-interface {v6, v1, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v1, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$1$1;->b:Landroidx/compose/material3/BottomSheetScaffoldState;

    iget-object v5, v1, Landroidx/compose/material3/BottomSheetScaffoldState;->a:Landroidx/compose/material3/SheetState;

    new-instance v2, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$1$1$1;

    iget-object v3, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$1$1;->d:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iget v7, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$1$1;->e:F

    invoke-direct {v2, v3, v7}, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$1$1$1;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;F)V

    const v3, -0x1ef8305a

    invoke-static {v3, v2, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v2

    new-instance v7, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$1$1$2;

    iget-object v3, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$1$1;->l:Lkotlin/jvm/functions/Function2;

    iget-object v8, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$1$1;->m:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-object/from16 v19, v8

    iget-object v8, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$1$1;->b:Landroidx/compose/material3/BottomSheetScaffoldState;

    iget v9, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$1$1;->e:F

    iget v10, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$1$1;->f:F

    iget-boolean v11, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$1$1;->g:Z

    iget-object v12, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$1$1;->h:Landroidx/compose/ui/graphics/Shape;

    iget-wide v13, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$1$1;->i:J

    move-object/from16 p2, v5

    iget-wide v4, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$1$1;->j:J

    iget v15, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$1$1;->k:F

    move-object/from16 v18, v3

    move/from16 v17, v15

    move-wide v15, v4

    invoke-direct/range {v7 .. v19}, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$1$1$2;-><init>(Landroidx/compose/material3/BottomSheetScaffoldState;FFZLandroidx/compose/ui/graphics/Shape;JJFLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    const v3, -0x309d717b

    invoke-static {v3, v7, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v3

    new-instance v4, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$1$1$3;

    iget-object v5, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$1$1;->n:Lkotlin/jvm/functions/Function3;

    invoke-direct {v4, v5, v1}, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$1$1$3;-><init>(Lkotlin/jvm/functions/Function3;Landroidx/compose/material3/BottomSheetScaffoldState;)V

    const v5, -0x4242b29c

    invoke-static {v5, v4, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v4

    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v5, :cond_1

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v7, v5, :cond_2

    :cond_1
    new-instance v7, Llh;

    const/4 v5, 0x0

    invoke-direct {v7, v1, v5}, Llh;-><init>(Landroidx/compose/material3/BottomSheetScaffoldState;I)V

    invoke-interface {v6, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    check-cast v7, Lkotlin/jvm/functions/Function0;

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v7

    const/16 v7, 0xdb0

    iget-object v0, v0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$1$1;->c:Lkotlin/jvm/functions/Function2;

    move-object/from16 v5, p2

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/BottomSheetScaffoldKt;->b(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/SheetState;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_3
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
