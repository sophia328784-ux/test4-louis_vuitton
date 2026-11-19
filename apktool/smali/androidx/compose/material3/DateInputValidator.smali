.class public final Landroidx/compose/material3/DateInputValidator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0001\u0018\u00002\u00020\u0001BG\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\u000c\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\n\u0012\u0006\u0010\u000e\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Landroidx/compose/material3/DateInputValidator;",
        "",
        "Lkotlin/ranges/IntRange;",
        "yearRange",
        "Landroidx/compose/material3/SelectableDates;",
        "selectableDates",
        "Landroidx/compose/material3/internal/DateInputFormat;",
        "dateInputFormat",
        "Landroidx/compose/material3/DatePickerFormatter;",
        "dateFormatter",
        "",
        "errorDatePattern",
        "errorDateOutOfYearRange",
        "errorInvalidNotAllowed",
        "errorInvalidRangeInput",
        "<init>",
        "(Lkotlin/ranges/IntRange;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/internal/DateInputFormat;Landroidx/compose/material3/DatePickerFormatter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
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

.field public final b:Landroidx/compose/material3/SelectableDates;

.field public final c:Landroidx/compose/material3/internal/DateInputFormat;

.field public final d:Landroidx/compose/material3/DatePickerFormatter;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public i:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lkotlin/ranges/IntRange;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/internal/DateInputFormat;Landroidx/compose/material3/DatePickerFormatter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/DateInputValidator;->a:Lkotlin/ranges/IntRange;

    iput-object p2, p0, Landroidx/compose/material3/DateInputValidator;->b:Landroidx/compose/material3/SelectableDates;

    iput-object p3, p0, Landroidx/compose/material3/DateInputValidator;->c:Landroidx/compose/material3/internal/DateInputFormat;

    iput-object p4, p0, Landroidx/compose/material3/DateInputValidator;->d:Landroidx/compose/material3/DatePickerFormatter;

    iput-object p5, p0, Landroidx/compose/material3/DateInputValidator;->e:Ljava/lang/String;

    iput-object p6, p0, Landroidx/compose/material3/DateInputValidator;->f:Ljava/lang/String;

    iput-object p7, p0, Landroidx/compose/material3/DateInputValidator;->g:Ljava/lang/String;

    iput-object p8, p0, Landroidx/compose/material3/DateInputValidator;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/material3/internal/CalendarDate;Ljava/util/Locale;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/compose/material3/DateInputValidator;->c:Landroidx/compose/material3/internal/DateInputFormat;

    iget-object p1, p1, Landroidx/compose/material3/internal/DateInputFormat;->a:Ljava/lang/String;

    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    array-length p2, p1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Landroidx/compose/material3/DateInputValidator;->e:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget v1, p1, Landroidx/compose/material3/internal/CalendarDate;->b:I

    iget-wide v2, p1, Landroidx/compose/material3/internal/CalendarDate;->e:J

    iget-object p1, p0, Landroidx/compose/material3/DateInputValidator;->a:Lkotlin/ranges/IntRange;

    invoke-virtual {p1, v1}, Lkotlin/ranges/IntRange;->m(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget v0, p1, Lkotlin/ranges/IntProgression;->b:I

    invoke-static {v0, p2}, Landroidx/compose/material3/CalendarLocale_jvmKt;->a(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lkotlin/ranges/IntProgression;->c:I

    invoke-static {p1, p2}, Landroidx/compose/material3/CalendarLocale_jvmKt;->a(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    array-length p2, p1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Landroidx/compose/material3/DateInputValidator;->f:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p1, p0, Landroidx/compose/material3/DateInputValidator;->b:Landroidx/compose/material3/SelectableDates;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, v2, v3}, Landroidx/compose/material3/SelectableDates;->a(J)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/compose/material3/DateInputValidator;->d:Landroidx/compose/material3/DatePickerFormatter;

    invoke-interface {v2, p1, p2, v1}, Landroidx/compose/material3/DatePickerFormatter;->b(Ljava/lang/Long;Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    array-length p2, p1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Landroidx/compose/material3/DateInputValidator;->g:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object p1, Landroidx/compose/material3/InputIdentifier;->a:Landroidx/compose/material3/InputIdentifier$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p1, Landroidx/compose/material3/InputIdentifier;->b:I

    if-nez p1, :cond_3

    const-wide p1, 0x7fffffffffffffffL

    cmp-long p1, v2, p1

    if-gtz p1, :cond_5

    :cond_3
    sget p1, Landroidx/compose/material3/InputIdentifier;->c:I

    if-nez p1, :cond_6

    iget-object p1, p0, Landroidx/compose/material3/DateInputValidator;->i:Ljava/lang/Long;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    goto :goto_0

    :cond_4
    const-wide/high16 p1, -0x8000000000000000L

    :goto_0
    cmp-long p1, v2, p1

    if-gez p1, :cond_6

    :cond_5
    iget-object p0, p0, Landroidx/compose/material3/DateInputValidator;->h:Ljava/lang/String;

    return-object p0

    :cond_6
    const-string p0, ""

    return-object p0
.end method
