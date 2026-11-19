.class public Lcom/networkbench/agent/impl/performance/a/b/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/networkbench/agent/impl/performance/a/a/b;D)Z
    .locals 7

    invoke-static {}, Lcom/networkbench/agent/impl/performance/a/e/a;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gtz v2, :cond_1

    iget-wide v0, p0, Lcom/networkbench/agent/impl/performance/a/a/b;->d:D

    cmpl-double p0, p1, v0

    if-lez p0, :cond_0

    return v4

    :cond_0
    return v3

    :cond_1
    iget-wide v5, p0, Lcom/networkbench/agent/impl/performance/a/a/b;->d:D

    cmpl-double p0, p1, v5

    if-gtz p0, :cond_3

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double/2addr p1, v5

    long-to-double v0, v0

    div-double/2addr p1, v0

    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    cmpl-double p0, p1, v0

    if-ltz p0, :cond_2

    goto :goto_0

    :cond_2
    return v3

    :cond_3
    :goto_0
    return v4
.end method
