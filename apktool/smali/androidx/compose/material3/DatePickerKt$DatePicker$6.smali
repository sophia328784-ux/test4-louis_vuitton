.class final Landroidx/compose/material3/DatePickerKt$DatePicker$6;
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
.field public final synthetic b:Landroidx/compose/material3/DatePickerState;

.field public final synthetic c:Landroidx/compose/material3/internal/CalendarModel;

.field public final synthetic d:Landroidx/compose/material3/DatePickerFormatter;

.field public final synthetic e:Landroidx/compose/material3/DatePickerColors;

.field public final synthetic f:Landroidx/compose/ui/focus/FocusRequester;


# direct methods
.method public constructor <init>(Landroidx/compose/material3/DatePickerState;Landroidx/compose/material3/internal/CalendarModel;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/ui/focus/FocusRequester;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/DatePickerKt$DatePicker$6;->b:Landroidx/compose/material3/DatePickerState;

    iput-object p2, p0, Landroidx/compose/material3/DatePickerKt$DatePicker$6;->c:Landroidx/compose/material3/internal/CalendarModel;

    iput-object p3, p0, Landroidx/compose/material3/DatePickerKt$DatePicker$6;->d:Landroidx/compose/material3/DatePickerFormatter;

    iput-object p4, p0, Landroidx/compose/material3/DatePickerKt$DatePicker$6;->e:Landroidx/compose/material3/DatePickerColors;

    iput-object p5, p0, Landroidx/compose/material3/DatePickerKt$DatePicker$6;->f:Landroidx/compose/ui/focus/FocusRequester;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    move-object v12, p1

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    and-int/lit8 v1, v0, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/2addr v0, v2

    invoke-interface {v12, v0, v1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v0, p0, Landroidx/compose/material3/DatePickerKt$DatePicker$6;->b:Landroidx/compose/material3/DatePickerState;

    invoke-interface {v0}, Landroidx/compose/material3/DatePickerState;->c()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0}, Landroidx/compose/material3/DatePickerState;->h()J

    move-result-wide v4

    invoke-interface {v0}, Landroidx/compose/material3/DatePickerState;->g()I

    move-result v6

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v7, :cond_1

    if-ne v8, v9, :cond_2

    :cond_1
    new-instance v8, Lhs;

    invoke-direct {v8, v0, v2}, Lhs;-><init>(Landroidx/compose/material3/DatePickerState;I)V

    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v2, :cond_3

    if-ne v7, v9, :cond_4

    :cond_3
    new-instance v7, Lhs;

    invoke-direct {v7, v0, v3}, Lhs;-><init>(Landroidx/compose/material3/DatePickerState;I)V

    invoke-interface {v12, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    check-cast v7, Lkotlin/jvm/functions/Function1;

    move-object v3, v0

    move-object v0, v1

    move-wide v1, v4

    move-object v5, v7

    invoke-interface {v3}, Landroidx/compose/material3/DatePickerState;->d()Lkotlin/ranges/IntRange;

    move-result-object v7

    invoke-interface {v3}, Landroidx/compose/material3/DatePickerState;->b()Landroidx/compose/material3/SelectableDates;

    move-result-object v9

    iget-object v11, p0, Landroidx/compose/material3/DatePickerKt$DatePicker$6;->f:Landroidx/compose/ui/focus/FocusRequester;

    const/4 v13, 0x0

    move v3, v6

    iget-object v6, p0, Landroidx/compose/material3/DatePickerKt$DatePicker$6;->c:Landroidx/compose/material3/internal/CalendarModel;

    move-object v4, v8

    iget-object v8, p0, Landroidx/compose/material3/DatePickerKt$DatePicker$6;->d:Landroidx/compose/material3/DatePickerFormatter;

    iget-object v10, p0, Landroidx/compose/material3/DatePickerKt$DatePicker$6;->e:Landroidx/compose/material3/DatePickerColors;

    invoke-static/range {v0 .. v13}, Landroidx/compose/material3/DatePickerKt;->k(Ljava/lang/Long;JILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/internal/CalendarModel;Lkotlin/ranges/IntRange;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/ui/focus/FocusRequester;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_5
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
