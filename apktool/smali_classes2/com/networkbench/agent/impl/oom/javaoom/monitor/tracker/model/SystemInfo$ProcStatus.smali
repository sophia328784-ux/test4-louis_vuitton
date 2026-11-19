.class public final Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProcStatus"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B#\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\'\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0008\"\u0004\u0008\u000c\u0010\nR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0008\"\u0004\u0008\u000e\u0010\n\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;",
        "",
        "thread",
        "",
        "vssInKb",
        "rssInKb",
        "(III)V",
        "getRssInKb",
        "()I",
        "setRssInKb",
        "(I)V",
        "getThread",
        "setThread",
        "getVssInKb",
        "setVssInKb",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
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
.field private rssInKb:I

.field private thread:I

.field private vssInKb:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 21
    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;-><init>(IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;->thread:I

    iput p2, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;->vssInKb:I

    iput p3, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;->rssInKb:I

    return-void
.end method

.method public synthetic constructor <init>(IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move p3, v0

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;-><init>(III)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;IIIILjava/lang/Object;)Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;->thread:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;->vssInKb:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;->rssInKb:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;->copy(III)Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;->thread:I

    return p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;->vssInKb:I

    return p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;->rssInKb:I

    return p0
.end method

.method public final copy(III)Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;
    .locals 0

    new-instance p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;

    invoke-direct {p0, p1, p2, p3}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;-><init>(III)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;

    iget v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;->thread:I

    iget v1, p1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;->thread:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;->vssInKb:I

    iget v1, p1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;->vssInKb:I

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;->rssInKb:I

    iget p1, p1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;->rssInKb:I

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final getRssInKb()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;->rssInKb:I

    return p0
.end method

.method public final getThread()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;->thread:I

    return p0
.end method

.method public final getVssInKb()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;->vssInKb:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;->thread:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;->vssInKb:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget p0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;->rssInKb:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final setRssInKb(I)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;->rssInKb:I

    return-void
.end method

.method public final setThread(I)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;->thread:I

    return-void
.end method

.method public final setVssInKb(I)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;->vssInKb:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ProcStatus(thread="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;->thread:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", vssInKb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;->vssInKb:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rssInKb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$ProcStatus;->rssInKb:I

    const-string v1, ")"

    invoke-static {p0, v1, v0}, La;->i(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
