.class public final synthetic Landroidx/compose/material3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lkotlin/ranges/IntRange;

.field public final synthetic c:Landroidx/compose/material3/internal/CalendarModel;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Lkotlin/jvm/functions/Function1;

.field public final synthetic g:Landroidx/compose/material3/SelectableDates;

.field public final synthetic h:Landroidx/compose/material3/DatePickerColors;


# direct methods
.method public synthetic constructor <init>(Lkotlin/ranges/IntRange;Landroidx/compose/material3/internal/CalendarModel;IILkotlin/jvm/functions/Function1;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/g;->b:Lkotlin/ranges/IntRange;

    iput-object p2, p0, Landroidx/compose/material3/g;->c:Landroidx/compose/material3/internal/CalendarModel;

    iput p3, p0, Landroidx/compose/material3/g;->d:I

    iput p4, p0, Landroidx/compose/material3/g;->e:I

    iput-object p5, p0, Landroidx/compose/material3/g;->f:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Landroidx/compose/material3/g;->g:Landroidx/compose/material3/SelectableDates;

    iput-object p7, p0, Landroidx/compose/material3/g;->h:Landroidx/compose/material3/DatePickerColors;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridScope;

    iget-object v1, p0, Landroidx/compose/material3/g;->b:Lkotlin/ranges/IntRange;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, v1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    move v8, v0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    move-object v3, v0

    check-cast v3, Lkotlin/ranges/IntProgressionIterator;

    iget-boolean v3, v3, Lkotlin/ranges/IntProgressionIterator;->d:Z

    if-eqz v3, :cond_2

    move-object v3, v0

    check-cast v3, Lkotlin/collections/IntIterator;

    invoke-virtual {v3}, Lkotlin/collections/IntIterator;->next()Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    if-ltz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->s0()V

    const/4 p0, 0x0

    throw p0

    :cond_2
    move v8, v2

    :goto_1
    new-instance v0, Landroidx/compose/material3/DatePickerKt$YearPicker$1$1$1$1;

    iget-object v2, p0, Landroidx/compose/material3/g;->c:Landroidx/compose/material3/internal/CalendarModel;

    iget v3, p0, Landroidx/compose/material3/g;->d:I

    iget v4, p0, Landroidx/compose/material3/g;->e:I

    iget-object v5, p0, Landroidx/compose/material3/g;->f:Lkotlin/jvm/functions/Function1;

    iget-object v6, p0, Landroidx/compose/material3/g;->g:Landroidx/compose/material3/SelectableDates;

    iget-object v7, p0, Landroidx/compose/material3/g;->h:Landroidx/compose/material3/DatePickerColors;

    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/DatePickerKt$YearPicker$1$1$1$1;-><init>(Lkotlin/ranges/IntRange;Landroidx/compose/material3/internal/CalendarModel;IILkotlin/jvm/functions/Function1;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;)V

    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v1, 0x2835c752

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {p1, v8, p0}, Landroidx/compose/foundation/lazy/grid/LazyGridScope;->i(Landroidx/compose/foundation/lazy/grid/LazyGridScope;ILandroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
