.class public Lcom/networkbench/agent/impl/plugin/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([D)D
    .locals 4

    const-wide/16 v0, 0x0

    const/4 p0, 0x0

    :goto_0
    array-length v2, p1

    if-ge p0, v2, :cond_0

    aget-wide v2, p1, p0

    add-double/2addr v0, v2

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public b([D)D
    .locals 2

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/plugin/d/a;->a([D)D

    move-result-wide v0

    array-length p0, p1

    int-to-double p0, p0

    div-double/2addr v0, p0

    return-wide v0
.end method

.method public c([D)D
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    aget-wide v3, p1, v2

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/plugin/d/a;->b([D)D

    move-result-wide v5

    sub-double/2addr v3, v5

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    array-length p0, p1

    int-to-double p0, p0

    div-double/2addr v0, p0

    return-wide v0
.end method

.method public d([D)D
    .locals 0

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/plugin/d/a;->c([D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public e([D)D
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    aget-wide v3, p1, v2

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/plugin/d/a;->b([D)D

    move-result-wide v5

    sub-double/2addr v3, v5

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    array-length p0, p1

    add-int/lit8 p0, p0, -0x1

    int-to-double p0, p0

    div-double/2addr v0, p0

    return-wide v0
.end method

.method public f([D)D
    .locals 0

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/plugin/d/a;->e([D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method
