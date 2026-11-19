.class public Lcom/networkbench/agent/impl/harvest/SystemInfo;
.super Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;
.source "SourceFile"


# static fields
.field private static log:Lcom/networkbench/agent/impl/c/e;


# instance fields
.field private cpuUtilizationRateSystem:I

.field private cpuUtilizationRateTotal:I

.field private cpuUtilizationRateUser:I

.field private memory:F

.field private sessionDurationInSec:D

.field private sessionRequestCount:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/harvest/SystemInfo;->log:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableObject;-><init>()V

    return-void
.end method


# virtual methods
.method public asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;
    .locals 5

    new-instance v0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v2, p0, Lcom/networkbench/agent/impl/harvest/SystemInfo;->memory:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v2, "mem"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v2, p0, Lcom/networkbench/agent/impl/harvest/SystemInfo;->cpuUtilizationRateSystem:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v2, "cpu_sys"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v2, p0, Lcom/networkbench/agent/impl/harvest/SystemInfo;->cpuUtilizationRateUser:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v2, "cpu_user"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v2, p0, Lcom/networkbench/agent/impl/harvest/SystemInfo;->cpuUtilizationRateTotal:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v2, "cpu"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    sget-boolean v1, Lcom/networkbench/agent/impl/util/r;->o:Z

    if-eqz v1, :cond_0

    sget-wide v1, Lcom/networkbench/agent/impl/util/r;->l:J

    sget-wide v3, Lcom/networkbench/agent/impl/util/r;->k:J

    sub-long/2addr v1, v3

    long-to-double v1, v1

    const-wide v3, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v1, v3

    new-instance v3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v1, "sd"

    invoke-virtual {v0, v1, v3}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    sget v1, Lcom/networkbench/agent/impl/util/r;->j:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/networkbench/agent/impl/harvest/SystemInfo;->sessionRequestCount:J

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-wide v2, p0, Lcom/networkbench/agent/impl/harvest/SystemInfo;->sessionRequestCount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string p0, "req"

    invoke-virtual {v0, p0, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const/4 p0, 0x0

    sput p0, Lcom/networkbench/agent/impl/util/r;->j:I

    :cond_0
    return-object v0
.end method

.method public getCpuUtilizationRateSystem()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/SystemInfo;->cpuUtilizationRateSystem:I

    return p0
.end method

.method public getCpuUtilizationRateTotal()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/SystemInfo;->cpuUtilizationRateTotal:I

    return p0
.end method

.method public getCpuUtilizationRateUser()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/SystemInfo;->cpuUtilizationRateUser:I

    return p0
.end method

.method public getMemory()F
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/SystemInfo;->memory:F

    return p0
.end method

.method public getSessionDurationInSec()D
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/harvest/SystemInfo;->sessionDurationInSec:D

    return-wide v0
.end method

.method public getSessionRequestCount()J
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/harvest/SystemInfo;->sessionRequestCount:J

    return-wide v0
.end method

.method public setCpuUtilizationRateSystem(I)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/harvest/SystemInfo;->cpuUtilizationRateSystem:I

    return-void
.end method

.method public setCpuUtilizationRateTotal(I)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/harvest/SystemInfo;->cpuUtilizationRateTotal:I

    return-void
.end method

.method public setCpuUtilizationRateUser(I)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/harvest/SystemInfo;->cpuUtilizationRateUser:I

    return-void
.end method

.method public setMemory(F)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/harvest/SystemInfo;->memory:F

    return-void
.end method

.method public setSessionDurationInSec(D)V
    .locals 0

    iput-wide p1, p0, Lcom/networkbench/agent/impl/harvest/SystemInfo;->sessionDurationInSec:D

    return-void
.end method

.method public setSessionRequestCount(J)V
    .locals 0

    iput-wide p1, p0, Lcom/networkbench/agent/impl/harvest/SystemInfo;->sessionRequestCount:J

    return-void
.end method
