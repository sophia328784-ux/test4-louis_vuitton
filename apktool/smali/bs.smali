.class public final synthetic Lbs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/internal/CalendarMonth;

.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:J

.field public final synthetic e:Ljava/lang/Long;

.field public final synthetic f:Landroidx/compose/material3/DatePickerFormatter;

.field public final synthetic g:Landroidx/compose/material3/SelectableDates;

.field public final synthetic h:Landroidx/compose/material3/DatePickerColors;

.field public final synthetic i:Ljava/util/Locale;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/internal/CalendarMonth;Lkotlin/jvm/functions/Function1;JLjava/lang/Long;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;Ljava/util/Locale;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbs;->b:Landroidx/compose/material3/internal/CalendarMonth;

    iput-object p2, p0, Lbs;->c:Lkotlin/jvm/functions/Function1;

    iput-wide p3, p0, Lbs;->d:J

    iput-object p5, p0, Lbs;->e:Ljava/lang/Long;

    iput-object p6, p0, Lbs;->f:Landroidx/compose/material3/DatePickerFormatter;

    iput-object p7, p0, Lbs;->g:Landroidx/compose/material3/SelectableDates;

    iput-object p8, p0, Lbs;->h:Landroidx/compose/material3/DatePickerColors;

    iput-object p9, p0, Lbs;->i:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p1, 0x36001

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v10

    iget-object v0, p0, Lbs;->b:Landroidx/compose/material3/internal/CalendarMonth;

    iget-object v1, p0, Lbs;->c:Lkotlin/jvm/functions/Function1;

    iget-wide v2, p0, Lbs;->d:J

    iget-object v4, p0, Lbs;->e:Ljava/lang/Long;

    iget-object v5, p0, Lbs;->f:Landroidx/compose/material3/DatePickerFormatter;

    iget-object v6, p0, Lbs;->g:Landroidx/compose/material3/SelectableDates;

    iget-object v7, p0, Lbs;->h:Landroidx/compose/material3/DatePickerColors;

    iget-object v8, p0, Lbs;->i:Ljava/util/Locale;

    invoke-static/range {v0 .. v10}, Landroidx/compose/material3/DatePickerKt;->i(Landroidx/compose/material3/internal/CalendarMonth;Lkotlin/jvm/functions/Function1;JLjava/lang/Long;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;Ljava/util/Locale;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
