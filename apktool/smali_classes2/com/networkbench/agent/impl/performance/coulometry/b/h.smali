.class public Lcom/networkbench/agent/impl/performance/coulometry/b/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/networkbench/agent/impl/performance/coulometry/b/h;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Ljava/lang/StackTraceElement;

.field public b:J

.field public c:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-wide p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/h;->b:J

    .line 12
    iput-wide p3, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/h;->c:J

    return-void
.end method

.method public constructor <init>(JJ[Ljava/lang/StackTraceElement;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/h;->b:J

    iput-wide p3, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/h;->c:J

    iput-object p5, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/h;->a:[Ljava/lang/StackTraceElement;

    return-void
.end method


# virtual methods
.method public a(Lcom/networkbench/agent/impl/performance/coulometry/b/h;)I
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/h;->b:J

    iget-wide p0, p1, Lcom/networkbench/agent/impl/performance/coulometry/b/h;->b:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public a()J
    .locals 2

    .line 10
    iget-wide v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/h;->b:J

    return-wide v0
.end method

.method public a(J)V
    .locals 0

    .line 9
    iput-wide p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/h;->b:J

    return-void
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/h;->c:J

    return-wide v0
.end method

.method public b(J)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/h;->c:J

    return-void
.end method

.method public c()[Ljava/lang/StackTraceElement;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/h;->a:[Ljava/lang/StackTraceElement;

    return-object p0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/networkbench/agent/impl/performance/coulometry/b/h;

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/performance/coulometry/b/h;->a(Lcom/networkbench/agent/impl/performance/coulometry/b/h;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TimeTask{startTime="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/h;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/h;->c:J

    const/16 p0, 0x7d

    invoke-static {v0, v1, v2, p0}, Lfc;->k(Ljava/lang/StringBuilder;JC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
