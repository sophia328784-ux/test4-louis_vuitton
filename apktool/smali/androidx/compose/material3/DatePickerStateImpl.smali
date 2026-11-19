.class final Landroidx/compose/material3/DatePickerStateImpl;
.super Landroidx/compose/material3/BaseDatePickerStateImpl;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/material3/DatePickerState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material3/DatePickerStateImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0011B?\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\n\u0010\u000e\u001a\u00060\u000cj\u0002`\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/compose/material3/DatePickerStateImpl;",
        "Landroidx/compose/material3/BaseDatePickerStateImpl;",
        "Landroidx/compose/material3/DatePickerState;",
        "",
        "initialSelectedDateMillis",
        "initialDisplayedMonthMillis",
        "Lkotlin/ranges/IntRange;",
        "yearRange",
        "Landroidx/compose/material3/DisplayMode;",
        "initialDisplayMode",
        "Landroidx/compose/material3/SelectableDates;",
        "selectableDates",
        "Ljava/util/Locale;",
        "Landroidx/compose/material3/CalendarLocale;",
        "locale",
        "<init>",
        "(Ljava/lang/Long;Ljava/lang/Long;Lkotlin/ranges/IntRange;ILandroidx/compose/material3/SelectableDates;Ljava/util/Locale;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "Companion",
        "material3"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final h:Landroidx/compose/material3/DatePickerStateImpl$Companion;


# instance fields
.field public final f:Landroidx/compose/runtime/MutableState;

.field public final g:Landroidx/compose/runtime/MutableState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material3/DatePickerStateImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/material3/DatePickerStateImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/material3/DatePickerStateImpl;->h:Landroidx/compose/material3/DatePickerStateImpl$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Lkotlin/ranges/IntRange;ILandroidx/compose/material3/SelectableDates;Ljava/util/Locale;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p2, p3, p5, p6}, Landroidx/compose/material3/BaseDatePickerStateImpl;-><init>(Ljava/lang/Long;Lkotlin/ranges/IntRange;Landroidx/compose/material3/SelectableDates;Ljava/util/Locale;)V

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p5, p0, Landroidx/compose/material3/BaseDatePickerStateImpl;->c:Landroidx/compose/material3/internal/CalendarModelImpl;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p6

    invoke-virtual {p5, p6, p7}, Landroidx/compose/material3/internal/CalendarModelImpl;->k(J)Landroidx/compose/material3/internal/CalendarDate;

    move-result-object p1

    iget p5, p1, Landroidx/compose/material3/internal/CalendarDate;->b:I

    invoke-virtual {p3, p5}, Lkotlin/ranges/IntRange;->m(I)Z

    move-result p3

    if-eqz p3, :cond_0

    move-object p2, p1

    :cond_0
    invoke-static {p2}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/DatePickerStateImpl;->f:Landroidx/compose/runtime/MutableState;

    new-instance p1, Landroidx/compose/material3/DisplayMode;

    invoke-direct {p1, p4}, Landroidx/compose/material3/DisplayMode;-><init>(I)V

    invoke-static {p1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/DatePickerStateImpl;->g:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/Long;
    .locals 2

    iget-object p0, p0, Landroidx/compose/material3/DatePickerStateImpl;->f:Landroidx/compose/runtime/MutableState;

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/material3/internal/CalendarDate;

    if-eqz p0, :cond_0

    iget-wide v0, p0, Landroidx/compose/material3/internal/CalendarDate;->e:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final e(Ljava/lang/Long;)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/compose/material3/DatePickerStateImpl;->f:Landroidx/compose/runtime/MutableState;

    if-eqz p1, :cond_1

    iget-object v2, p0, Landroidx/compose/material3/BaseDatePickerStateImpl;->c:Landroidx/compose/material3/internal/CalendarModelImpl;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroidx/compose/material3/internal/CalendarModelImpl;->k(J)Landroidx/compose/material3/internal/CalendarDate;

    move-result-object p1

    iget-object p0, p0, Landroidx/compose/material3/BaseDatePickerStateImpl;->a:Lkotlin/ranges/IntRange;

    iget v2, p1, Landroidx/compose/material3/internal/CalendarDate;->b:I

    invoke-virtual {p0, v2}, Lkotlin/ranges/IntRange;->m(I)Z

    move-result p0

    if-eqz p0, :cond_0

    move-object v0, p1

    :cond_0
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    return-void

    :cond_1
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final f(I)V
    .locals 3

    invoke-virtual {p0}, Landroidx/compose/material3/DatePickerStateImpl;->c()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Landroidx/compose/material3/BaseDatePickerStateImpl;->c:Landroidx/compose/material3/internal/CalendarModelImpl;

    invoke-virtual {v2, v0, v1}, Landroidx/compose/material3/internal/CalendarModelImpl;->e(J)Landroidx/compose/material3/internal/CalendarMonth;

    move-result-object v0

    iget-wide v0, v0, Landroidx/compose/material3/internal/CalendarMonth;->e:J

    invoke-virtual {p0, v0, v1}, Landroidx/compose/material3/BaseDatePickerStateImpl;->a(J)V

    :cond_0
    new-instance v0, Landroidx/compose/material3/DisplayMode;

    invoke-direct {v0, p1}, Landroidx/compose/material3/DisplayMode;-><init>(I)V

    iget-object p0, p0, Landroidx/compose/material3/DatePickerStateImpl;->g:Landroidx/compose/runtime/MutableState;

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final g()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/DatePickerStateImpl;->g:Landroidx/compose/runtime/MutableState;

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/material3/DisplayMode;

    iget p0, p0, Landroidx/compose/material3/DisplayMode;->a:I

    return p0
.end method
