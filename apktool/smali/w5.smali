.class public final synthetic Lw5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lkotlin/jvm/functions/Function0;

.field public final synthetic d:Landroidx/compose/ui/Modifier;

.field public final synthetic e:J

.field public final synthetic f:Landroidx/compose/foundation/ScrollState;

.field public final synthetic g:Landroidx/compose/ui/window/PopupProperties;

.field public final synthetic h:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic i:J

.field public final synthetic j:F

.field public final synthetic k:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic l:I

.field public final synthetic m:I


# direct methods
.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/ScrollState;Landroidx/compose/ui/window/PopupProperties;Landroidx/compose/ui/graphics/Shape;JFLandroidx/compose/runtime/internal/ComposableLambdaImpl;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lw5;->b:Z

    iput-object p2, p0, Lw5;->c:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lw5;->d:Landroidx/compose/ui/Modifier;

    iput-wide p4, p0, Lw5;->e:J

    iput-object p6, p0, Lw5;->f:Landroidx/compose/foundation/ScrollState;

    iput-object p7, p0, Lw5;->g:Landroidx/compose/ui/window/PopupProperties;

    iput-object p8, p0, Lw5;->h:Landroidx/compose/ui/graphics/Shape;

    iput-wide p9, p0, Lw5;->i:J

    iput p11, p0, Lw5;->j:F

    iput-object p12, p0, Lw5;->k:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iput p13, p0, Lw5;->l:I

    iput p14, p0, Lw5;->m:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lw5;->l:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v13

    iget-boolean v1, v0, Lw5;->b:Z

    move v2, v1

    iget-object v1, v0, Lw5;->c:Lkotlin/jvm/functions/Function0;

    move v3, v2

    iget-object v2, v0, Lw5;->d:Landroidx/compose/ui/Modifier;

    move v5, v3

    iget-wide v3, v0, Lw5;->e:J

    move v6, v5

    iget-object v5, v0, Lw5;->f:Landroidx/compose/foundation/ScrollState;

    move v7, v6

    iget-object v6, v0, Lw5;->g:Landroidx/compose/ui/window/PopupProperties;

    move v8, v7

    iget-object v7, v0, Lw5;->h:Landroidx/compose/ui/graphics/Shape;

    move v10, v8

    iget-wide v8, v0, Lw5;->i:J

    move v11, v10

    iget v10, v0, Lw5;->j:F

    move v14, v11

    iget-object v11, v0, Lw5;->k:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iget v0, v0, Lw5;->m:I

    move v15, v14

    move v14, v0

    move v0, v15

    invoke-static/range {v0 .. v14}, Landroidx/compose/material3/AndroidMenu_androidKt;->a(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/ScrollState;Landroidx/compose/ui/window/PopupProperties;Landroidx/compose/ui/graphics/Shape;JFLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
