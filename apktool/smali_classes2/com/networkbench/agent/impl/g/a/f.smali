.class public Lcom/networkbench/agent/impl/g/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field private static final b:Ljava/lang/String; = "NBSGestureDetector"


# instance fields
.field a:Lcom/networkbench/agent/impl/g/a/h;

.field private c:J

.field private d:Lcom/networkbench/agent/impl/g/a/e;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/g/a/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/g/a/f;->d:Lcom/networkbench/agent/impl/g/a/e;

    return-void
.end method

.method private a(Lcom/networkbench/agent/impl/g/a/h;)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/g/a/f;->d:Lcom/networkbench/agent/impl/g/a/e;

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/g/a/e;->a(Lcom/networkbench/agent/impl/g/a/h;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string p1, "NBSGestureDetector"

    const-string v0, "onDoubleTap"

    invoke-static {p1, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/g/a/f;->a:Lcom/networkbench/agent/impl/g/a/h;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/g/a/a;->b:Lcom/networkbench/agent/impl/g/a/a;

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/g/a/d;->a(Lcom/networkbench/agent/impl/g/a/a;)V

    return p1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "NBSGestureDetector"

    const-string v1, "onDoubleTapEvent"

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/g/a/f;->a:Lcom/networkbench/agent/impl/g/a/h;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v2, Lcom/networkbench/agent/impl/g/a/a;->c:Lcom/networkbench/agent/impl/g/a/a;

    invoke-virtual {v0, v2}, Lcom/networkbench/agent/impl/g/a/d;->a(Lcom/networkbench/agent/impl/g/a/a;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/g/a/f;->a:Lcom/networkbench/agent/impl/g/a/h;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/g/a/h;->e()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_1

    iget-object p0, p0, Lcom/networkbench/agent/impl/g/a/f;->a:Lcom/networkbench/agent/impl/g/a/h;

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/g/a/h;->a(Landroid/view/MotionEvent;)V

    :cond_1
    return v1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 9

    const-string v0, "NBSGestureDetector"

    const-string v1, "onDown"

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/g/a/f;->a:Lcom/networkbench/agent/impl/g/a/h;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/networkbench/agent/impl/g/a/d;->b:Z

    if-nez v2, :cond_0

    iput-boolean v1, v0, Lcom/networkbench/agent/impl/g/a/d;->b:Z

    :cond_0
    new-instance v3, Lcom/networkbench/agent/impl/g/a/h;

    sget-object v4, Lcom/networkbench/agent/impl/g/a/a;->d:Lcom/networkbench/agent/impl/g/a/a;

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/ScreenNameManager;->getCurrentScreenName()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/networkbench/agent/impl/g/a/h;-><init>(Lcom/networkbench/agent/impl/g/a/a;Landroid/view/MotionEvent;Ljava/lang/String;J)V

    iput-object v3, p0, Lcom/networkbench/agent/impl/g/a/f;->a:Lcom/networkbench/agent/impl/g/a/h;

    invoke-direct {p0, v3}, Lcom/networkbench/agent/impl/g/a/f;->a(Lcom/networkbench/agent/impl/g/a/h;)V

    return v1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const-string p1, "NBSGestureDetector"

    const-string p3, "onFling"

    invoke-static {p1, p3}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/networkbench/agent/impl/g/a/f;->a:Lcom/networkbench/agent/impl/g/a/h;

    const/4 p3, 0x0

    if-nez p1, :cond_0

    return p3

    :cond_0
    invoke-virtual {p1, p2}, Lcom/networkbench/agent/impl/g/a/h;->a(Landroid/view/MotionEvent;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/g/a/f;->a:Lcom/networkbench/agent/impl/g/a/h;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/g/a/d;->b:Z

    return p3
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    const-string p1, "NBSGestureDetector"

    const-string v0, "onLongPress"

    invoke-static {p1, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/g/a/f;->a:Lcom/networkbench/agent/impl/g/a/h;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/g/a/d;->b:Z

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    const-string p1, "NBSGestureDetector"

    const-string p3, "onScroll"

    invoke-static {p1, p3}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/networkbench/agent/impl/g/a/f;->a:Lcom/networkbench/agent/impl/g/a/h;

    const/4 p3, 0x0

    if-nez p1, :cond_0

    return p3

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/networkbench/agent/impl/g/a/f;->a:Lcom/networkbench/agent/impl/g/a/h;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/g/a/d;->a()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long p1, v0, v2

    iget-object p4, p0, Lcom/networkbench/agent/impl/g/a/f;->a:Lcom/networkbench/agent/impl/g/a/h;

    if-ltz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p4, Lcom/networkbench/agent/impl/g/a/d;->b:Z

    new-instance v0, Lcom/networkbench/agent/impl/g/a/h;

    sget-object v1, Lcom/networkbench/agent/impl/g/a/a;->g:Lcom/networkbench/agent/impl/g/a/a;

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/ScreenNameManager;->getCurrentScreenName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/networkbench/agent/impl/g/a/h;-><init>(Lcom/networkbench/agent/impl/g/a/a;Landroid/view/MotionEvent;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/g/a/f;->a:Lcom/networkbench/agent/impl/g/a/h;

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/g/a/f;->a(Lcom/networkbench/agent/impl/g/a/h;)V

    goto :goto_0

    :cond_1
    move-object v2, p2

    invoke-virtual {p4, v2}, Lcom/networkbench/agent/impl/g/a/h;->a(Landroid/view/MotionEvent;)V

    :goto_0
    return p3
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    const-string p0, "NBSGestureDetector"

    const-string p1, "onShowPress"

    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string p1, "NBSGestureDetector"

    const-string v0, "Don\'t deal with onSingleTapConfirmed"

    invoke-static {p1, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/g/a/f;->a:Lcom/networkbench/agent/impl/g/a/h;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/g/a/d;->b:Z

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const-string p0, "NBSGestureDetector"

    const-string p1, "onSingleTapUp"

    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
