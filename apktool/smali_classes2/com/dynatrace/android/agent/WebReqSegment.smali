.class public Lcom/dynatrace/android/agent/WebReqSegment;
.super Lcom/dynatrace/android/agent/CustomSegment;
.source "SourceFile"


# instance fields
.field public final A:Z

.field public final u:Ljava/lang/String;

.field public final v:I

.field public final w:J

.field public final x:J

.field public final y:J

.field public final z:Ljava/lang/String;


# direct methods
.method public constructor <init>(JIJJILjava/lang/String;Ljava/lang/String;JJLcom/dynatrace/android/agent/data/Session;ILjava/lang/String;Z)V
    .locals 14

    const/4 v2, 0x6

    sget-object v3, Lcom/dynatrace/android/agent/EventType;->WEB_REQUEST:Lcom/dynatrace/android/agent/EventType;

    move-object v0, p0

    move-wide v4, p1

    move/from16 v6, p3

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move-object/from16 v1, p10

    move-object/from16 v11, p15

    move/from16 v12, p16

    move/from16 v13, p18

    invoke-direct/range {v0 .. v13}, Lcom/dynatrace/android/agent/CustomSegment;-><init>(Ljava/lang/String;ILcom/dynatrace/android/agent/EventType;JIJJLcom/dynatrace/android/agent/data/Session;IZ)V

    move/from16 v1, p8

    iput v1, p0, Lcom/dynatrace/android/agent/WebReqSegment;->v:I

    move-object/from16 v1, p9

    iput-object v1, p0, Lcom/dynatrace/android/agent/WebReqSegment;->u:Ljava/lang/String;

    sget-object v1, Lcom/dynatrace/android/agent/util/Utility;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/dynatrace/android/agent/WebReqSegment;->w:J

    move-wide/from16 v1, p11

    iput-wide v1, p0, Lcom/dynatrace/android/agent/WebReqSegment;->x:J

    move-wide/from16 v1, p13

    iput-wide v1, p0, Lcom/dynatrace/android/agent/WebReqSegment;->y:J

    move-object/from16 v1, p17

    iput-object v1, p0, Lcom/dynatrace/android/agent/WebReqSegment;->z:Ljava/lang/String;

    iput-boolean v13, p0, Lcom/dynatrace/android/agent/WebReqSegment;->A:Z

    return-void
.end method


# virtual methods
.method public final h()Ljava/lang/StringBuilder;
    .locals 7

    const-string v0, "et="

    invoke-static {v0}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dynatrace/android/agent/CustomSegment;->j:Lcom/dynatrace/android/agent/EventType;

    invoke-virtual {v1}, Lcom/dynatrace/android/agent/EventType;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&na="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/android/agent/CustomSegment;->o:Ljava/lang/String;

    invoke-static {v1}, Lcom/dynatrace/android/agent/util/Utility;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&it="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->e()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "&pa="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/dynatrace/android/agent/CustomSegment;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "&s0="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dynatrace/android/agent/CustomSegment;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&t0="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/dynatrace/android/agent/CustomSegment;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "&s1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/dynatrace/android/agent/WebReqSegment;->w:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "&t1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/dynatrace/android/agent/CustomSegment;->c:J

    iget-wide v3, p0, Lcom/dynatrace/android/agent/CustomSegment;->b:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "&rc="

    iget v2, p0, Lcom/dynatrace/android/agent/WebReqSegment;->v:I

    if-lez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/dynatrace/android/agent/WebReqSegment;->u:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/dynatrace/android/agent/util/Utility;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    iget-wide v1, p0, Lcom/dynatrace/android/agent/WebReqSegment;->x:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_2

    iget-wide v5, p0, Lcom/dynatrace/android/agent/WebReqSegment;->y:J

    cmp-long v3, v5, v3

    if-ltz v3, :cond_2

    const-string v3, "&bs="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "&br="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lcom/dynatrace/android/agent/WebReqSegment;->z:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v2, "&si="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/dynatrace/android/agent/util/Utility;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, "&fw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/dynatrace/android/agent/WebReqSegment;->A:Z

    if-eqz p0, :cond_4

    const-string p0, "1"

    goto :goto_1

    :cond_4
    const-string p0, "0"

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method
