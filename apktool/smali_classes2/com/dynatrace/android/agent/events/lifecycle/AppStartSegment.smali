.class public Lcom/dynatrace/android/agent/events/lifecycle/AppStartSegment;
.super Lcom/dynatrace/android/agent/CustomSegment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/android/agent/events/lifecycle/AppStartSegment$Builder;
    }
.end annotation


# instance fields
.field public final u:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

.field public final v:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

.field public final w:Ljava/lang/String;

.field public final x:Z


# direct methods
.method public constructor <init>(Lcom/dynatrace/android/agent/events/lifecycle/AppStartSegment$Builder;)V
    .locals 6

    iget-object v1, p1, Lcom/dynatrace/android/agent/events/lifecycle/AppStartSegment$Builder;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/dynatrace/android/agent/events/lifecycle/AppStartSegment$Builder;->b:Lcom/dynatrace/android/agent/data/Session;

    iget v4, p1, Lcom/dynatrace/android/agent/events/lifecycle/AppStartSegment$Builder;->c:I

    iget-boolean v5, p1, Lcom/dynatrace/android/agent/events/lifecycle/AppStartSegment$Builder;->h:Z

    const/16 v2, 0xf

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/dynatrace/android/agent/CustomSegment;-><init>(Ljava/lang/String;ILcom/dynatrace/android/agent/data/Session;IZ)V

    iget-object p0, p1, Lcom/dynatrace/android/agent/events/lifecycle/AppStartSegment$Builder;->a:Ljava/lang/String;

    const/16 v1, 0xfa

    invoke-static {v1, p0}, Lcom/dynatrace/android/agent/util/Utility;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/dynatrace/android/agent/events/lifecycle/AppStartSegment;->w:Ljava/lang/String;

    iget-object p0, p1, Lcom/dynatrace/android/agent/events/lifecycle/AppStartSegment$Builder;->e:Lcom/dynatrace/android/agent/EventType;

    iput-object p0, v0, Lcom/dynatrace/android/agent/CustomSegment;->j:Lcom/dynatrace/android/agent/EventType;

    iget-object p0, p1, Lcom/dynatrace/android/agent/events/lifecycle/AppStartSegment$Builder;->f:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    iget v1, p0, Lcom/dynatrace/android/agent/measurement/MeasurementPoint;->b:I

    iput v1, v0, Lcom/dynatrace/android/agent/CustomSegment;->g:I

    iget-wide v1, p0, Lcom/dynatrace/android/agent/measurement/MeasurementPoint;->a:J

    iput-wide v1, v0, Lcom/dynatrace/android/agent/CustomSegment;->b:J

    iget-wide v1, p1, Lcom/dynatrace/android/agent/events/lifecycle/AppStartSegment$Builder;->d:J

    iput-wide v1, v0, Lcom/dynatrace/android/agent/CustomSegment;->d:J

    iput-object p0, v0, Lcom/dynatrace/android/agent/events/lifecycle/AppStartSegment;->u:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    iget-object p0, p1, Lcom/dynatrace/android/agent/events/lifecycle/AppStartSegment$Builder;->g:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    iput-object p0, v0, Lcom/dynatrace/android/agent/events/lifecycle/AppStartSegment;->v:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/dynatrace/android/agent/CustomSegment;->e:Z

    iget-boolean p0, p1, Lcom/dynatrace/android/agent/events/lifecycle/AppStartSegment$Builder;->h:Z

    iput-boolean p0, v0, Lcom/dynatrace/android/agent/events/lifecycle/AppStartSegment;->x:Z

    return-void
.end method


# virtual methods
.method public final h()Ljava/lang/StringBuilder;
    .locals 3

    new-instance v0, Lcom/dynatrace/android/agent/events/lifecycle/AppStartEventWriter;

    invoke-direct {v0}, Lcom/dynatrace/android/agent/events/lifecycle/AppStartEventWriter;-><init>()V

    const-string v0, "et="

    invoke-static {v0}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dynatrace/android/agent/CustomSegment;->j:Lcom/dynatrace/android/agent/EventType;

    invoke-virtual {v1}, Lcom/dynatrace/android/agent/EventType;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/android/agent/events/lifecycle/AppStartSegment;->w:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "&na="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/android/agent/CustomSegment;->o:Ljava/lang/String;

    invoke-static {v1}, Lcom/dynatrace/android/agent/util/Utility;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "&it="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->e()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "&ca="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/dynatrace/android/agent/CustomSegment;->q:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "&pa="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/dynatrace/android/agent/CustomSegment;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "&s0="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/android/agent/events/lifecycle/AppStartSegment;->u:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    iget v2, v1, Lcom/dynatrace/android/agent/measurement/MeasurementPoint;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "&t0="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v1, Lcom/dynatrace/android/agent/measurement/MeasurementPoint;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "&s1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/android/agent/events/lifecycle/AppStartSegment;->v:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    iget v2, v1, Lcom/dynatrace/android/agent/measurement/MeasurementPoint;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "&t1="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v1, Lcom/dynatrace/android/agent/measurement/MeasurementPoint;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "&fw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/dynatrace/android/agent/events/lifecycle/AppStartSegment;->x:Z

    if-eqz p0, :cond_1

    const-string p0, "1"

    goto :goto_0

    :cond_1
    const-string p0, "0"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method
