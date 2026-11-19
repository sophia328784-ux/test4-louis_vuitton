.class public final Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Up;
.super Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Up"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\t\u0010\n\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\u001d\u0010\u000c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003H\u00c6\u0001J\u0014\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u00d6\u0083\u0004J\n\u0010\u0011\u001a\u00020\u0003H\u00d6\u0081\u0004J\n\u0010\u0012\u001a\u00020\u0013H\u00d6\u0081\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\u0004\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Up;",
        "Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent;",
        "x",
        "",
        "y",
        "<init>",
        "(II)V",
        "getX",
        "()I",
        "getY",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "advancedannotations_release"
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
.field private final x:I

.field private final y:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Up;->x:I

    iput p2, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Up;->y:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Up;IIILjava/lang/Object;)Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Up;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Up;->x:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Up;->y:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Up;->copy(II)Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Up;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Up;->x:I

    return p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Up;->y:I

    return p0
.end method

.method public final copy(II)Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Up;
    .locals 0

    new-instance p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Up;

    invoke-direct {p0, p1, p2}, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Up;-><init>(II)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Up;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Up;

    iget v1, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Up;->x:I

    iget v3, p1, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Up;->x:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget p0, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Up;->y:I

    iget p1, p1, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Up;->y:I

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public getX()I
    .locals 0

    iget p0, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Up;->x:I

    return p0
.end method

.method public getY()I
    .locals 0

    iget p0, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Up;->y:I

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Up;->x:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Up;->y:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Up;->x:I

    iget p0, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Up;->y:I

    const-string v1, ", y="

    const-string v2, ")"

    const-string v3, "Up(x="

    invoke-static {v0, p0, v3, v1, v2}, Lfc;->f(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
