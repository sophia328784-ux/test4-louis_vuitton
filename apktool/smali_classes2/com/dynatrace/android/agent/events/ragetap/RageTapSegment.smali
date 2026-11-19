.class public Lcom/dynatrace/android/agent/events/ragetap/RageTapSegment;
.super Lcom/dynatrace/android/agent/CustomSegment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/android/agent/events/ragetap/RageTapSegment$Builder;
    }
.end annotation


# instance fields
.field public final u:Ljava/lang/String;

.field public final v:J

.field public final w:J

.field public final x:I

.field public final y:Z


# direct methods
.method public constructor <init>(Lcom/dynatrace/android/agent/events/ragetap/RageTapSegment$Builder;)V
    .locals 6

    iget-object v1, p1, Lcom/dynatrace/android/agent/events/ragetap/RageTapSegment$Builder;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/dynatrace/android/agent/events/ragetap/RageTapSegment$Builder;->g:Lcom/dynatrace/android/agent/data/Session;

    iget v4, p1, Lcom/dynatrace/android/agent/events/ragetap/RageTapSegment$Builder;->e:I

    iget-boolean v5, p1, Lcom/dynatrace/android/agent/events/ragetap/RageTapSegment$Builder;->h:Z

    const/16 v2, 0x10

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/dynatrace/android/agent/CustomSegment;-><init>(Ljava/lang/String;ILcom/dynatrace/android/agent/data/Session;IZ)V

    iget-wide v1, p1, Lcom/dynatrace/android/agent/events/ragetap/RageTapSegment$Builder;->b:J

    iput-wide v1, v0, Lcom/dynatrace/android/agent/CustomSegment;->b:J

    sget-object p0, Lcom/dynatrace/android/agent/EventType;->RAGE_TAP:Lcom/dynatrace/android/agent/EventType;

    iput-object p0, v0, Lcom/dynatrace/android/agent/CustomSegment;->j:Lcom/dynatrace/android/agent/EventType;

    iget p0, p1, Lcom/dynatrace/android/agent/events/ragetap/RageTapSegment$Builder;->f:I

    iput p0, v0, Lcom/dynatrace/android/agent/CustomSegment;->g:I

    iget-object p0, p1, Lcom/dynatrace/android/agent/events/ragetap/RageTapSegment$Builder;->a:Ljava/lang/String;

    const/16 v1, 0xfa

    invoke-static {v1, p0}, Lcom/dynatrace/android/agent/util/Utility;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/dynatrace/android/agent/events/ragetap/RageTapSegment;->u:Ljava/lang/String;

    iget-wide v1, p1, Lcom/dynatrace/android/agent/events/ragetap/RageTapSegment$Builder;->b:J

    iput-wide v1, v0, Lcom/dynatrace/android/agent/events/ragetap/RageTapSegment;->v:J

    iget-wide v1, p1, Lcom/dynatrace/android/agent/events/ragetap/RageTapSegment$Builder;->c:J

    iput-wide v1, v0, Lcom/dynatrace/android/agent/events/ragetap/RageTapSegment;->w:J

    iget p0, p1, Lcom/dynatrace/android/agent/events/ragetap/RageTapSegment$Builder;->d:I

    iput p0, v0, Lcom/dynatrace/android/agent/events/ragetap/RageTapSegment;->x:I

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/dynatrace/android/agent/CustomSegment;->e:Z

    iget-boolean p0, p1, Lcom/dynatrace/android/agent/events/ragetap/RageTapSegment$Builder;->h:Z

    iput-boolean p0, v0, Lcom/dynatrace/android/agent/events/ragetap/RageTapSegment;->y:Z

    return-void
.end method


# virtual methods
.method public final h()Ljava/lang/StringBuilder;
    .locals 3

    new-instance v0, Lcom/dynatrace/android/agent/events/ragetap/RageTapEventWriter;

    invoke-direct {v0}, Lcom/dynatrace/android/agent/events/ragetap/RageTapEventWriter;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "et="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/android/agent/CustomSegment;->j:Lcom/dynatrace/android/agent/EventType;

    invoke-virtual {v1}, Lcom/dynatrace/android/agent/EventType;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/android/agent/events/ragetap/RageTapSegment;->u:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "&na="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/android/agent/CustomSegment;->o:Ljava/lang/String;

    invoke-static {v1}, Lcom/dynatrace/android/agent/util/Utility;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "&s0="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dynatrace/android/agent/CustomSegment;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&t0="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/dynatrace/android/agent/events/ragetap/RageTapSegment;->v:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "&t1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/dynatrace/android/agent/events/ragetap/RageTapSegment;->w:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "&nt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dynatrace/android/agent/events/ragetap/RageTapSegment;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&fw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/dynatrace/android/agent/events/ragetap/RageTapSegment;->y:Z

    if-eqz p0, :cond_1

    const-string p0, "1"

    goto :goto_0

    :cond_1
    const-string p0, "0"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method
