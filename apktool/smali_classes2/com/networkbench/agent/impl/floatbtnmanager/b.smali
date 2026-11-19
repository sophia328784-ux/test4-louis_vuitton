.class public Lcom/networkbench/agent/impl/floatbtnmanager/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private a:Z

.field private b:J

.field private c:F

.field private d:F

.field private e:Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/b;->a:Z

    iput-object p1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/b;->e:Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->getPosBeginX()I

    move-result v0

    iput v0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/b;->f:I

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->getPosBeginY()I

    move-result p1

    iput p1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/b;->g:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 p1, 0x0

    if-nez p2, :cond_0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/b;->e:Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->k()Z

    move-result v0

    if-nez v0, :cond_1

    return p1

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    iput-boolean v3, p0, Lcom/networkbench/agent/impl/floatbtnmanager/b;->a:Z

    iget p2, p0, Lcom/networkbench/agent/impl/floatbtnmanager/b;->f:I

    int-to-float p2, p2

    sub-float/2addr v0, p2

    iput v0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/b;->c:F

    iget p2, p0, Lcom/networkbench/agent/impl/floatbtnmanager/b;->g:I

    int-to-float p2, p2

    sub-float/2addr v1, p2

    iput v1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/b;->d:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/b;->b:J

    goto :goto_0

    :cond_2
    if-ne v2, v3, :cond_3

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/b;->a:Z

    iget-object p0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/b;->e:Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->c()V

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/networkbench/agent/impl/floatbtnmanager/b;->a:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/networkbench/agent/impl/floatbtnmanager/b;->c:F

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/b;->f:I

    iget v2, p0, Lcom/networkbench/agent/impl/floatbtnmanager/b;->d:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/b;->g:I

    iget-object p0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/b;->e:Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;

    invoke-virtual {p0, p2, v0, v1}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->a(Landroid/view/MotionEvent;II)V

    :cond_4
    :goto_0
    return p1
.end method
