.class public Lcom/dynatrace/android/agent/BasicSegment;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/android/agent/BasicSegment$UpdatableDataGenerator;
    }
.end annotation


# instance fields
.field public final a:Lcom/dynatrace/android/agent/metrics/AndroidMetrics;

.field public final b:Lcom/dynatrace/agent/common/InstrumentationFlavor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    return-void
.end method

.method public constructor <init>(Lcom/dynatrace/agent/common/InstrumentationFlavor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->a()Lcom/dynatrace/android/agent/metrics/AndroidMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/dynatrace/android/agent/BasicSegment;->a:Lcom/dynatrace/android/agent/metrics/AndroidMetrics;

    iput-object p1, p0, Lcom/dynatrace/android/agent/BasicSegment;->b:Lcom/dynatrace/agent/common/InstrumentationFlavor;

    return-void
.end method

.method public static a(Lcom/dynatrace/android/agent/comm/MonitoringDataPacket;)Z
    .locals 3

    iget-object v0, p0, Lcom/dynatrace/android/agent/comm/MonitoringDataPacket;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "&pa=0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/dynatrace/android/agent/comm/MonitoringDataPacket;->a:Ljava/lang/String;

    const-string v2, "&nu=1"

    invoke-static {v1, v2, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dynatrace/android/agent/comm/MonitoringDataPacket;->a:Ljava/lang/String;

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
