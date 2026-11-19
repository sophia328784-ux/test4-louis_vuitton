.class public final Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MemInfo"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0019\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001BA\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\t\u0010\u001b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010 \u001a\u00020\tH\u00c6\u0003JE\u0010!\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u00c6\u0001J\u0013\u0010\"\u001a\u00020#2\u0008\u0010$\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010%\u001a\u00020\u0003H\u00d6\u0001J\t\u0010&\u001a\u00020\'H\u00d6\u0001R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u000c\"\u0004\u0008\u0010\u0010\u000eR\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u000c\"\u0004\u0008\u0012\u0010\u000eR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000c\"\u0004\u0008\u0014\u0010\u000eR\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u000c\"\u0004\u0008\u001a\u0010\u000e\u00a8\u0006("
    }
    d2 = {
        "Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;",
        "",
        "totalInKb",
        "",
        "freeInKb",
        "availableInKb",
        "IONHeap",
        "cmaTotal",
        "rate",
        "",
        "(IIIIIF)V",
        "getIONHeap",
        "()I",
        "setIONHeap",
        "(I)V",
        "getAvailableInKb",
        "setAvailableInKb",
        "getCmaTotal",
        "setCmaTotal",
        "getFreeInKb",
        "setFreeInKb",
        "getRate",
        "()F",
        "setRate",
        "(F)V",
        "getTotalInKb",
        "setTotalInKb",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
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
.field private IONHeap:I

.field private availableInKb:I

.field private cmaTotal:I

.field private freeInKb:I

.field private rate:F

.field private totalInKb:I


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 36
    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;-><init>(IIIIIFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIIIIF)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->totalInKb:I

    iput p2, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->freeInKb:I

    iput p3, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->availableInKb:I

    iput p4, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->IONHeap:I

    iput p5, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->cmaTotal:I

    iput p6, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->rate:F

    return-void
.end method

.method public synthetic constructor <init>(IIIIIFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    move p5, v0

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    const/4 p6, 0x0

    :cond_5
    invoke-direct/range {p0 .. p6}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;-><init>(IIIIIF)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;IIIIIFILjava/lang/Object;)Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget p1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->totalInKb:I

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget p2, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->freeInKb:I

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    iget p3, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->availableInKb:I

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    iget p4, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->IONHeap:I

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    iget p5, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->cmaTotal:I

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    iget p6, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->rate:F

    :cond_5
    move p7, p5

    move p8, p6

    move p5, p3

    move p6, p4

    move p3, p1

    move p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p8}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->copy(IIIIIF)Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->totalInKb:I

    return p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->freeInKb:I

    return p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->availableInKb:I

    return p0
.end method

.method public final component4()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->IONHeap:I

    return p0
.end method

.method public final component5()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->cmaTotal:I

    return p0
.end method

.method public final component6()F
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->rate:F

    return p0
.end method

.method public final copy(IIIIIF)Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;
    .locals 0

    new-instance p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;

    invoke-direct/range {p0 .. p6}, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;-><init>(IIIIIF)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;

    iget v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->totalInKb:I

    iget v1, p1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->totalInKb:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->freeInKb:I

    iget v1, p1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->freeInKb:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->availableInKb:I

    iget v1, p1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->availableInKb:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->IONHeap:I

    iget v1, p1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->IONHeap:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->cmaTotal:I

    iget v1, p1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->cmaTotal:I

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->rate:F

    iget p1, p1, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->rate:F

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

.method public final getAvailableInKb()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->availableInKb:I

    return p0
.end method

.method public final getCmaTotal()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->cmaTotal:I

    return p0
.end method

.method public final getFreeInKb()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->freeInKb:I

    return p0
.end method

.method public final getIONHeap()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->IONHeap:I

    return p0
.end method

.method public final getRate()F
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->rate:F

    return p0
.end method

.method public final getTotalInKb()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->totalInKb:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->totalInKb:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->freeInKb:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget v2, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->availableInKb:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget v2, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->IONHeap:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget v2, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->cmaTotal:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget p0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->rate:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final setAvailableInKb(I)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->availableInKb:I

    return-void
.end method

.method public final setCmaTotal(I)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->cmaTotal:I

    return-void
.end method

.method public final setFreeInKb(I)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->freeInKb:I

    return-void
.end method

.method public final setIONHeap(I)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->IONHeap:I

    return-void
.end method

.method public final setRate(F)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->rate:F

    return-void
.end method

.method public final setTotalInKb(I)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->totalInKb:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MemInfo(totalInKb="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->totalInKb:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", freeInKb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->freeInKb:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", availableInKb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->availableInKb:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", IONHeap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->IONHeap:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cmaTotal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->cmaTotal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/networkbench/agent/impl/oom/javaoom/monitor/tracker/model/SystemInfo$MemInfo;->rate:F

    const-string v1, ")"

    invoke-static {p0, v1, v0}, Ld21;->e(FLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
