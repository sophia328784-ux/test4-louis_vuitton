.class public Lcom/dynatrace/android/agent/events/lifecycle/DisplaySegment;
.super Lcom/dynatrace/android/agent/CustomSegment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/android/agent/events/lifecycle/DisplaySegment$Builder;
    }
.end annotation


# instance fields
.field public final u:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

.field public final v:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

.field public final w:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

.field public final x:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

.field public final y:Z


# direct methods
.method public constructor <init>(Lcom/dynatrace/android/agent/events/lifecycle/DisplaySegment$Builder;)V
    .locals 6

    iget-object v1, p1, Lcom/dynatrace/android/agent/events/lifecycle/DisplaySegment$Builder;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/dynatrace/android/agent/events/lifecycle/DisplaySegment$Builder;->b:Lcom/dynatrace/android/agent/data/Session;

    iget v4, p1, Lcom/dynatrace/android/agent/events/lifecycle/DisplaySegment$Builder;->c:I

    iget-boolean v5, p1, Lcom/dynatrace/android/agent/events/lifecycle/DisplaySegment$Builder;->k:Z

    const/16 v2, 0xf

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/dynatrace/android/agent/CustomSegment;-><init>(Ljava/lang/String;ILcom/dynatrace/android/agent/data/Session;IZ)V

    iget-object p0, p1, Lcom/dynatrace/android/agent/events/lifecycle/DisplaySegment$Builder;->e:Lcom/dynatrace/android/agent/EventType;

    iput-object p0, v0, Lcom/dynatrace/android/agent/CustomSegment;->j:Lcom/dynatrace/android/agent/EventType;

    iget-object p0, p1, Lcom/dynatrace/android/agent/events/lifecycle/DisplaySegment$Builder;->f:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    iget v1, p0, Lcom/dynatrace/android/agent/measurement/MeasurementPoint;->b:I

    iput v1, v0, Lcom/dynatrace/android/agent/CustomSegment;->g:I

    iget-wide v1, p0, Lcom/dynatrace/android/agent/measurement/MeasurementPoint;->a:J

    iput-wide v1, v0, Lcom/dynatrace/android/agent/CustomSegment;->b:J

    iget-wide v1, p1, Lcom/dynatrace/android/agent/events/lifecycle/DisplaySegment$Builder;->d:J

    iput-wide v1, v0, Lcom/dynatrace/android/agent/CustomSegment;->d:J

    iget-object p0, p1, Lcom/dynatrace/android/agent/events/lifecycle/DisplaySegment$Builder;->g:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    iput-object p0, v0, Lcom/dynatrace/android/agent/events/lifecycle/DisplaySegment;->u:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    iget-object p0, p1, Lcom/dynatrace/android/agent/events/lifecycle/DisplaySegment$Builder;->h:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    iput-object p0, v0, Lcom/dynatrace/android/agent/events/lifecycle/DisplaySegment;->v:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    iget-object p0, p1, Lcom/dynatrace/android/agent/events/lifecycle/DisplaySegment$Builder;->i:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    iput-object p0, v0, Lcom/dynatrace/android/agent/events/lifecycle/DisplaySegment;->w:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    iget-object p0, p1, Lcom/dynatrace/android/agent/events/lifecycle/DisplaySegment$Builder;->j:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    iput-object p0, v0, Lcom/dynatrace/android/agent/events/lifecycle/DisplaySegment;->x:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/dynatrace/android/agent/CustomSegment;->e:Z

    iget-boolean p0, p1, Lcom/dynatrace/android/agent/events/lifecycle/DisplaySegment$Builder;->k:Z

    iput-boolean p0, v0, Lcom/dynatrace/android/agent/events/lifecycle/DisplaySegment;->y:Z

    return-void
.end method


# virtual methods
.method public final h()Ljava/lang/StringBuilder;
    .locals 4

    new-instance v0, Lcom/dynatrace/android/agent/events/lifecycle/DisplayEventWriter;

    invoke-direct {v0}, Lcom/dynatrace/android/agent/events/lifecycle/DisplayEventWriter;-><init>()V

    new-instance v0, Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    iget-wide v1, p0, Lcom/dynatrace/android/agent/CustomSegment;->b:J

    iget v3, p0, Lcom/dynatrace/android/agent/CustomSegment;->g:I

    invoke-direct {v0, v1, v2, v3}, Lcom/dynatrace/android/agent/measurement/MeasurementPoint;-><init>(JI)V

    const-string v1, "et="

    invoke-static {v1}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dynatrace/android/agent/CustomSegment;->j:Lcom/dynatrace/android/agent/EventType;

    invoke-virtual {v2}, Lcom/dynatrace/android/agent/EventType;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "&na="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dynatrace/android/agent/CustomSegment;->o:Ljava/lang/String;

    invoke-static {v2}, Lcom/dynatrace/android/agent/util/Utility;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&it="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->e()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "&ca="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/dynatrace/android/agent/CustomSegment;->q:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "&pa="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/dynatrace/android/agent/CustomSegment;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "&s0="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/dynatrace/android/agent/measurement/MeasurementPoint;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "&t0="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/dynatrace/android/agent/measurement/MeasurementPoint;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/dynatrace/android/agent/events/lifecycle/DisplaySegment;->u:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    if-eqz v0, :cond_0

    const-string v2, "&s1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/dynatrace/android/agent/measurement/MeasurementPoint;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "&t1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/dynatrace/android/agent/measurement/MeasurementPoint;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/dynatrace/android/agent/events/lifecycle/DisplaySegment;->v:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    if-eqz v0, :cond_1

    const-string v2, "&s2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/dynatrace/android/agent/measurement/MeasurementPoint;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "&t2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/dynatrace/android/agent/measurement/MeasurementPoint;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v0, p0, Lcom/dynatrace/android/agent/events/lifecycle/DisplaySegment;->w:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    if-eqz v0, :cond_2

    const-string v2, "&s3="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/dynatrace/android/agent/measurement/MeasurementPoint;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "&t3="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/dynatrace/android/agent/measurement/MeasurementPoint;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v0, p0, Lcom/dynatrace/android/agent/events/lifecycle/DisplaySegment;->x:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    if-eqz v0, :cond_3

    const-string v2, "&s4="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/dynatrace/android/agent/measurement/MeasurementPoint;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "&t4="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/dynatrace/android/agent/measurement/MeasurementPoint;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_3
    const-string v0, "&fw="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/dynatrace/android/agent/events/lifecycle/DisplaySegment;->y:Z

    if-eqz p0, :cond_4

    const-string p0, "1"

    goto :goto_0

    :cond_4
    const-string p0, "0"

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v1
.end method

.method public final k()I
    .locals 0

    iget p0, p0, Lcom/dynatrace/android/agent/CustomSegment;->p:I

    return p0
.end method
