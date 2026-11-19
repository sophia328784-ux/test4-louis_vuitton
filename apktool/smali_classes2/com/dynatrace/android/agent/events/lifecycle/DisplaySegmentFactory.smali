.class public Lcom/dynatrace/android/agent/events/lifecycle/DisplaySegmentFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/android/lifecycle/SegmentFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dynatrace/android/lifecycle/SegmentFactory<",
        "Lcom/dynatrace/android/lifecycle/action/LifecycleAction<",
        "Lcom/dynatrace/android/lifecycle/event/ActivityEventType;",
        ">;",
        "Lcom/dynatrace/android/agent/events/lifecycle/DisplaySegment;",
        ">;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(JLcom/dynatrace/android/agent/measurement/MeasurementPoint;)Lcom/dynatrace/android/agent/measurement/MeasurementPoint;
    .locals 3

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    iget-wide v1, p2, Lcom/dynatrace/android/agent/measurement/MeasurementPoint;->a:J

    sub-long/2addr v1, p0

    iget p0, p2, Lcom/dynatrace/android/agent/measurement/MeasurementPoint;->b:I

    invoke-direct {v0, v1, v2, p0}, Lcom/dynatrace/android/agent/measurement/MeasurementPoint;-><init>(JI)V

    return-object v0
.end method
