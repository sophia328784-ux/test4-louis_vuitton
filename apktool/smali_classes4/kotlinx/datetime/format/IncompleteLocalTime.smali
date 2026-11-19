.class public final Lkotlinx/datetime/format/IncompleteLocalTime;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/datetime/format/TimeFieldContainer;
.implements Lkotlinx/datetime/internal/format/parser/Copyable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/datetime/format/TimeFieldContainer;",
        "Lkotlinx/datetime/internal/format/parser/Copyable<",
        "Lkotlinx/datetime/format/IncompleteLocalTime;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002BO\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lkotlinx/datetime/format/IncompleteLocalTime;",
        "Lkotlinx/datetime/format/TimeFieldContainer;",
        "Lkotlinx/datetime/internal/format/parser/Copyable;",
        "",
        "hour",
        "hourOfAmPm",
        "Lkotlinx/datetime/format/AmPmMarker;",
        "amPm",
        "minute",
        "second",
        "nanosecond",
        "<init>",
        "(Ljava/lang/Integer;Ljava/lang/Integer;Lkotlinx/datetime/format/AmPmMarker;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V",
        "kotlinx-datetime"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;

.field public c:Lkotlinx/datetime/format/AmPmMarker;

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/Integer;

.field public f:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 42
    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lkotlinx/datetime/format/IncompleteLocalTime;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Lkotlinx/datetime/format/AmPmMarker;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Lkotlinx/datetime/format/AmPmMarker;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->a:Ljava/lang/Integer;

    .line 37
    iput-object p2, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->b:Ljava/lang/Integer;

    .line 38
    iput-object p3, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->c:Lkotlinx/datetime/format/AmPmMarker;

    .line 39
    iput-object p4, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->d:Ljava/lang/Integer;

    .line 40
    iput-object p5, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->e:Ljava/lang/Integer;

    .line 41
    iput-object p6, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->f:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Lkotlinx/datetime/format/AmPmMarker;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    move-object p6, v0

    :cond_5
    invoke-direct/range {p0 .. p6}, Lkotlinx/datetime/format/IncompleteLocalTime;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Lkotlinx/datetime/format/AmPmMarker;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->a:Ljava/lang/Integer;

    return-void
.end method

.method public final C()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->a:Ljava/lang/Integer;

    return-object p0
.end method

.method public final a(Lkotlinx/datetime/format/AmPmMarker;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->c:Lkotlinx/datetime/format/AmPmMarker;

    return-void
.end method

.method public final b()Lkotlinx/datetime/LocalTime;
    .locals 7

    iget-object v0, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->a:Ljava/lang/Integer;

    iget-object v1, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->b:Ljava/lang/Integer;

    const/4 v2, 0x0

    const/16 v3, 0xc

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    add-int/lit8 v6, v0, 0xb

    rem-int/2addr v6, v3

    add-int/2addr v6, v5

    if-ne v6, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Inconsistent hour and hour-of-am-pm: hour is "

    const-string v3, ", but hour-of-am-pm is "

    invoke-static {v0, v1, p0, v3}, Lo60;->h(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lb21;->n(Ljava/lang/Object;)V

    return-object v2

    :cond_1
    :goto_0
    iget-object v1, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->c:Lkotlinx/datetime/format/AmPmMarker;

    if-eqz v1, :cond_9

    sget-object v6, Lkotlinx/datetime/format/AmPmMarker;->PM:Lkotlinx/datetime/format/AmPmMarker;

    if-ne v1, v6, :cond_2

    move v6, v5

    goto :goto_1

    :cond_2
    move v6, v4

    :goto_1
    if-lt v0, v3, :cond_3

    goto :goto_2

    :cond_3
    move v5, v4

    :goto_2
    if-ne v6, v5, :cond_4

    goto :goto_4

    :cond_4
    const-string p0, "Inconsistent hour and the AM/PM marker: hour is "

    const-string v3, ", but the AM/PM marker is "

    invoke-static {p0, v0, v3, v1}, Llc0;->m(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_5
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v1, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->c:Lkotlinx/datetime/format/AmPmMarker;

    if-eqz v1, :cond_8

    if-ne v0, v3, :cond_6

    move v0, v4

    :cond_6
    sget-object v2, Lkotlinx/datetime/format/AmPmMarker;->PM:Lkotlinx/datetime/format/AmPmMarker;

    if-ne v1, v2, :cond_7

    goto :goto_3

    :cond_7
    move v3, v4

    :goto_3
    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_8
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_9
    :goto_4
    new-instance v1, Lkotlinx/datetime/LocalTime;

    iget-object v2, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->d:Ljava/lang/Integer;

    const-string v3, "minute"

    invoke-static {v2, v3}, Lkotlinx/datetime/format/LocalDateFormatKt;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iget-object v3, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->e:Ljava/lang/Integer;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_5

    :cond_a
    move v3, v4

    :goto_5
    iget-object p0, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->f:Ljava/lang/Integer;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :cond_b
    invoke-direct {v1, v0, v2, v3, v4}, Lkotlinx/datetime/LocalTime;-><init>(IIII)V

    return-object v1

    :cond_c
    new-instance p0, Lkotlinx/datetime/DateTimeFormatException;

    const-string v0, "Incomplete time: missing hour"

    invoke-direct {p0, v0}, Lkotlinx/datetime/DateTimeFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->b:Ljava/lang/Integer;

    return-object p0
.end method

.method public final copy()Ljava/lang/Object;
    .locals 7

    new-instance v0, Lkotlinx/datetime/format/IncompleteLocalTime;

    iget-object v1, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->a:Ljava/lang/Integer;

    iget-object v2, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->b:Ljava/lang/Integer;

    iget-object v3, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->c:Lkotlinx/datetime/format/AmPmMarker;

    iget-object v4, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->d:Ljava/lang/Integer;

    iget-object v5, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->e:Ljava/lang/Integer;

    iget-object v6, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->f:Ljava/lang/Integer;

    invoke-direct/range {v0 .. v6}, Lkotlinx/datetime/format/IncompleteLocalTime;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Lkotlinx/datetime/format/AmPmMarker;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lkotlinx/datetime/format/IncompleteLocalTime;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->a:Ljava/lang/Integer;

    check-cast p1, Lkotlinx/datetime/format/IncompleteLocalTime;

    iget-object v1, p1, Lkotlinx/datetime/format/IncompleteLocalTime;->a:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->b:Ljava/lang/Integer;

    iget-object v1, p1, Lkotlinx/datetime/format/IncompleteLocalTime;->b:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->c:Lkotlinx/datetime/format/AmPmMarker;

    iget-object v1, p1, Lkotlinx/datetime/format/IncompleteLocalTime;->c:Lkotlinx/datetime/format/AmPmMarker;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->d:Ljava/lang/Integer;

    iget-object v1, p1, Lkotlinx/datetime/format/IncompleteLocalTime;->d:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->e:Ljava/lang/Integer;

    iget-object v1, p1, Lkotlinx/datetime/format/IncompleteLocalTime;->e:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->f:Ljava/lang/Integer;

    iget-object p1, p1, Lkotlinx/datetime/format/IncompleteLocalTime;->f:Ljava/lang/Integer;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final g(Lkotlinx/datetime/internal/DecimalFraction;)V
    .locals 1

    if-eqz p1, :cond_0

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lkotlinx/datetime/internal/DecimalFraction;->a(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->f:Ljava/lang/Integer;

    return-void
.end method

.method public final h()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->e:Ljava/lang/Integer;

    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->a:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->b:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v0

    iget-object v0, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->c:Lkotlinx/datetime/format/AmPmMarker;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    iget-object v2, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->d:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v0

    iget-object v0, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    iget-object p0, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->f:Ljava/lang/Integer;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_5
    add-int/2addr v0, v1

    return v0
.end method

.method public final j(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->e:Ljava/lang/Integer;

    return-void
.end method

.method public final n()Lkotlinx/datetime/format/AmPmMarker;
    .locals 0

    iget-object p0, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->c:Lkotlinx/datetime/format/AmPmMarker;

    return-object p0
.end method

.method public final o(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->b:Ljava/lang/Integer;

    return-void
.end method

.method public final r()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->d:Ljava/lang/Integer;

    return-object p0
.end method

.method public final s(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->d:Ljava/lang/Integer;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->a:Ljava/lang/Integer;

    const-string v2, "??"

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->d:Ljava/lang/Integer;

    if-nez v3, :cond_1

    move-object v3, v2

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->e:Ljava/lang/Integer;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->f:Ljava/lang/Integer;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x9

    invoke-static {v1, p0}, Lkotlin/text/StringsKt;->B(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4

    :cond_3
    const-string p0, "???"

    :cond_4
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final v()Lkotlinx/datetime/internal/DecimalFraction;
    .locals 2

    iget-object p0, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->f:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    new-instance v0, Lkotlinx/datetime/internal/DecimalFraction;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Lkotlinx/datetime/internal/DecimalFraction;-><init>(II)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
