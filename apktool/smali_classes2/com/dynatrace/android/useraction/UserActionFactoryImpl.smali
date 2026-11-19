.class public Lcom/dynatrace/android/useraction/UserActionFactoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/android/useraction/UserActionFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dynatrace/android/agent/measurement/MeasurementPoint;Ljava/lang/String;)Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;
    .locals 4

    new-instance p0, Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;

    sget v0, Lcom/dynatrace/android/useraction/UserActionUtil;->a:I

    const/4 v0, 0x0

    iget-wide v1, p1, Lcom/dynatrace/android/agent/measurement/MeasurementPoint;->a:J

    invoke-static {v1, v2, v0}, Lcom/dynatrace/android/agent/data/Session;->b(JZ)Lcom/dynatrace/android/agent/data/Session;

    move-result-object v0

    sget-object v1, Lcom/dynatrace/android/agent/AdkSettings;->k:Lcom/dynatrace/android/agent/AdkSettings;

    iget v1, v1, Lcom/dynatrace/android/agent/AdkSettings;->c:I

    invoke-static {p2, v0, v1}, Lcom/dynatrace/android/agent/DTXAutoAction;->B(Ljava/lang/String;Lcom/dynatrace/android/agent/data/Session;I)Lcom/dynatrace/android/agent/DTXAutoAction;

    move-result-object p2

    iget-wide v0, p1, Lcom/dynatrace/android/agent/measurement/MeasurementPoint;->a:J

    iget-object v2, p2, Lcom/dynatrace/android/agent/CustomSegment;->h:Lcom/dynatrace/android/agent/data/Session;

    iget-wide v2, v2, Lcom/dynatrace/android/agent/data/Session;->a:J

    sub-long/2addr v0, v2

    iput-wide v0, p2, Lcom/dynatrace/android/agent/CustomSegment;->b:J

    iget p1, p1, Lcom/dynatrace/android/agent/measurement/MeasurementPoint;->b:I

    iput p1, p2, Lcom/dynatrace/android/agent/CustomSegment;->g:I

    invoke-direct {p0, p2}, Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;-><init>(Lcom/dynatrace/android/agent/DTXAutoAction;)V

    return-object p0
.end method
