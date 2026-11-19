.class final Landroidx/compose/material3/DatePickerKt$YearPicker$1;
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
.field public final synthetic b:Landroidx/compose/material3/internal/CalendarModel;

.field public final synthetic c:J

.field public final synthetic d:Lkotlin/ranges/IntRange;

.field public final synthetic e:Landroidx/compose/ui/Modifier;

.field public final synthetic f:Landroidx/compose/material3/DatePickerColors;

.field public final synthetic g:Lkotlin/jvm/functions/Function1;

.field public final synthetic h:Landroidx/compose/material3/SelectableDates;


# direct methods
.method public constructor <init>(Landroidx/compose/material3/internal/CalendarModel;JLkotlin/ranges/IntRange;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/DatePickerColors;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/SelectableDates;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->b:Landroidx/compose/material3/internal/CalendarModel;

    iput-wide p2, p0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->c:J

    iput-object p4, p0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->d:Lkotlin/ranges/IntRange;

    iput-object p5, p0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->e:Landroidx/compose/ui/Modifier;

    iput-object p6, p0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->f:Landroidx/compose/material3/DatePickerColors;

    iput-object p7, p0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->g:Lkotlin/jvm/functions/Function1;

    iput-object p8, p0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->h:Landroidx/compose/material3/SelectableDates;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    check-cast v10, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eq v2, v5, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    and-int/2addr v1, v3

    invoke-interface {v10, v1, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v1, v0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->b:Landroidx/compose/material3/internal/CalendarModel;

    invoke-virtual {v1}, Landroidx/compose/material3/internal/CalendarModel;->g()Landroidx/compose/material3/internal/CalendarDate;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/compose/material3/internal/CalendarModel;->f(Landroidx/compose/material3/internal/CalendarDate;)Landroidx/compose/material3/internal/CalendarMonth;

    move-result-object v2

    iget v15, v2, Landroidx/compose/material3/internal/CalendarMonth;->a:I

    iget-wide v2, v0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->c:J

    invoke-virtual {v1, v2, v3}, Landroidx/compose/material3/internal/CalendarModel;->e(J)Landroidx/compose/material3/internal/CalendarMonth;

    move-result-object v2

    iget v14, v2, Landroidx/compose/material3/internal/CalendarMonth;->a:I

    iget-object v2, v0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->d:Lkotlin/ranges/IntRange;

    iget v3, v2, Lkotlin/ranges/IntProgression;->b:I

    sub-int v3, v14, v3

    const/4 v6, 0x3

    sub-int/2addr v3, v6

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v10, v5}, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/grid/LazyGridState;

    move-result-object v3

    new-instance v4, Landroidx/compose/foundation/lazy/grid/GridCells$Fixed;

    invoke-direct {v4, v6}, Landroidx/compose/foundation/lazy/grid/GridCells$Fixed;-><init>(I)V

    iget-object v5, v0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->f:Landroidx/compose/material3/DatePickerColors;

    iget-wide v6, v5, Landroidx/compose/material3/DatePickerColors;->a:J

    sget-object v8, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    iget-object v9, v0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->e:Landroidx/compose/ui/Modifier;

    invoke-static {v9, v6, v7, v8}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    sget-object v7, Landroidx/compose/foundation/layout/Arrangement;->f:Landroidx/compose/foundation/layout/Arrangement$SpaceEvenly$1;

    sget v8, Landroidx/compose/material3/DatePickerKt;->g:F

    invoke-static {v8}, Landroidx/compose/foundation/layout/Arrangement;->f(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v8

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v1, v2

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v2

    or-int/2addr v1, v2

    iget-object v2, v0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->g:Lkotlin/jvm/functions/Function1;

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    iget-object v2, v0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->h:Landroidx/compose/material3/SelectableDates;

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_1

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, v1, :cond_2

    :cond_1
    new-instance v11, Landroidx/compose/material3/g;

    iget-object v12, v0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->d:Lkotlin/ranges/IntRange;

    iget-object v13, v0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->b:Landroidx/compose/material3/internal/CalendarModel;

    iget-object v1, v0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->g:Lkotlin/jvm/functions/Function1;

    iget-object v0, v0, Landroidx/compose/material3/DatePickerKt$YearPicker$1;->h:Landroidx/compose/material3/SelectableDates;

    move-object/from16 v17, v0

    move-object/from16 v16, v1

    move-object/from16 v18, v5

    invoke-direct/range {v11 .. v18}, Landroidx/compose/material3/g;-><init>(Lkotlin/ranges/IntRange;Landroidx/compose/material3/internal/CalendarModel;IILkotlin/jvm/functions/Function1;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;)V

    invoke-interface {v10, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v2, v11

    :cond_2
    move-object v9, v2

    check-cast v9, Lkotlin/jvm/functions/Function1;

    const/high16 v11, 0x1b0000

    const/16 v12, 0x398

    move-object v2, v3

    const/4 v3, 0x0

    move-object v1, v6

    const/4 v6, 0x0

    move-object v5, v7

    const/4 v7, 0x0

    move-object v0, v4

    move-object v4, v8

    const/4 v8, 0x0

    invoke-static/range {v0 .. v12}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt;->b(Landroidx/compose/foundation/lazy/grid/GridCells$Fixed;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    goto :goto_1

    :cond_3
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
