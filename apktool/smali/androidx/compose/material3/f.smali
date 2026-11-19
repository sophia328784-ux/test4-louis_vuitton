.class public final synthetic Landroidx/compose/material3/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lkotlin/ranges/IntRange;

.field public final synthetic c:Landroidx/compose/material3/internal/CalendarModel;

.field public final synthetic d:Landroidx/compose/material3/internal/CalendarMonth;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;

.field public final synthetic f:Landroidx/compose/material3/internal/CalendarDate;

.field public final synthetic g:Ljava/lang/Long;

.field public final synthetic h:Landroidx/compose/material3/DatePickerFormatter;

.field public final synthetic i:Landroidx/compose/material3/SelectableDates;

.field public final synthetic j:Landroidx/compose/material3/DatePickerColors;


# direct methods
.method public synthetic constructor <init>(Lkotlin/ranges/IntRange;Landroidx/compose/material3/internal/CalendarModel;Landroidx/compose/material3/internal/CalendarMonth;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/internal/CalendarDate;Ljava/lang/Long;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/f;->b:Lkotlin/ranges/IntRange;

    iput-object p2, p0, Landroidx/compose/material3/f;->c:Landroidx/compose/material3/internal/CalendarModel;

    iput-object p3, p0, Landroidx/compose/material3/f;->d:Landroidx/compose/material3/internal/CalendarMonth;

    iput-object p4, p0, Landroidx/compose/material3/f;->e:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Landroidx/compose/material3/f;->f:Landroidx/compose/material3/internal/CalendarDate;

    iput-object p6, p0, Landroidx/compose/material3/f;->g:Ljava/lang/Long;

    iput-object p7, p0, Landroidx/compose/material3/f;->h:Landroidx/compose/material3/DatePickerFormatter;

    iput-object p8, p0, Landroidx/compose/material3/f;->i:Landroidx/compose/material3/SelectableDates;

    iput-object p9, p0, Landroidx/compose/material3/f;->j:Landroidx/compose/material3/DatePickerColors;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListScope;

    sget p1, Landroidx/compose/material3/DatePickerKt;->a:F

    iget-object p1, p0, Landroidx/compose/material3/f;->b:Lkotlin/ranges/IntRange;

    iget v1, p1, Lkotlin/ranges/IntProgression;->c:I

    iget p1, p1, Lkotlin/ranges/IntProgression;->b:I

    sub-int/2addr v1, p1

    const/4 p1, 0x1

    add-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0xc

    new-instance v2, Landroidx/compose/material3/DatePickerKt$HorizontalMonthsList$1$2$1$1;

    iget-object v3, p0, Landroidx/compose/material3/f;->c:Landroidx/compose/material3/internal/CalendarModel;

    iget-object v4, p0, Landroidx/compose/material3/f;->d:Landroidx/compose/material3/internal/CalendarMonth;

    iget-object v5, p0, Landroidx/compose/material3/f;->e:Lkotlin/jvm/functions/Function1;

    iget-object v6, p0, Landroidx/compose/material3/f;->f:Landroidx/compose/material3/internal/CalendarDate;

    iget-object v7, p0, Landroidx/compose/material3/f;->g:Ljava/lang/Long;

    iget-object v8, p0, Landroidx/compose/material3/f;->h:Landroidx/compose/material3/DatePickerFormatter;

    iget-object v9, p0, Landroidx/compose/material3/f;->i:Landroidx/compose/material3/SelectableDates;

    iget-object v10, p0, Landroidx/compose/material3/f;->j:Landroidx/compose/material3/DatePickerColors;

    invoke-direct/range {v2 .. v10}, Landroidx/compose/material3/DatePickerKt$HorizontalMonthsList$1$2$1$1;-><init>(Landroidx/compose/material3/internal/CalendarModel;Landroidx/compose/material3/internal/CalendarMonth;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/internal/CalendarDate;Ljava/lang/Long;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;)V

    new-instance v4, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const p0, 0x453c626

    invoke-direct {v4, p0, p1, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    const/4 v5, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/LazyListScope;->j(Landroidx/compose/foundation/lazy/LazyListScope;ILk0;Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/a;Lkotlin/jvm/functions/Function4;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
