.class public Lcom/dynatrace/android/agent/SelfMonitoringSegment;
.super Lcom/dynatrace/android/agent/CustomSegment;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dynatrace/android/agent/data/Session;I)V
    .locals 9

    sget-object v3, Lcom/dynatrace/android/agent/EventType;->SELF_MONITORING_EVENT:Lcom/dynatrace/android/agent/EventType;

    const-wide/16 v4, 0x0

    const/4 v8, 0x0

    const/16 v2, 0xd

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/dynatrace/android/agent/CustomSegment;-><init>(Ljava/lang/String;ILcom/dynatrace/android/agent/EventType;JLcom/dynatrace/android/agent/data/Session;IZ)V

    const/16 p0, 0x3e8

    invoke-static {p0, p2}, Lcom/dynatrace/android/agent/util/Utility;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/dynatrace/android/agent/CustomSegment;->a:Ljava/lang/String;

    return-void
.end method
