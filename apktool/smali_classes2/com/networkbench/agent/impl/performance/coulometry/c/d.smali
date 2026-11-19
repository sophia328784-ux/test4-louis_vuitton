.class public Lcom/networkbench/agent/impl/performance/coulometry/c/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/networkbench/agent/impl/performance/coulometry/c/d;",
        ">;"
    }
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:I

.field public e:J

.field public f:[Ljava/lang/StackTraceElement;

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->g:Z

    .line 15
    iput-boolean v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->h:Z

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->g:Z

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->h:Z

    iput-wide p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->b:J

    iput-wide p3, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->c:J

    return-void
.end method


# virtual methods
.method public a(Lcom/networkbench/agent/impl/performance/coulometry/c/d;)I
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->b:J

    iget-wide p0, p1, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->b:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public a()J
    .locals 4

    .line 9
    iget-wide v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->c:J

    iget-wide v2, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->b:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public b()Lcom/networkbench/agent/impl/performance/coulometry/b/h;
    .locals 6

    new-instance v0, Lcom/networkbench/agent/impl/performance/coulometry/b/h;

    iget-wide v1, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->b:J

    iget-wide v3, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->c:J

    iget-object v5, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->f:[Ljava/lang/StackTraceElement;

    invoke-direct/range {v0 .. v5}, Lcom/networkbench/agent/impl/performance/coulometry/b/h;-><init>(JJ[Ljava/lang/StackTraceElement;)V

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/networkbench/agent/impl/performance/coulometry/c/d;

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->a(Lcom/networkbench/agent/impl/performance/coulometry/c/d;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EventItem{startTime="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "}\nduration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->c:J

    iget-wide v3, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->b:J

    sub-long/2addr v1, v3

    const-string p0, "\n"

    invoke-static {v1, v2, p0, v0}, Lo60;->j(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
