.class public Lcom/networkbench/agent/impl/session/screen/NBSActionPath;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field time:J

.field x:F

.field y:F


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/session/screen/NBSMotionEvent;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lcom/networkbench/agent/impl/session/screen/NBSMotionEvent;->time:J

    iput-wide v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSActionPath;->time:J

    iget v0, p1, Lcom/networkbench/agent/impl/session/screen/NBSMotionEvent;->x:F

    iput v0, p0, Lcom/networkbench/agent/impl/session/screen/NBSActionPath;->x:F

    iget p1, p1, Lcom/networkbench/agent/impl/session/screen/NBSMotionEvent;->y:F

    iput p1, p0, Lcom/networkbench/agent/impl/session/screen/NBSActionPath;->y:F

    return-void
.end method
