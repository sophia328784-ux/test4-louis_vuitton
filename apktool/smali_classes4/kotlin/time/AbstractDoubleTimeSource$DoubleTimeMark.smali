.class final Lkotlin/time/AbstractDoubleTimeSource$DoubleTimeMark;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/time/ComparableTimeMark;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/time/AbstractDoubleTimeSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DoubleTimeMark"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lkotlin/time/AbstractDoubleTimeSource$DoubleTimeMark;",
        "Lkotlin/time/ComparableTimeMark;",
        "",
        "startedAt",
        "Lkotlin/time/AbstractDoubleTimeSource;",
        "timeSource",
        "Lkotlin/time/Duration;",
        "offset",
        "<init>",
        "(DLkotlin/time/AbstractDoubleTimeSource;JLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final b:D

.field public final c:Lkotlin/time/AbstractDoubleTimeSource;

.field public final d:J


# direct methods
.method public constructor <init>(DLkotlin/time/AbstractDoubleTimeSource;JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lkotlin/time/AbstractDoubleTimeSource$DoubleTimeMark;->b:D

    iput-object p3, p0, Lkotlin/time/AbstractDoubleTimeSource$DoubleTimeMark;->c:Lkotlin/time/AbstractDoubleTimeSource;

    iput-wide p4, p0, Lkotlin/time/AbstractDoubleTimeSource$DoubleTimeMark;->d:J

    return-void
.end method


# virtual methods
.method public final bridge F1(Lkotlin/time/ComparableTimeMark;)I
    .locals 0

    invoke-static {p0, p1}, Lkotlin/time/ComparableTimeMark$DefaultImpls;->a(Lkotlin/time/ComparableTimeMark;Lkotlin/time/ComparableTimeMark;)I

    move-result p0

    return p0
.end method

.method public final a()J
    .locals 5

    iget-object v0, p0, Lkotlin/time/AbstractDoubleTimeSource$DoubleTimeMark;->c:Lkotlin/time/AbstractDoubleTimeSource;

    invoke-virtual {v0}, Lkotlin/time/AbstractDoubleTimeSource;->b()D

    move-result-wide v1

    iget-wide v3, p0, Lkotlin/time/AbstractDoubleTimeSource$DoubleTimeMark;->b:D

    sub-double/2addr v1, v3

    iget-object v0, v0, Lkotlin/time/AbstractDoubleTimeSource;->a:Lkotlin/time/DurationUnit;

    invoke-static {v1, v2, v0}, Lkotlin/time/DurationKt;->f(DLkotlin/time/DurationUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Lkotlin/time/AbstractDoubleTimeSource$DoubleTimeMark;->d:J

    invoke-static {v2, v3}, Lkotlin/time/Duration;->v(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lkotlin/time/Duration;->j(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lkotlin/time/ComparableTimeMark;

    invoke-static {p0, p1}, Lkotlin/time/ComparableTimeMark$DefaultImpls;->a(Lkotlin/time/ComparableTimeMark;Lkotlin/time/ComparableTimeMark;)I

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lkotlin/time/AbstractDoubleTimeSource$DoubleTimeMark;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlin/time/AbstractDoubleTimeSource$DoubleTimeMark;

    iget-object v0, v0, Lkotlin/time/AbstractDoubleTimeSource$DoubleTimeMark;->c:Lkotlin/time/AbstractDoubleTimeSource;

    iget-object v1, p0, Lkotlin/time/AbstractDoubleTimeSource$DoubleTimeMark;->c:Lkotlin/time/AbstractDoubleTimeSource;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lkotlin/time/ComparableTimeMark;

    invoke-virtual {p0, p1}, Lkotlin/time/AbstractDoubleTimeSource$DoubleTimeMark;->z(Lkotlin/time/ComparableTimeMark;)J

    move-result-wide p0

    sget-object v0, Lkotlin/time/Duration;->c:Lkotlin/time/Duration$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Lkotlin/time/Duration;->d(JJ)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lkotlin/time/AbstractDoubleTimeSource$DoubleTimeMark;->c:Lkotlin/time/AbstractDoubleTimeSource;

    iget-object v0, v0, Lkotlin/time/AbstractDoubleTimeSource;->a:Lkotlin/time/DurationUnit;

    iget-wide v1, p0, Lkotlin/time/AbstractDoubleTimeSource$DoubleTimeMark;->b:D

    invoke-static {v1, v2, v0}, Lkotlin/time/DurationKt;->f(DLkotlin/time/DurationUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Lkotlin/time/AbstractDoubleTimeSource$DoubleTimeMark;->d:J

    invoke-static {v0, v1, v2, v3}, Lkotlin/time/Duration;->j(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DoubleTimeMark("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lkotlin/time/AbstractDoubleTimeSource$DoubleTimeMark;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlin/time/AbstractDoubleTimeSource$DoubleTimeMark;->c:Lkotlin/time/AbstractDoubleTimeSource;

    iget-object v2, v1, Lkotlin/time/AbstractDoubleTimeSource;->a:Lkotlin/time/DurationUnit;

    invoke-static {v2}, Lkotlin/time/DurationUnitKt__DurationUnitKt;->c(Lkotlin/time/DurationUnit;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " + "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lkotlin/time/AbstractDoubleTimeSource$DoubleTimeMark;->d:J

    invoke-static {v2, v3}, Lkotlin/time/Duration;->l(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final z(Lkotlin/time/ComparableTimeMark;)J
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lkotlin/time/AbstractDoubleTimeSource$DoubleTimeMark;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lkotlin/time/AbstractDoubleTimeSource$DoubleTimeMark;

    iget-wide v3, v0, Lkotlin/time/AbstractDoubleTimeSource$DoubleTimeMark;->d:J

    iget-object v5, v0, Lkotlin/time/AbstractDoubleTimeSource$DoubleTimeMark;->c:Lkotlin/time/AbstractDoubleTimeSource;

    iget-object v6, p0, Lkotlin/time/AbstractDoubleTimeSource$DoubleTimeMark;->c:Lkotlin/time/AbstractDoubleTimeSource;

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-wide v7, p0, Lkotlin/time/AbstractDoubleTimeSource$DoubleTimeMark;->d:J

    invoke-static {v7, v8, v3, v4}, Lkotlin/time/Duration;->d(JJ)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v7, v8}, Lkotlin/time/Duration;->i(J)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p0, Lkotlin/time/Duration;->c:Lkotlin/time/Duration$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-wide v1

    :cond_0
    invoke-static {v3, v4}, Lkotlin/time/Duration;->v(J)J

    move-result-wide v3

    invoke-static {v7, v8, v3, v4}, Lkotlin/time/Duration;->j(JJ)J

    move-result-wide v3

    iget-wide p0, p0, Lkotlin/time/AbstractDoubleTimeSource$DoubleTimeMark;->b:D

    iget-wide v7, v0, Lkotlin/time/AbstractDoubleTimeSource$DoubleTimeMark;->b:D

    sub-double/2addr p0, v7

    iget-object v0, v6, Lkotlin/time/AbstractDoubleTimeSource;->a:Lkotlin/time/DurationUnit;

    invoke-static {p0, p1, v0}, Lkotlin/time/DurationKt;->f(DLkotlin/time/DurationUnit;)J

    move-result-wide p0

    invoke-static {v3, v4}, Lkotlin/time/Duration;->v(J)J

    move-result-wide v5

    invoke-static {p0, p1, v5, v6}, Lkotlin/time/Duration;->d(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lkotlin/time/Duration;->c:Lkotlin/time/Duration$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-wide v1

    :cond_1
    invoke-static {p0, p1, v3, v4}, Lkotlin/time/Duration;->j(JJ)J

    move-result-wide p0

    return-wide p0

    :cond_2
    const-string v0, "Subtracting or comparing time marks from different time sources is not possible: "

    const-string v3, " and "

    invoke-static {v0, p0, v3, p1}, Lb21;->s(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-wide v1
.end method
