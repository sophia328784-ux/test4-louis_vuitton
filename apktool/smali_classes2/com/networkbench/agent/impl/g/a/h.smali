.class public Lcom/networkbench/agent/impl/g/a/h;
.super Lcom/networkbench/agent/impl/g/a/d;
.source "SourceFile"


# static fields
.field private static final e:Ljava/lang/String; = "NBSGestureDetector"


# instance fields
.field private f:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/networkbench/agent/impl/session/screen/NBSMotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private g:J


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/g/a/a;Landroid/view/MotionEvent;Ljava/lang/String;J)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/networkbench/agent/impl/g/a/d;-><init>(Lcom/networkbench/agent/impl/g/a/a;Landroid/view/MotionEvent;Ljava/lang/String;)V

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/g/a/h;->f:Ljava/util/LinkedList;

    new-instance p3, Lcom/networkbench/agent/impl/session/screen/NBSMotionEvent;

    invoke-direct {p3}, Lcom/networkbench/agent/impl/session/screen/NBSMotionEvent;-><init>()V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/g/a/d;->a()J

    move-result-wide v0

    invoke-virtual {p3, p2, v0, v1}, Lcom/networkbench/agent/impl/session/screen/NBSMotionEvent;->conversionMotionEvent(Landroid/view/MotionEvent;J)Lcom/networkbench/agent/impl/session/screen/NBSMotionEvent;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iput-wide p4, p0, Lcom/networkbench/agent/impl/g/a/h;->g:J

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)V
    .locals 3

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/g/a/d;->b:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Lcom/networkbench/agent/impl/session/screen/NBSMotionEvent;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/session/screen/NBSMotionEvent;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/networkbench/agent/impl/session/screen/NBSMotionEvent;->conversionMotionEvent(Landroid/view/MotionEvent;J)Lcom/networkbench/agent/impl/session/screen/NBSMotionEvent;

    move-result-object p1

    iget-object p0, p0, Lcom/networkbench/agent/impl/g/a/h;->f:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public e()Ljava/util/LinkedList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lcom/networkbench/agent/impl/session/screen/NBSMotionEvent;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/networkbench/agent/impl/g/a/h;->f:Ljava/util/LinkedList;

    return-object p0
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/g/a/h;->g:J

    return-wide v0
.end method
