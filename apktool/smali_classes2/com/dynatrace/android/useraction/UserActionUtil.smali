.class public abstract Lcom/dynatrace/android/useraction/UserActionUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    return-void
.end method

.method public static a(Lcom/dynatrace/android/agent/measurement/MeasurementPoint;Ljava/lang/String;)Lcom/dynatrace/android/agent/DTXAutoAction;
    .locals 6

    sget-object v0, Lcom/dynatrace/android/agent/DTXAutoAction;->N:Lcom/dynatrace/android/agent/DTXAutoAction;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v2, v0, Lcom/dynatrace/android/agent/DTXActionImpl;->x:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_1

    sget-boolean v2, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Maximum depth of actions reached (10). Do not attach lifecycle action to user action \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/dynatrace/android/agent/CustomSegment;->o:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_0
    move-object v0, v1

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/dynatrace/android/agent/CustomSegment;->l()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Limit of auto user actions is reached: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/dynatrace/android/agent/CustomSegment;->t:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :cond_3
    :goto_0
    if-nez v1, :cond_4

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/dynatrace/android/agent/measurement/MeasurementPoint;->a:J

    invoke-static {v1, v2, v0}, Lcom/dynatrace/android/agent/data/Session;->b(JZ)Lcom/dynatrace/android/agent/data/Session;

    move-result-object v0

    sget-object v1, Lcom/dynatrace/android/agent/AdkSettings;->k:Lcom/dynatrace/android/agent/AdkSettings;

    iget v1, v1, Lcom/dynatrace/android/agent/AdkSettings;->c:I

    invoke-static {p1, v0, v1}, Lcom/dynatrace/android/agent/DTXAutoAction;->B(Ljava/lang/String;Lcom/dynatrace/android/agent/data/Session;I)Lcom/dynatrace/android/agent/DTXAutoAction;

    move-result-object v1

    iget-wide v2, p0, Lcom/dynatrace/android/agent/measurement/MeasurementPoint;->a:J

    iget-object p1, v1, Lcom/dynatrace/android/agent/CustomSegment;->h:Lcom/dynatrace/android/agent/data/Session;

    iget-wide v4, p1, Lcom/dynatrace/android/agent/data/Session;->a:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/dynatrace/android/agent/CustomSegment;->b:J

    iget p0, p0, Lcom/dynatrace/android/agent/measurement/MeasurementPoint;->b:I

    iput p0, v1, Lcom/dynatrace/android/agent/CustomSegment;->g:I

    :cond_4
    invoke-virtual {v1}, Lcom/dynatrace/android/agent/DTXAutoAction;->z()V

    iget-object p0, v1, Lcom/dynatrace/android/agent/CustomSegment;->h:Lcom/dynatrace/android/agent/data/Session;

    sget-object p1, Lcom/dynatrace/android/agent/TimeLineProvider;->c:Lcom/dynatrace/android/agent/TimeLineProvider;

    invoke-virtual {p1}, Lcom/dynatrace/android/agent/TimeLineProvider;->a()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/dynatrace/android/agent/data/Session;->j(J)V

    return-object v1
.end method
