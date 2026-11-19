.class public final Lcom/kizitonwose/calendar/data/MonthData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0086\u0008\u0018\u00002\u00020\u0001B!\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/kizitonwose/calendar/data/MonthData;",
        "",
        "Ljava/time/YearMonth;",
        "month",
        "",
        "inDays",
        "outDays",
        "<init>",
        "(Ljava/time/YearMonth;II)V",
        "data"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Ljava/time/YearMonth;

.field public final b:I

.field public final c:I

.field public final d:Ljava/time/LocalDate;

.field public final e:Ljava/time/YearMonth;

.field public final f:Ljava/time/YearMonth;

.field public final g:Lcom/kizitonwose/calendar/core/CalendarMonth;


# direct methods
.method public constructor <init>(Ljava/time/YearMonth;II)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kizitonwose/calendar/data/MonthData;->a:Ljava/time/YearMonth;

    iput p2, p0, Lcom/kizitonwose/calendar/data/MonthData;->b:I

    iput p3, p0, Lcom/kizitonwose/calendar/data/MonthData;->c:I

    invoke-virtual {p1}, Ljava/time/YearMonth;->lengthOfMonth()I

    move-result v0

    add-int/2addr v0, p2

    add-int/2addr v0, p3

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Ljava/time/YearMonth;->atDay(I)Ljava/time/LocalDate;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-long v1, p2

    invoke-virtual {p3, v1, v2}, Ljava/time/LocalDate;->minusDays(J)Ljava/time/LocalDate;

    move-result-object p2

    iput-object p2, p0, Lcom/kizitonwose/calendar/data/MonthData;->d:Ljava/time/LocalDate;

    const/4 p2, 0x0

    invoke-static {p2, v0}, Lkotlin/ranges/RangesKt;->j(II)Lkotlin/ranges/IntRange;

    move-result-object p2

    const/4 p3, 0x7

    invoke-static {p2, p3}, Lkotlin/collections/CollectionsKt;->s(Ljava/lang/Iterable;I)Ljava/util/ArrayList;

    move-result-object p2

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/time/YearMonth;->minusMonths(J)Ljava/time/YearMonth;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lcom/kizitonwose/calendar/data/MonthData;->e:Ljava/time/YearMonth;

    invoke-virtual {p1, v0, v1}, Ljava/time/YearMonth;->plusMonths(J)Ljava/time/YearMonth;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lcom/kizitonwose/calendar/data/MonthData;->f:Ljava/time/YearMonth;

    new-instance p3, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p3, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/kizitonwose/calendar/data/MonthData;->d:Ljava/time/LocalDate;

    int-to-long v5, v3

    invoke-virtual {v4, v5, v6}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/time/LocalDate;->getYear()I

    move-result v4

    invoke-virtual {v3}, Ljava/time/LocalDate;->getMonth()Ljava/time/Month;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/time/YearMonth;->of(ILjava/time/Month;)Ljava/time/YearMonth;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, p0, Lcom/kizitonwose/calendar/data/MonthData;->a:Ljava/time/YearMonth;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v4, Lcom/kizitonwose/calendar/core/DayPosition;->MonthDate:Lcom/kizitonwose/calendar/core/DayPosition;

    goto :goto_2

    :cond_0
    iget-object v6, p0, Lcom/kizitonwose/calendar/data/MonthData;->e:Ljava/time/YearMonth;

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v4, Lcom/kizitonwose/calendar/core/DayPosition;->InDate:Lcom/kizitonwose/calendar/core/DayPosition;

    goto :goto_2

    :cond_1
    iget-object v6, p0, Lcom/kizitonwose/calendar/data/MonthData;->f:Ljava/time/YearMonth;

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/kizitonwose/calendar/core/DayPosition;->OutDate:Lcom/kizitonwose/calendar/core/DayPosition;

    :goto_2
    new-instance v5, Lcom/kizitonwose/calendar/core/CalendarDay;

    invoke-direct {v5, v3, v4}, Lcom/kizitonwose/calendar/core/CalendarDay;-><init>(Ljava/time/LocalDate;Lcom/kizitonwose/calendar/core/DayPosition;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string p0, "Invalid date: "

    const-string p1, " in month: "

    invoke-static {p0, v3, p1, v5}, Lb21;->s(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_3
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    new-instance p2, Lcom/kizitonwose/calendar/core/CalendarMonth;

    invoke-direct {p2, p1, p3}, Lcom/kizitonwose/calendar/core/CalendarMonth;-><init>(Ljava/time/YearMonth;Ljava/util/List;)V

    iput-object p2, p0, Lcom/kizitonwose/calendar/data/MonthData;->g:Lcom/kizitonwose/calendar/core/CalendarMonth;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/kizitonwose/calendar/data/MonthData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/kizitonwose/calendar/data/MonthData;

    iget-object v1, p0, Lcom/kizitonwose/calendar/data/MonthData;->a:Ljava/time/YearMonth;

    iget-object v3, p1, Lcom/kizitonwose/calendar/data/MonthData;->a:Ljava/time/YearMonth;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/kizitonwose/calendar/data/MonthData;->b:I

    iget v3, p1, Lcom/kizitonwose/calendar/data/MonthData;->b:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget p0, p0, Lcom/kizitonwose/calendar/data/MonthData;->c:I

    iget p1, p1, Lcom/kizitonwose/calendar/data/MonthData;->c:I

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/kizitonwose/calendar/data/MonthData;->a:Ljava/time/YearMonth;

    invoke-virtual {v0}, Ljava/time/YearMonth;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/kizitonwose/calendar/data/MonthData;->b:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget p0, p0, Lcom/kizitonwose/calendar/data/MonthData;->c:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MonthData(month="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kizitonwose/calendar/data/MonthData;->a:Ljava/time/YearMonth;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", inDays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/kizitonwose/calendar/data/MonthData;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", outDays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    iget p0, p0, Lcom/kizitonwose/calendar/data/MonthData;->c:I

    invoke-static {p0, v1, v0}, La;->i(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
