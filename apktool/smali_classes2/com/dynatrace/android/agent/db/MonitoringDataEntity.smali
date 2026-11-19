.class public Lcom/dynatrace/android/agent/db/MonitoringDataEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:J

.field public final f:Lcom/dynatrace/android/agent/comm/MonitoringDataPacket;

.field public final g:Z


# direct methods
.method public constructor <init>(JIIIJLcom/dynatrace/android/agent/comm/MonitoringDataPacket;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/dynatrace/android/agent/db/MonitoringDataEntity;->a:J

    iput p3, p0, Lcom/dynatrace/android/agent/db/MonitoringDataEntity;->b:I

    iput p4, p0, Lcom/dynatrace/android/agent/db/MonitoringDataEntity;->c:I

    iput p5, p0, Lcom/dynatrace/android/agent/db/MonitoringDataEntity;->d:I

    iput-wide p6, p0, Lcom/dynatrace/android/agent/db/MonitoringDataEntity;->e:J

    iput-object p8, p0, Lcom/dynatrace/android/agent/db/MonitoringDataEntity;->f:Lcom/dynatrace/android/agent/comm/MonitoringDataPacket;

    iput-boolean p9, p0, Lcom/dynatrace/android/agent/db/MonitoringDataEntity;->g:Z

    return-void
.end method
