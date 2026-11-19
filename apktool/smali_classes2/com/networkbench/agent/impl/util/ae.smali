.class public Lcom/networkbench/agent/impl/util/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/util/ae;->b(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(J)Ljava/lang/String;
    .locals 0

    .line 9
    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/util/ae;->b(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(J)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/networkbench/agent/impl/crash/anomalous/AnomalousCallBackControl;->getInstance()Lcom/networkbench/agent/impl/crash/anomalous/AnomalousCallBackControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/crash/anomalous/AnomalousCallBackControl;->getErrorIdGenerateBlock()Lcom/networkbench/agent/impl/instrumentation/TingyunErrorIdGenerateBlock;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/util/ae;->c(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/crash/anomalous/AnomalousCallBackControl;->getInstance()Lcom/networkbench/agent/impl/crash/anomalous/AnomalousCallBackControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/crash/anomalous/AnomalousCallBackControl;->getUuidCallBack()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/util/ae;->c(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p1, 0x40

    if-le p0, p1, :cond_2

    const/4 p0, 0x0

    invoke-virtual {v0, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method private static c(J)Ljava/lang/String;
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const-wide v1, 0x40f86a0000000000L    # 100000.0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v5, 0x4022000000000000L    # 9.0

    if-gtz v0, :cond_0

    :try_start_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    mul-double/2addr v7, v5

    add-double/2addr v7, v3

    mul-double/2addr v7, v1

    double-to-int p1, v7

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p0

    mul-double/2addr p0, v5

    add-double/2addr p0, v3

    mul-double/2addr p0, v1

    double-to-int p0, p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const-string p0, ""

    return-object p0
.end method
