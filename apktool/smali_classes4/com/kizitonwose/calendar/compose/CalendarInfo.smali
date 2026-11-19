.class public final Lcom/kizitonwose/calendar/compose/CalendarInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0081\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/kizitonwose/calendar/compose/CalendarInfo;",
        "",
        "",
        "indexCount",
        "Ljava/time/DayOfWeek;",
        "firstDayOfWeek",
        "Lcom/kizitonwose/calendar/core/OutDateStyle;",
        "outDateStyle",
        "<init>",
        "(ILjava/time/DayOfWeek;Lcom/kizitonwose/calendar/core/OutDateStyle;)V",
        "compose_release"
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
.field public final a:I

.field public final b:Ljava/time/DayOfWeek;

.field public final c:Lcom/kizitonwose/calendar/core/OutDateStyle;


# direct methods
.method public constructor <init>(ILjava/time/DayOfWeek;Lcom/kizitonwose/calendar/core/OutDateStyle;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/kizitonwose/calendar/compose/CalendarInfo;->a:I

    .line 17
    iput-object p2, p0, Lcom/kizitonwose/calendar/compose/CalendarInfo;->b:Ljava/time/DayOfWeek;

    .line 18
    iput-object p3, p0, Lcom/kizitonwose/calendar/compose/CalendarInfo;->c:Lcom/kizitonwose/calendar/core/OutDateStyle;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/time/DayOfWeek;Lcom/kizitonwose/calendar/core/OutDateStyle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/kizitonwose/calendar/compose/CalendarInfo;-><init>(ILjava/time/DayOfWeek;Lcom/kizitonwose/calendar/core/OutDateStyle;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/kizitonwose/calendar/compose/CalendarInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/kizitonwose/calendar/compose/CalendarInfo;

    iget v1, p0, Lcom/kizitonwose/calendar/compose/CalendarInfo;->a:I

    iget v3, p1, Lcom/kizitonwose/calendar/compose/CalendarInfo;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/kizitonwose/calendar/compose/CalendarInfo;->b:Ljava/time/DayOfWeek;

    iget-object v3, p1, Lcom/kizitonwose/calendar/compose/CalendarInfo;->b:Ljava/time/DayOfWeek;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/kizitonwose/calendar/compose/CalendarInfo;->c:Lcom/kizitonwose/calendar/core/OutDateStyle;

    iget-object p1, p1, Lcom/kizitonwose/calendar/compose/CalendarInfo;->c:Lcom/kizitonwose/calendar/core/OutDateStyle;

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/kizitonwose/calendar/compose/CalendarInfo;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kizitonwose/calendar/compose/CalendarInfo;->b:Ljava/time/DayOfWeek;

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/kizitonwose/calendar/compose/CalendarInfo;->c:Lcom/kizitonwose/calendar/core/OutDateStyle;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CalendarInfo(indexCount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/kizitonwose/calendar/compose/CalendarInfo;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", firstDayOfWeek="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kizitonwose/calendar/compose/CalendarInfo;->b:Ljava/time/DayOfWeek;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", outDateStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/kizitonwose/calendar/compose/CalendarInfo;->c:Lcom/kizitonwose/calendar/core/OutDateStyle;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
