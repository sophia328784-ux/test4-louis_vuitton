.class public final Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JavaHeap"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0016\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B7\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0008H\u00c6\u0003J;\u0010\u001d\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c6\u0001J\u0013\u0010\u001e\u001a\u00020\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010!\u001a\u00020\"H\u00d6\u0001J\t\u0010#\u001a\u00020$H\u00d6\u0001R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000b\"\u0004\u0008\u000f\u0010\rR\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u000b\"\u0004\u0008\u0015\u0010\rR\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u000b\"\u0004\u0008\u0017\u0010\r\u00a8\u0006%"
    }
    d2 = {
        "Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;",
        "",
        "max",
        "",
        "total",
        "free",
        "used",
        "rate",
        "",
        "(JJJJF)V",
        "getFree",
        "()J",
        "setFree",
        "(J)V",
        "getMax",
        "setMax",
        "getRate",
        "()F",
        "setRate",
        "(F)V",
        "getTotal",
        "setTotal",
        "getUsed",
        "setUsed",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "koom-java-leak_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private free:J

.field private max:J

.field private rate:F

.field private total:J

.field private used:J


# direct methods
.method public constructor <init>()V
    .locals 12

    .line 32
    const/16 v10, 0x1f

    const/4 v11, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;-><init>(JJJJFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JJJJF)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->max:J

    iput-wide p3, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->total:J

    iput-wide p5, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->free:J

    iput-wide p7, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->used:J

    iput p9, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->rate:F

    return-void
.end method

.method public synthetic constructor <init>(JJJJFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p11, p10, 0x1

    const-wide/16 v0, 0x0

    if-eqz p11, :cond_0

    move-wide p1, v0

    :cond_0
    and-int/lit8 p11, p10, 0x2

    if-eqz p11, :cond_1

    move-wide p3, v0

    :cond_1
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_2

    move-wide p5, v0

    :cond_2
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_3

    move-wide p7, v0

    :cond_3
    and-int/lit8 p10, p10, 0x10

    if-eqz p10, :cond_4

    const/4 p9, 0x0

    :cond_4
    invoke-direct/range {p0 .. p9}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;-><init>(JJJJF)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;JJJJFILjava/lang/Object;)Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;
    .locals 10

    and-int/lit8 v0, p10, 0x1

    if-eqz v0, :cond_0

    iget-wide p1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->max:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p10, 0x2

    if-eqz p1, :cond_1

    iget-wide p3, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->total:J

    :cond_1
    move-wide v3, p3

    and-int/lit8 p1, p10, 0x4

    if-eqz p1, :cond_2

    iget-wide p1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->free:J

    move-wide v5, p1

    goto :goto_0

    :cond_2
    move-wide v5, p5

    :goto_0
    and-int/lit8 p1, p10, 0x8

    if-eqz p1, :cond_3

    iget-wide p1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->used:J

    move-wide v7, p1

    goto :goto_1

    :cond_3
    move-wide/from16 v7, p7

    :goto_1
    and-int/lit8 p1, p10, 0x10

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->rate:F

    move v9, p1

    :goto_2
    move-object v0, p0

    goto :goto_3

    :cond_4
    move/from16 v9, p9

    goto :goto_2

    :goto_3
    invoke-virtual/range {v0 .. v9}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->copy(JJJJF)Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->max:J

    return-wide v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->total:J

    return-wide v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->free:J

    return-wide v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->used:J

    return-wide v0
.end method

.method public final component5()F
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->rate:F

    return p0
.end method

.method public final copy(JJJJF)Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;
    .locals 0

    new-instance p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;

    invoke-direct/range {p0 .. p9}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;-><init>(JJJJF)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;

    iget-wide v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->max:J

    iget-wide v2, p1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->max:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->total:J

    iget-wide v2, p1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->total:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->free:J

    iget-wide v2, p1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->free:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->used:J

    iget-wide v2, p1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->used:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget p0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->rate:F

    iget p1, p1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->rate:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final getFree()J
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->free:J

    return-wide v0
.end method

.method public final getMax()J
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->max:J

    return-wide v0
.end method

.method public final getRate()F
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->rate:F

    return p0
.end method

.method public final getTotal()J
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->total:J

    return-wide v0
.end method

.method public final getUsed()J
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->used:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->max:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->total:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->free:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->used:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget p0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->rate:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final setFree(J)V
    .locals 0

    iput-wide p1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->free:J

    return-void
.end method

.method public final setMax(J)V
    .locals 0

    iput-wide p1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->max:J

    return-void
.end method

.method public final setRate(F)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->rate:F

    return-void
.end method

.method public final setTotal(J)V
    .locals 0

    iput-wide p1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->total:J

    return-void
.end method

.method public final setUsed(J)V
    .locals 0

    iput-wide p1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->used:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JavaHeap(max="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->max:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->total:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", free="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->free:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", used="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->used:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$JavaHeap;->rate:F

    const-string v1, ")"

    invoke-static {p0, v1, v0}, Ld21;->e(FLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
