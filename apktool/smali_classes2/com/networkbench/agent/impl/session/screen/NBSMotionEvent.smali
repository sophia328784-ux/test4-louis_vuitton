.class public Lcom/networkbench/agent/impl/session/screen/NBSMotionEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field time:J

.field x:F

.field y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public conversionMotionEvent(Landroid/view/MotionEvent;J)Lcom/networkbench/agent/impl/session/screen/NBSMotionEvent;
    .locals 0

    iput-wide p2, p0, Lcom/networkbench/agent/impl/session/screen/NBSMotionEvent;->time:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    iput p2, p0, Lcom/networkbench/agent/impl/session/screen/NBSMotionEvent;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/networkbench/agent/impl/session/screen/NBSMotionEvent;->y:F

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NBSMotionEvent{x="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSMotionEvent;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSMotionEvent;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/networkbench/agent/impl/session/screen/NBSMotionEvent;->time:J

    const/16 p0, 0x7d

    invoke-static {v0, v1, v2, p0}, Lfc;->k(Ljava/lang/StringBuilder;JC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
