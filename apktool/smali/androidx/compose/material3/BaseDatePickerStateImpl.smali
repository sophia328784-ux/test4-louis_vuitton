.class public abstract Landroidx/compose/material3/BaseDatePickerStateImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008!\u0018\u00002\u00020\u0001B-\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\n\u0010\n\u001a\u00060\u0008j\u0002`\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Landroidx/compose/material3/BaseDatePickerStateImpl;",
        "",
        "",
        "initialDisplayedMonthMillis",
        "Lkotlin/ranges/IntRange;",
        "yearRange",
        "Landroidx/compose/material3/SelectableDates;",
        "selectableDates",
        "Ljava/util/Locale;",
        "Landroidx/compose/material3/CalendarLocale;",
        "locale",
        "<init>",
        "(Ljava/lang/Long;Lkotlin/ranges/IntRange;Landroidx/compose/material3/SelectableDates;Ljava/util/Locale;)V",
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


# instance fields
.field public final a:Lkotlin/ranges/IntRange;

.field public final b:Ljava/util/Locale;

.field public final c:Landroidx/compose/material3/internal/CalendarModelImpl;

.field public final d:Landroidx/compose/runtime/MutableState;

.field public final e:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Ljava/lang/Long;Lkotlin/ranges/IntRange;Landroidx/compose/material3/SelectableDates;Ljava/util/Locale;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/compose/material3/BaseDatePickerStateImpl;->a:Lkotlin/ranges/IntRange;

    iput-object p4, p0, Landroidx/compose/material3/BaseDatePickerStateImpl;->b:Ljava/util/Locale;

    new-instance v0, Landroidx/compose/material3/internal/CalendarModelImpl;

    invoke-direct {v0, p4}, Landroidx/compose/material3/internal/CalendarModelImpl;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Landroidx/compose/material3/BaseDatePickerStateImpl;->c:Landroidx/compose/material3/internal/CalendarModelImpl;

    invoke-static {p3}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p3

    iput-object p3, p0, Landroidx/compose/material3/BaseDatePickerStateImpl;->d:Landroidx/compose/runtime/MutableState;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    invoke-virtual {v0, p3, p4}, Landroidx/compose/material3/internal/CalendarModelImpl;->e(J)Landroidx/compose/material3/internal/CalendarMonth;

    move-result-object p1

    iget p3, p1, Landroidx/compose/material3/internal/CalendarMonth;->a:I

    invoke-virtual {p2, p3}, Lkotlin/ranges/IntRange;->m(I)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {v0}, Landroidx/compose/material3/internal/CalendarModelImpl;->g()Landroidx/compose/material3/internal/CalendarDate;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/compose/material3/internal/CalendarModelImpl;->f(Landroidx/compose/material3/internal/CalendarDate;)Landroidx/compose/material3/internal/CalendarMonth;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/material3/internal/CalendarModelImpl;->g()Landroidx/compose/material3/internal/CalendarDate;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/compose/material3/internal/CalendarModelImpl;->f(Landroidx/compose/material3/internal/CalendarDate;)Landroidx/compose/material3/internal/CalendarMonth;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-static {p1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/BaseDatePickerStateImpl;->e:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/material3/BaseDatePickerStateImpl;->c:Landroidx/compose/material3/internal/CalendarModelImpl;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/material3/internal/CalendarModelImpl;->e(J)Landroidx/compose/material3/internal/CalendarMonth;

    move-result-object p1

    iget-object p2, p0, Landroidx/compose/material3/BaseDatePickerStateImpl;->a:Lkotlin/ranges/IntRange;

    iget v0, p1, Landroidx/compose/material3/internal/CalendarMonth;->a:I

    invoke-virtual {p2, v0}, Lkotlin/ranges/IntRange;->m(I)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Landroidx/compose/material3/BaseDatePickerStateImpl;->e:Landroidx/compose/runtime/MutableState;

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final b()Landroidx/compose/material3/SelectableDates;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/BaseDatePickerStateImpl;->d:Landroidx/compose/runtime/MutableState;

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/material3/SelectableDates;

    return-object p0
.end method

.method public final d()Lkotlin/ranges/IntRange;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/BaseDatePickerStateImpl;->a:Lkotlin/ranges/IntRange;

    return-object p0
.end method

.method public final getLocale()Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/BaseDatePickerStateImpl;->b:Ljava/util/Locale;

    return-object p0
.end method

.method public final h()J
    .locals 2

    iget-object p0, p0, Landroidx/compose/material3/BaseDatePickerStateImpl;->e:Landroidx/compose/runtime/MutableState;

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/material3/internal/CalendarMonth;

    iget-wide v0, p0, Landroidx/compose/material3/internal/CalendarMonth;->e:J

    return-wide v0
.end method
