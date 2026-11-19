.class public final synthetic Lgh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/SheetState;

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:Z

.field public final synthetic f:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic g:J

.field public final synthetic h:J

.field public final synthetic i:F

.field public final synthetic j:Lkotlin/jvm/functions/Function2;

.field public final synthetic k:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/SheetState;FFZLandroidx/compose/ui/graphics/Shape;JJFLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgh;->b:Landroidx/compose/material3/SheetState;

    iput p2, p0, Lgh;->c:F

    iput p3, p0, Lgh;->d:F

    iput-boolean p4, p0, Lgh;->e:Z

    iput-object p5, p0, Lgh;->f:Landroidx/compose/ui/graphics/Shape;

    iput-wide p6, p0, Lgh;->g:J

    iput-wide p8, p0, Lgh;->h:J

    iput p10, p0, Lgh;->i:F

    iput-object p11, p0, Lgh;->j:Lkotlin/jvm/functions/Function2;

    iput-object p12, p0, Lgh;->k:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    move-object v12, p1

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v13

    iget-object v0, p0, Lgh;->b:Landroidx/compose/material3/SheetState;

    iget v1, p0, Lgh;->c:F

    iget v2, p0, Lgh;->d:F

    iget-boolean v3, p0, Lgh;->e:Z

    iget-object v4, p0, Lgh;->f:Landroidx/compose/ui/graphics/Shape;

    iget-wide v5, p0, Lgh;->g:J

    iget-wide v7, p0, Lgh;->h:J

    iget v9, p0, Lgh;->i:F

    iget-object v10, p0, Lgh;->j:Lkotlin/jvm/functions/Function2;

    iget-object v11, p0, Lgh;->k:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-static/range {v0 .. v13}, Landroidx/compose/material3/BottomSheetScaffoldKt;->c(Landroidx/compose/material3/SheetState;FFZLandroidx/compose/ui/graphics/Shape;JJFLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
