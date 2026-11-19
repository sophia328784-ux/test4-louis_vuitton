.class final Landroidx/compose/material3/DatePickerKt$DisplayModeToggleButton$1;
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
.field public final synthetic b:I

.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:Landroidx/compose/ui/Modifier;


# direct methods
.method public constructor <init>(ILkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/material3/DatePickerKt$DisplayModeToggleButton$1;->b:I

    iput-object p2, p0, Landroidx/compose/material3/DatePickerKt$DisplayModeToggleButton$1;->c:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Landroidx/compose/material3/DatePickerKt$DisplayModeToggleButton$1;->d:Landroidx/compose/ui/Modifier;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/2addr v1, v4

    invoke-interface {v5, v1, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Landroidx/compose/material3/DisplayMode;->b:Landroidx/compose/material3/DisplayMode$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/high16 v2, 0x41a80000    # 21.0f

    const/4 v3, 0x0

    const/high16 v4, 0x40400000    # 3.0f

    iget-object v6, v0, Landroidx/compose/material3/DatePickerKt$DisplayModeToggleButton$1;->c:Lkotlin/jvm/functions/Function1;

    iget v7, v0, Landroidx/compose/material3/DatePickerKt$DisplayModeToggleButton$1;->b:I

    if-nez v7, :cond_4

    const v7, -0x6092e1f

    invoke-interface {v5, v7}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object v7, Landroidx/compose/material3/internal/Icons$Filled;->b:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v7, :cond_1

    goto/16 :goto_1

    :cond_1
    new-instance v8, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    sget-object v7, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/16 v18, 0xe0

    const/16 v19, 0x0

    const-string v9, "Filled.Edit"

    const/high16 v10, 0x41c00000    # 24.0f

    const/high16 v11, 0x41c00000    # 24.0f

    const/high16 v12, 0x41c00000    # 24.0f

    const/high16 v13, 0x41c00000    # 24.0f

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v8 .. v19}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v7, Landroidx/compose/ui/graphics/vector/VectorKt;->a:Lkotlin/collections/EmptyList;

    new-instance v7, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v9, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v9, Landroidx/compose/ui/graphics/Color;->c:J

    invoke-direct {v7, v9, v10, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v3, Landroidx/compose/ui/graphics/StrokeCap;->a:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/ui/graphics/StrokeJoin;->a:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v3, Landroidx/compose/ui/graphics/StrokeJoin;->c:I

    new-instance v9, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v10, 0x418a0000    # 17.25f

    invoke-virtual {v9, v4, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->f(FF)V

    new-instance v11, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;

    invoke-direct {v11, v2}, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;-><init>(F)V

    iget-object v2, v9, Landroidx/compose/ui/graphics/vector/PathBuilder;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v11, 0x40700000    # 3.75f

    invoke-virtual {v9, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->c(F)V

    const v12, 0x418e7ae1    # 17.81f

    const v13, 0x411f0a3d    # 9.94f

    invoke-virtual {v9, v12, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FF)V

    const/high16 v12, -0x3f900000    # -3.75f

    invoke-virtual {v9, v12, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->e(FF)V

    invoke-virtual {v9, v4, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FF)V

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->a()V

    const v4, 0x41a5ae14    # 20.71f

    const v10, 0x40e147ae    # 7.04f

    invoke-virtual {v9, v4, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->f(FF)V

    const/4 v14, 0x0

    const v15, -0x404b851f    # -1.41f

    const v10, 0x3ec7ae14    # 0.39f

    move v4, v11

    const v11, -0x413851ec    # -0.39f

    const v12, 0x3ec7ae14    # 0.39f

    const v13, -0x407d70a4    # -1.02f

    invoke-virtual/range {v9 .. v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b(FFFFFF)V

    const v10, -0x3fea3d71    # -2.34f

    invoke-virtual {v9, v10, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->e(FF)V

    const v14, -0x404b851f    # -1.41f

    const/4 v15, 0x0

    const v10, -0x413851ec    # -0.39f

    const v12, -0x407d70a4    # -1.02f

    const v13, -0x413851ec    # -0.39f

    invoke-virtual/range {v9 .. v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b(FFFFFF)V

    const v10, -0x4015c28f    # -1.83f

    const v11, 0x3fea3d71    # 1.83f

    invoke-virtual {v9, v10, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->e(FF)V

    invoke-virtual {v9, v4, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->e(FF)V

    invoke-virtual {v9, v11, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->e(FF)V

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->a()V

    invoke-static {v8, v2, v7, v3}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->c(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;I)V

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->d()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v7

    sput-object v7, Landroidx/compose/material3/internal/Icons$Filled;->b:Landroidx/compose/ui/graphics/vector/ImageVector;

    :goto_1
    sget v2, Landroidx/compose/material3/internal/Strings;->a:I

    const v2, 0x7f140bc8

    invoke-static {v5, v2}, Landroidx/compose/material3/internal/Strings_androidKt;->a(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v6}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_2

    if-ne v4, v1, :cond_3

    :cond_2
    new-instance v4, Lu8;

    const/16 v1, 0xb

    invoke-direct {v4, v6, v1}, Lu8;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x0

    move-object v1, v7

    const/16 v7, 0x10

    iget-object v3, v0, Landroidx/compose/material3/DatePickerKt$DisplayModeToggleButton$1;->d:Landroidx/compose/ui/Modifier;

    move-object v0, v4

    const/4 v4, 0x0

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/DatePickerKt;->h(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/Composer;II)V

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->F()V

    goto/16 :goto_3

    :cond_4
    const v7, -0x604a288

    invoke-interface {v5, v7}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object v7, Landroidx/compose/material3/internal/Icons$Filled;->c:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v7, :cond_5

    goto/16 :goto_2

    :cond_5
    new-instance v8, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    sget-object v7, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/16 v18, 0xe0

    const/16 v19, 0x0

    const-string v9, "Filled.DateRange"

    const/high16 v10, 0x41c00000    # 24.0f

    const/high16 v11, 0x41c00000    # 24.0f

    const/high16 v12, 0x41c00000    # 24.0f

    const/high16 v13, 0x41c00000    # 24.0f

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v8 .. v19}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v7, Landroidx/compose/ui/graphics/vector/VectorKt;->a:Lkotlin/collections/EmptyList;

    new-instance v7, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v9, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v9, Landroidx/compose/ui/graphics/Color;->c:J

    invoke-direct {v7, v9, v10, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v3, Landroidx/compose/ui/graphics/StrokeCap;->a:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/ui/graphics/StrokeJoin;->a:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v3, Landroidx/compose/ui/graphics/StrokeJoin;->c:I

    new-instance v9, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v10, 0x41100000    # 9.0f

    const/high16 v11, 0x41300000    # 11.0f

    invoke-virtual {v9, v10, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->f(FF)V

    const/high16 v12, 0x40e00000    # 7.0f

    invoke-virtual {v9, v12, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FF)V

    const/high16 v12, 0x40000000    # 2.0f

    invoke-virtual {v9, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(F)V

    invoke-virtual {v9, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->c(F)V

    const/high16 v13, -0x40000000    # -2.0f

    invoke-virtual {v9, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(F)V

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->a()V

    const/high16 v14, 0x41500000    # 13.0f

    invoke-virtual {v9, v14, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->f(FF)V

    invoke-virtual {v9, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->c(F)V

    invoke-virtual {v9, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(F)V

    invoke-virtual {v9, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->c(F)V

    invoke-virtual {v9, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(F)V

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->a()V

    const/high16 v14, 0x41880000    # 17.0f

    invoke-virtual {v9, v14, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->f(FF)V

    invoke-virtual {v9, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->c(F)V

    invoke-virtual {v9, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(F)V

    invoke-virtual {v9, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->c(F)V

    invoke-virtual {v9, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(F)V

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->a()V

    const/high16 v14, 0x41980000    # 19.0f

    const/high16 v15, 0x40800000    # 4.0f

    invoke-virtual {v9, v14, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->f(FF)V

    const/high16 v10, -0x40800000    # -1.0f

    invoke-virtual {v9, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->c(F)V

    const/high16 v10, 0x41900000    # 18.0f

    invoke-virtual {v9, v10, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FF)V

    invoke-virtual {v9, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->c(F)V

    invoke-virtual {v9, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(F)V

    const/high16 v10, 0x41000000    # 8.0f

    invoke-virtual {v9, v10, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FF)V

    invoke-virtual {v9, v10, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FF)V

    const/high16 v10, 0x40c00000    # 6.0f

    invoke-virtual {v9, v10, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FF)V

    invoke-virtual {v9, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(F)V

    const/high16 v12, 0x40a00000    # 5.0f

    invoke-virtual {v9, v12, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FF)V

    move v13, v14

    const v14, -0x400147ae    # -1.99f

    const/high16 v15, 0x40000000    # 2.0f

    move/from16 v16, v10

    const v10, -0x4071eb85    # -1.11f

    move/from16 v17, v11

    const/4 v11, 0x0

    move/from16 v18, v12

    const v12, -0x400147ae    # -1.99f

    move/from16 v19, v13

    const v13, 0x3f666666    # 0.9f

    invoke-virtual/range {v9 .. v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b(FFFFFF)V

    const/high16 v10, 0x41a00000    # 20.0f

    invoke-virtual {v9, v4, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FF)V

    const/high16 v14, 0x40000000    # 2.0f

    move v4, v10

    const/4 v10, 0x0

    const v11, 0x3f8ccccd    # 1.1f

    const v12, 0x3f63d70a    # 0.89f

    const/high16 v13, 0x40000000    # 2.0f

    invoke-virtual/range {v9 .. v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b(FFFFFF)V

    const/high16 v10, 0x41600000    # 14.0f

    invoke-virtual {v9, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->c(F)V

    const/high16 v15, -0x40000000    # -2.0f

    move v11, v10

    const v10, 0x3f8ccccd    # 1.1f

    move v12, v11

    const/4 v11, 0x0

    move v13, v12

    const/high16 v12, 0x40000000    # 2.0f

    move/from16 v16, v13

    const v13, -0x4099999a    # -0.9f

    invoke-virtual/range {v9 .. v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b(FFFFFF)V

    const/high16 v10, 0x40c00000    # 6.0f

    invoke-virtual {v9, v2, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FF)V

    const/high16 v14, -0x40000000    # -2.0f

    const/4 v10, 0x0

    const v11, -0x40733333    # -1.1f

    const v12, -0x4099999a    # -0.9f

    const/high16 v13, -0x40000000    # -2.0f

    invoke-virtual/range {v9 .. v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b(FFFFFF)V

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->a()V

    const/high16 v13, 0x41980000    # 19.0f

    invoke-virtual {v9, v13, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->f(FF)V

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v9, v2, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FF)V

    const/high16 v4, 0x41100000    # 9.0f

    invoke-virtual {v9, v2, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FF)V

    const/high16 v13, 0x41600000    # 14.0f

    invoke-virtual {v9, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->c(F)V

    const/high16 v2, 0x41300000    # 11.0f

    invoke-virtual {v9, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(F)V

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->a()V

    iget-object v2, v9, Landroidx/compose/ui/graphics/vector/PathBuilder;->a:Ljava/util/ArrayList;

    invoke-static {v8, v2, v7, v3}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->c(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;I)V

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->d()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v7

    sput-object v7, Landroidx/compose/material3/internal/Icons$Filled;->c:Landroidx/compose/ui/graphics/vector/ImageVector;

    :goto_2
    sget v2, Landroidx/compose/material3/internal/Strings;->a:I

    const v2, 0x7f140bc6

    invoke-static {v5, v2}, Landroidx/compose/material3/internal/Strings_androidKt;->a(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v6}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_6

    if-ne v4, v1, :cond_7

    :cond_6
    new-instance v4, Lu8;

    const/16 v1, 0xc

    invoke-direct {v4, v6, v1}, Lu8;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_7
    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x0

    move-object v1, v7

    const/16 v7, 0x10

    iget-object v3, v0, Landroidx/compose/material3/DatePickerKt$DisplayModeToggleButton$1;->d:Landroidx/compose/ui/Modifier;

    move-object v0, v4

    const/4 v4, 0x0

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/DatePickerKt;->h(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/Composer;II)V

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_3

    :cond_8
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->D()V

    :goto_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
