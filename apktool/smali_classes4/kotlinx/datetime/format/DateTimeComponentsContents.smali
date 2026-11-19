.class public final Lkotlinx/datetime/format/DateTimeComponentsContents;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/datetime/format/DateFieldContainer;
.implements Lkotlinx/datetime/format/TimeFieldContainer;
.implements Lkotlinx/datetime/format/UtcOffsetFieldContainer;
.implements Lkotlinx/datetime/format/DateTimeFieldContainer;
.implements Lkotlinx/datetime/internal/format/parser/Copyable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/datetime/format/DateFieldContainer;",
        "Lkotlinx/datetime/format/TimeFieldContainer;",
        "Lkotlinx/datetime/format/UtcOffsetFieldContainer;",
        "Lkotlinx/datetime/format/DateTimeFieldContainer;",
        "Lkotlinx/datetime/internal/format/parser/Copyable<",
        "Lkotlinx/datetime/format/DateTimeComponentsContents;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u0008\u0012\u0004\u0012\u00020\u00000\u0005B3\u0008\u0000\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lkotlinx/datetime/format/DateTimeComponentsContents;",
        "Lkotlinx/datetime/format/DateFieldContainer;",
        "Lkotlinx/datetime/format/TimeFieldContainer;",
        "Lkotlinx/datetime/format/UtcOffsetFieldContainer;",
        "Lkotlinx/datetime/format/DateTimeFieldContainer;",
        "Lkotlinx/datetime/internal/format/parser/Copyable;",
        "Lkotlinx/datetime/format/IncompleteLocalDate;",
        "date",
        "Lkotlinx/datetime/format/IncompleteLocalTime;",
        "time",
        "Lkotlinx/datetime/format/IncompleteUtcOffset;",
        "offset",
        "",
        "timeZoneId",
        "<init>",
        "(Lkotlinx/datetime/format/IncompleteLocalDate;Lkotlinx/datetime/format/IncompleteLocalTime;Lkotlinx/datetime/format/IncompleteUtcOffset;Ljava/lang/String;)V",
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
.field public final a:Lkotlinx/datetime/format/IncompleteLocalDate;

.field public final b:Lkotlinx/datetime/format/IncompleteLocalTime;

.field public final c:Lkotlinx/datetime/format/IncompleteUtcOffset;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 68
    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lkotlinx/datetime/format/DateTimeComponentsContents;-><init>(Lkotlinx/datetime/format/IncompleteLocalDate;Lkotlinx/datetime/format/IncompleteLocalTime;Lkotlinx/datetime/format/IncompleteUtcOffset;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/datetime/format/IncompleteLocalDate;Lkotlinx/datetime/format/IncompleteLocalTime;Lkotlinx/datetime/format/IncompleteUtcOffset;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lkotlinx/datetime/format/DateTimeComponentsContents;->a:Lkotlinx/datetime/format/IncompleteLocalDate;

    .line 65
    iput-object p2, p0, Lkotlinx/datetime/format/DateTimeComponentsContents;->b:Lkotlinx/datetime/format/IncompleteLocalTime;

    .line 66
    iput-object p3, p0, Lkotlinx/datetime/format/DateTimeComponentsContents;->c:Lkotlinx/datetime/format/IncompleteUtcOffset;

    .line 67
    iput-object p4, p0, Lkotlinx/datetime/format/DateTimeComponentsContents;->d:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/datetime/format/IncompleteLocalDate;Lkotlinx/datetime/format/IncompleteLocalTime;Lkotlinx/datetime/format/IncompleteUtcOffset;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    new-instance v0, Lkotlinx/datetime/format/IncompleteLocalDate;

    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lkotlinx/datetime/format/IncompleteLocalDate;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    new-instance v0, Lkotlinx/datetime/format/IncompleteLocalTime;

    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lkotlinx/datetime/format/IncompleteLocalTime;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Lkotlinx/datetime/format/AmPmMarker;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    new-instance v0, Lkotlinx/datetime/format/IncompleteUtcOffset;

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lkotlinx/datetime/format/IncompleteUtcOffset;-><init>(Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    const/4 p4, 0x0

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lkotlinx/datetime/format/DateTimeComponentsContents;-><init>(Lkotlinx/datetime/format/IncompleteLocalDate;Lkotlinx/datetime/format/IncompleteLocalTime;Lkotlinx/datetime/format/IncompleteUtcOffset;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lkotlinx/datetime/format/DateTimeComponentsContents;->b:Lkotlinx/datetime/format/IncompleteLocalTime;

    iput-object p1, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->a:Ljava/lang/Integer;

    return-void
.end method

.method public final B(Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lkotlinx/datetime/format/DateTimeComponentsContents;->a:Lkotlinx/datetime/format/IncompleteLocalDate;

    iput-object p1, p0, Lkotlinx/datetime/format/IncompleteLocalDate;->d:Ljava/lang/Integer;

    return-void
.end method

.method public final C()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lkotlinx/datetime/format/DateTimeComponentsContents;->b:Lkotlinx/datetime/format/IncompleteLocalTime;

    iget-object p0, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->a:Ljava/lang/Integer;

    return-object p0
.end method

.method public final a(Lkotlinx/datetime/format/AmPmMarker;)V
    .locals 0

    iget-object p0, p0, Lkotlinx/datetime/format/DateTimeComponentsContents;->b:Lkotlinx/datetime/format/IncompleteLocalTime;

    iput-object p1, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->c:Lkotlinx/datetime/format/AmPmMarker;

    return-void
.end method

.method public final b()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lkotlinx/datetime/format/DateTimeComponentsContents;->c:Lkotlinx/datetime/format/IncompleteUtcOffset;

    iget-object p0, p0, Lkotlinx/datetime/format/IncompleteUtcOffset;->b:Ljava/lang/Integer;

    return-object p0
.end method

.method public final c()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lkotlinx/datetime/format/DateTimeComponentsContents;->b:Lkotlinx/datetime/format/IncompleteLocalTime;

    iget-object p0, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->b:Ljava/lang/Integer;

    return-object p0
.end method

.method public final copy()Ljava/lang/Object;
    .locals 9

    new-instance v0, Lkotlinx/datetime/format/DateTimeComponentsContents;

    new-instance v1, Lkotlinx/datetime/format/IncompleteLocalDate;

    iget-object v2, p0, Lkotlinx/datetime/format/DateTimeComponentsContents;->a:Lkotlinx/datetime/format/IncompleteLocalDate;

    move-object v3, v2

    iget-object v2, v3, Lkotlinx/datetime/format/IncompleteLocalDate;->a:Ljava/lang/Integer;

    move-object v4, v3

    iget-object v3, v4, Lkotlinx/datetime/format/IncompleteLocalDate;->b:Ljava/lang/Integer;

    move-object v5, v4

    iget-object v4, v5, Lkotlinx/datetime/format/IncompleteLocalDate;->c:Ljava/lang/Integer;

    move-object v6, v5

    iget-object v5, v6, Lkotlinx/datetime/format/IncompleteLocalDate;->d:Ljava/lang/Integer;

    iget-object v6, v6, Lkotlinx/datetime/format/IncompleteLocalDate;->e:Ljava/lang/Integer;

    invoke-direct/range {v1 .. v6}, Lkotlinx/datetime/format/IncompleteLocalDate;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    new-instance v2, Lkotlinx/datetime/format/IncompleteLocalTime;

    iget-object v3, p0, Lkotlinx/datetime/format/DateTimeComponentsContents;->b:Lkotlinx/datetime/format/IncompleteLocalTime;

    move-object v4, v3

    iget-object v3, v4, Lkotlinx/datetime/format/IncompleteLocalTime;->a:Ljava/lang/Integer;

    move-object v5, v4

    iget-object v4, v5, Lkotlinx/datetime/format/IncompleteLocalTime;->b:Ljava/lang/Integer;

    move-object v6, v5

    iget-object v5, v6, Lkotlinx/datetime/format/IncompleteLocalTime;->c:Lkotlinx/datetime/format/AmPmMarker;

    move-object v7, v6

    iget-object v6, v7, Lkotlinx/datetime/format/IncompleteLocalTime;->d:Ljava/lang/Integer;

    move-object v8, v7

    iget-object v7, v8, Lkotlinx/datetime/format/IncompleteLocalTime;->e:Ljava/lang/Integer;

    iget-object v8, v8, Lkotlinx/datetime/format/IncompleteLocalTime;->f:Ljava/lang/Integer;

    invoke-direct/range {v2 .. v8}, Lkotlinx/datetime/format/IncompleteLocalTime;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Lkotlinx/datetime/format/AmPmMarker;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    new-instance v3, Lkotlinx/datetime/format/IncompleteUtcOffset;

    iget-object v4, p0, Lkotlinx/datetime/format/DateTimeComponentsContents;->c:Lkotlinx/datetime/format/IncompleteUtcOffset;

    iget-object v5, v4, Lkotlinx/datetime/format/IncompleteUtcOffset;->a:Ljava/lang/Boolean;

    iget-object v6, v4, Lkotlinx/datetime/format/IncompleteUtcOffset;->b:Ljava/lang/Integer;

    iget-object v7, v4, Lkotlinx/datetime/format/IncompleteUtcOffset;->c:Ljava/lang/Integer;

    iget-object v4, v4, Lkotlinx/datetime/format/IncompleteUtcOffset;->d:Ljava/lang/Integer;

    invoke-direct {v3, v5, v6, v7, v4}, Lkotlinx/datetime/format/IncompleteUtcOffset;-><init>(Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    iget-object p0, p0, Lkotlinx/datetime/format/DateTimeComponentsContents;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p0}, Lkotlinx/datetime/format/DateTimeComponentsContents;-><init>(Lkotlinx/datetime/format/IncompleteLocalDate;Lkotlinx/datetime/format/IncompleteLocalTime;Lkotlinx/datetime/format/IncompleteUtcOffset;Ljava/lang/String;)V

    return-object v0
.end method

.method public final d()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lkotlinx/datetime/format/DateTimeComponentsContents;->a:Lkotlinx/datetime/format/IncompleteLocalDate;

    iget-object p0, p0, Lkotlinx/datetime/format/IncompleteLocalDate;->d:Ljava/lang/Integer;

    return-object p0
.end method

.method public final e()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lkotlinx/datetime/format/DateTimeComponentsContents;->c:Lkotlinx/datetime/format/IncompleteUtcOffset;

    iget-object p0, p0, Lkotlinx/datetime/format/IncompleteUtcOffset;->c:Ljava/lang/Integer;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lkotlinx/datetime/format/DateTimeComponentsContents;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/datetime/format/DateTimeComponentsContents;

    iget-object v0, p1, Lkotlinx/datetime/format/DateTimeComponentsContents;->a:Lkotlinx/datetime/format/IncompleteLocalDate;

    iget-object v1, p0, Lkotlinx/datetime/format/DateTimeComponentsContents;->a:Lkotlinx/datetime/format/IncompleteLocalDate;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lkotlinx/datetime/format/DateTimeComponentsContents;->b:Lkotlinx/datetime/format/IncompleteLocalTime;

    iget-object v1, p0, Lkotlinx/datetime/format/DateTimeComponentsContents;->b:Lkotlinx/datetime/format/IncompleteLocalTime;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lkotlinx/datetime/format/DateTimeComponentsContents;->c:Lkotlinx/datetime/format/IncompleteUtcOffset;

    iget-object v1, p0, Lkotlinx/datetime/format/DateTimeComponentsContents;->c:Lkotlinx/datetime/format/IncompleteUtcOffset;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lkotlinx/datetime/format/DateTimeComponentsContents;->d:Ljava/lang/String;

    iget-object p0, p0, Lkotlinx/datetime/format/DateTimeComponentsContents;->d:Ljava/lang/String;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final f(Ljava/lang/Boolean;)V
    .locals 0

    iget-object p0, p0, Lkotlinx/datetime/format/DateTimeComponentsContents;->c:Lkotlinx/datetime/format/IncompleteUtcOffset;

    iput-object p1, p0, Lkotlinx/datetime/format/IncompleteUtcOffset;->a:Ljava/lang/Boolean;

    return-void
.end method

.method public final g(Lkotlinx/datetime/internal/DecimalFraction;)V
    .locals 0

    iget-object p0, p0, Lkotlinx/datetime/format/DateTimeComponentsContents;->b:Lkotlinx/datetime/format/IncompleteLocalTime;

    invoke-virtual {p0, p1}, Lkotlinx/datetime/format/IncompleteLocalTime;->g(Lkotlinx/datetime/internal/DecimalFraction;)V

    return-void
.end method

.method public final h()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lkotlinx/datetime/format/DateTimeComponentsContents;->b:Lkotlinx/datetime/format/IncompleteLocalTime;

    iget-object p0, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->e:Ljava/lang/Integer;

    return-object p0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lkotlinx/datetime/format/DateTimeComponentsContents;->a:Lkotlinx/datetime/format/IncompleteLocalDate;

    invoke-virtual {v0}, Lkotlinx/datetime/format/IncompleteLocalDate;->hashCode()I

    move-result v0

    iget-object v1, p0, Lkotlinx/datetime/format/DateTimeComponentsContents;->b:Lkotlinx/datetime/format/IncompleteLocalTime;

    invoke-virtual {v1}, Lkotlinx/datetime/format/IncompleteLocalTime;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lkotlinx/datetime/format/DateTimeComponentsContents;->c:Lkotlinx/datetime/format/IncompleteUtcOffset;

    invoke-virtual {v1}, Lkotlinx/datetime/format/IncompleteUtcOffset;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object p0, p0, Lkotlinx/datetime/format/DateTimeComponentsContents;->d:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    xor-int/2addr p0, v0

    return p0
.end method

.method public final i(Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lkotlinx/datetime/format/DateTimeComponentsContents;->c:Lkotlinx/datetime/format/IncompleteUtcOffset;

    iput-object p1, p0, Lkotlinx/datetime/format/IncompleteUtcOffset;->c:Ljava/lang/Integer;

    return-void
.end method

.method public final isNegative()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lkotlinx/datetime/format/DateTimeComponentsContents;->c:Lkotlinx/datetime/format/IncompleteUtcOffset;

    iget-object p0, p0, Lkotlinx/datetime/format/IncompleteUtcOffset;->a:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final j(Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lkotlinx/datetime/format/DateTimeComponentsContents;->b:Lkotlinx/datetime/format/IncompleteLocalTime;

    iput-object p1, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->e:Ljava/lang/Integer;

    return-void
.end method

.method public final k(Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lkotlinx/datetime/format/DateTimeComponentsContents;->a:Lkotlinx/datetime/format/IncompleteLocalDate;

    iput-object p1, p0, Lkotlinx/datetime/format/IncompleteLocalDate;->e:Ljava/lang/Integer;

    return-void
.end method

.method public final l(Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lkotlinx/datetime/format/DateTimeComponentsContents;->c:Lkotlinx/datetime/format/IncompleteUtcOffset;

    iput-object p1, p0, Lkotlinx/datetime/format/IncompleteUtcOffset;->b:Ljava/lang/Integer;

    return-void
.end method

.method public final m(Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lkotlinx/datetime/format/DateTimeComponentsContents;->c:Lkotlinx/datetime/format/IncompleteUtcOffset;

    iput-object p1, p0, Lkotlinx/datetime/format/IncompleteUtcOffset;->d:Ljava/lang/Integer;

    return-void
.end method

.method public final n()Lkotlinx/datetime/format/AmPmMarker;
    .locals 0

    iget-object p0, p0, Lkotlinx/datetime/format/DateTimeComponentsContents;->b:Lkotlinx/datetime/format/IncompleteLocalTime;

    iget-object p0, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->c:Lkotlinx/datetime/format/AmPmMarker;

    return-object p0
.end method

.method public final o(Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lkotlinx/datetime/format/DateTimeComponentsContents;->b:Lkotlinx/datetime/format/IncompleteLocalTime;

    iput-object p1, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->b:Ljava/lang/Integer;

    return-void
.end method

.method public final p(Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lkotlinx/datetime/format/DateTimeComponentsContents;->a:Lkotlinx/datetime/format/IncompleteLocalDate;

    iput-object p1, p0, Lkotlinx/datetime/format/IncompleteLocalDate;->b:Ljava/lang/Integer;

    return-void
.end method

.method public final q()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lkotlinx/datetime/format/DateTimeComponentsContents;->c:Lkotlinx/datetime/format/IncompleteUtcOffset;

    iget-object p0, p0, Lkotlinx/datetime/format/IncompleteUtcOffset;->d:Ljava/lang/Integer;

    return-object p0
.end method

.method public final r()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lkotlinx/datetime/format/DateTimeComponentsContents;->b:Lkotlinx/datetime/format/IncompleteLocalTime;

    iget-object p0, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->d:Ljava/lang/Integer;

    return-object p0
.end method

.method public final s(Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lkotlinx/datetime/format/DateTimeComponentsContents;->b:Lkotlinx/datetime/format/IncompleteLocalTime;

    iput-object p1, p0, Lkotlinx/datetime/format/IncompleteLocalTime;->d:Ljava/lang/Integer;

    return-void
.end method

.method public final t()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lkotlinx/datetime/format/DateTimeComponentsContents;->a:Lkotlinx/datetime/format/IncompleteLocalDate;

    iget-object p0, p0, Lkotlinx/datetime/format/IncompleteLocalDate;->a:Ljava/lang/Integer;

    return-object p0
.end method

.method public final u(Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lkotlinx/datetime/format/DateTimeComponentsContents;->a:Lkotlinx/datetime/format/IncompleteLocalDate;

    iput-object p1, p0, Lkotlinx/datetime/format/IncompleteLocalDate;->c:Ljava/lang/Integer;

    return-void
.end method

.method public final v()Lkotlinx/datetime/internal/DecimalFraction;
    .locals 0

    iget-object p0, p0, Lkotlinx/datetime/format/DateTimeComponentsContents;->b:Lkotlinx/datetime/format/IncompleteLocalTime;

    invoke-virtual {p0}, Lkotlinx/datetime/format/IncompleteLocalTime;->v()Lkotlinx/datetime/internal/DecimalFraction;

    move-result-object p0

    return-object p0
.end method

.method public final w()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lkotlinx/datetime/format/DateTimeComponentsContents;->a:Lkotlinx/datetime/format/IncompleteLocalDate;

    iget-object p0, p0, Lkotlinx/datetime/format/IncompleteLocalDate;->e:Ljava/lang/Integer;

    return-object p0
.end method

.method public final x(Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lkotlinx/datetime/format/DateTimeComponentsContents;->a:Lkotlinx/datetime/format/IncompleteLocalDate;

    iput-object p1, p0, Lkotlinx/datetime/format/IncompleteLocalDate;->a:Ljava/lang/Integer;

    return-void
.end method

.method public final y()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lkotlinx/datetime/format/DateTimeComponentsContents;->a:Lkotlinx/datetime/format/IncompleteLocalDate;

    iget-object p0, p0, Lkotlinx/datetime/format/IncompleteLocalDate;->c:Ljava/lang/Integer;

    return-object p0
.end method

.method public final z()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lkotlinx/datetime/format/DateTimeComponentsContents;->a:Lkotlinx/datetime/format/IncompleteLocalDate;

    iget-object p0, p0, Lkotlinx/datetime/format/IncompleteLocalDate;->b:Ljava/lang/Integer;

    return-object p0
.end method
