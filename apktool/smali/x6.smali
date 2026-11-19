.class public final synthetic Lx6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Landroidx/compose/ui/Modifier;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:F

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Ljava/lang/Object;

.field public final synthetic j:I

.field public final synthetic k:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;II)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lx6;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx6;->c:Ljava/lang/Object;

    iput-object p2, p0, Lx6;->e:Ljava/lang/Object;

    iput-object p3, p0, Lx6;->d:Landroidx/compose/ui/Modifier;

    iput-object p4, p0, Lx6;->f:Ljava/lang/Object;

    iput-object p5, p0, Lx6;->h:Ljava/lang/Object;

    iput p6, p0, Lx6;->g:F

    iput-object p7, p0, Lx6;->i:Ljava/lang/Object;

    iput p8, p0, Lx6;->j:I

    iput p9, p0, Lx6;->k:I

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;III)V
    .locals 0

    .line 25
    iput p10, p0, Lx6;->b:I

    iput-object p1, p0, Lx6;->c:Ljava/lang/Object;

    iput-object p2, p0, Lx6;->d:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Lx6;->e:Ljava/lang/Object;

    iput-object p4, p0, Lx6;->f:Ljava/lang/Object;

    iput p5, p0, Lx6;->g:F

    iput-object p6, p0, Lx6;->h:Ljava/lang/Object;

    iput-object p7, p0, Lx6;->i:Ljava/lang/Object;

    iput p8, p0, Lx6;->j:I

    iput p9, p0, Lx6;->k:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Lx6;->b:I

    iget v2, v0, Lx6;->j:I

    iget-object v3, v0, Lx6;->i:Ljava/lang/Object;

    iget-object v4, v0, Lx6;->h:Ljava/lang/Object;

    iget-object v5, v0, Lx6;->f:Ljava/lang/Object;

    iget-object v6, v0, Lx6;->e:Ljava/lang/Object;

    iget-object v7, v0, Lx6;->c:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    move-object v8, v7

    check-cast v8, Landroidx/compose/ui/graphics/painter/Painter;

    move-object v9, v6

    check-cast v9, Ljava/lang/String;

    move-object v11, v5

    check-cast v11, Landroidx/compose/ui/Alignment;

    move-object v12, v4

    check-cast v12, Landroidx/compose/ui/layout/ContentScale;

    move-object v14, v3

    check-cast v14, Landroidx/compose/ui/graphics/ColorFilter;

    move-object/from16 v15, p1

    check-cast v15, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 v1, v2, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v16

    iget-object v10, v0, Lx6;->d:Landroidx/compose/ui/Modifier;

    iget v13, v0, Lx6;->g:F

    iget v0, v0, Lx6;->k:I

    move/from16 v17, v0

    invoke-static/range {v8 .. v17}, Landroidx/compose/foundation/ImageKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    move-object v1, v7

    check-cast v1, Lkotlin/jvm/functions/Function2;

    check-cast v6, Lkotlin/jvm/functions/Function2;

    check-cast v5, Lkotlin/jvm/functions/Function3;

    check-cast v4, Landroidx/compose/foundation/layout/WindowInsets;

    move-object v7, v3

    check-cast v7, Landroidx/compose/material3/TopAppBarColors;

    move-object/from16 v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v9

    iget-object v2, v0, Lx6;->d:Landroidx/compose/ui/Modifier;

    move-object v3, v6

    move-object v6, v4

    move-object v4, v5

    iget v5, v0, Lx6;->g:F

    iget v10, v0, Lx6;->k:I

    invoke-static/range {v1 .. v10}, Landroidx/compose/material3/AppBarKt;->c(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1
    move-object v1, v7

    check-cast v1, Lkotlin/jvm/functions/Function2;

    check-cast v6, Lkotlin/jvm/functions/Function2;

    check-cast v5, Lkotlin/jvm/functions/Function3;

    check-cast v4, Landroidx/compose/foundation/layout/WindowInsets;

    move-object v7, v3

    check-cast v7, Landroidx/compose/material3/TopAppBarColors;

    move-object/from16 v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v9

    iget-object v2, v0, Lx6;->d:Landroidx/compose/ui/Modifier;

    move-object v3, v6

    move-object v6, v4

    move-object v4, v5

    iget v5, v0, Lx6;->g:F

    iget v10, v0, Lx6;->k:I

    invoke-static/range {v1 .. v10}, Landroidx/compose/material3/AppBarKt;->a(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
