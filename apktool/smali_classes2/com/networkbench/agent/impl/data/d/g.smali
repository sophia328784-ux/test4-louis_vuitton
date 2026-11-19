.class public Lcom/networkbench/agent/impl/data/d/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field private static final a:Ljava/lang/String; = "NBSGestureForFeature"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3

    const-string p0, "NBSGestureForFeature"

    const-string p1, "onDown reset feature data Info"

    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/networkbench/agent/impl/data/d/d;

    const-string p1, ""

    const/4 v0, -0x1

    const-string v1, "onDown_Action"

    const-string v2, "0"

    invoke-direct {p0, v1, v2, p1, v0}, Lcom/networkbench/agent/impl/data/d/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/networkbench/agent/impl/data/d/b;->a()Lcom/networkbench/agent/impl/data/d/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/networkbench/agent/impl/data/d/b;->a(Lcom/networkbench/agent/impl/data/d/d;)V

    invoke-static {}, Lcom/networkbench/agent/impl/i/d;->a()Lcom/networkbench/agent/impl/i/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/i/d;->c()V

    const/4 p0, 0x0

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
