.class public final synthetic Lpw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/ExposedDropdownMenuBoxScope;

.field public final synthetic c:Z

.field public final synthetic d:Lkotlin/jvm/functions/Function0;

.field public final synthetic e:Landroidx/compose/ui/Modifier;

.field public final synthetic f:Landroidx/compose/foundation/ScrollState;

.field public final synthetic g:Z

.field public final synthetic h:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic i:J

.field public final synthetic j:F

.field public final synthetic k:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/ExposedDropdownMenuBoxScope;ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/ui/graphics/Shape;JFLandroidx/compose/runtime/internal/ComposableLambdaImpl;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpw;->b:Landroidx/compose/material3/ExposedDropdownMenuBoxScope;

    iput-boolean p2, p0, Lpw;->c:Z

    iput-object p3, p0, Lpw;->d:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lpw;->e:Landroidx/compose/ui/Modifier;

    iput-object p5, p0, Lpw;->f:Landroidx/compose/foundation/ScrollState;

    iput-boolean p6, p0, Lpw;->g:Z

    iput-object p7, p0, Lpw;->h:Landroidx/compose/ui/graphics/Shape;

    iput-wide p8, p0, Lpw;->i:J

    iput p10, p0, Lpw;->j:F

    iput-object p11, p0, Lpw;->k:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iput p13, p0, Lpw;->l:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    move-object v11, p1

    check-cast v11, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v12

    iget v0, p0, Lpw;->l:I

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v13

    iget-object v0, p0, Lpw;->b:Landroidx/compose/material3/ExposedDropdownMenuBoxScope;

    iget-boolean v1, p0, Lpw;->c:Z

    iget-object v2, p0, Lpw;->d:Lkotlin/jvm/functions/Function0;

    iget-object v3, p0, Lpw;->e:Landroidx/compose/ui/Modifier;

    iget-object v4, p0, Lpw;->f:Landroidx/compose/foundation/ScrollState;

    iget-boolean v5, p0, Lpw;->g:Z

    iget-object v6, p0, Lpw;->h:Landroidx/compose/ui/graphics/Shape;

    iget-wide v7, p0, Lpw;->i:J

    iget v9, p0, Lpw;->j:F

    iget-object v10, p0, Lpw;->k:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-virtual/range {v0 .. v13}, Landroidx/compose/material3/ExposedDropdownMenuBoxScope;->a(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/ui/graphics/Shape;JFLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
