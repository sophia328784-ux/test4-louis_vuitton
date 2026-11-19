.class public Lcom/dynatrace/android/lifecycle/event/LifecycleEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Enum;

.field public final b:J

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/lang/Enum;Lcom/dynatrace/android/agent/measurement/MeasurementPoint;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/dynatrace/android/agent/measurement/MeasurementPoint;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/android/lifecycle/event/LifecycleEvent;->a:Ljava/lang/Enum;

    iget-wide v0, p2, Lcom/dynatrace/android/agent/measurement/MeasurementPoint;->a:J

    iput-wide v0, p0, Lcom/dynatrace/android/lifecycle/event/LifecycleEvent;->b:J

    iget p1, p2, Lcom/dynatrace/android/agent/measurement/MeasurementPoint;->b:I

    iput p1, p0, Lcom/dynatrace/android/lifecycle/event/LifecycleEvent;->c:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/dynatrace/android/lifecycle/event/LifecycleEvent;

    iget-wide v2, p0, Lcom/dynatrace/android/lifecycle/event/LifecycleEvent;->b:J

    iget-wide v4, p1, Lcom/dynatrace/android/lifecycle/event/LifecycleEvent;->b:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    return v1

    :cond_2
    iget v2, p0, Lcom/dynatrace/android/lifecycle/event/LifecycleEvent;->c:I

    iget v3, p1, Lcom/dynatrace/android/lifecycle/event/LifecycleEvent;->c:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object p0, p0, Lcom/dynatrace/android/lifecycle/event/LifecycleEvent;->a:Ljava/lang/Enum;

    iget-object p1, p1, Lcom/dynatrace/android/lifecycle/event/LifecycleEvent;->a:Ljava/lang/Enum;

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 6

    iget-object v0, p0, Lcom/dynatrace/android/lifecycle/event/LifecycleEvent;->a:Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x20

    iget-wide v2, p0, Lcom/dynatrace/android/lifecycle/event/LifecycleEvent;->b:J

    ushr-long v4, v2, v1

    xor-long v1, v2, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/dynatrace/android/lifecycle/event/LifecycleEvent;->c:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LifecycleEvent{eventType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dynatrace/android/lifecycle/event/LifecycleEvent;->a:Ljava/lang/Enum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/dynatrace/android/lifecycle/event/LifecycleEvent;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sequenceNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/dynatrace/android/lifecycle/event/LifecycleEvent;->c:I

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Ltr;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
