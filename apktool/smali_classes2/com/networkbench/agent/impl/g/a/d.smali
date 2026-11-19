.class public Lcom/networkbench/agent/impl/g/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final e:I = 0x64

.field private static final f:I = 0x12c


# instance fields
.field public a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/networkbench/agent/impl/g/a/h;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:F

.field public d:F

.field private g:Ljava/lang/String;

.field private h:Lcom/networkbench/agent/impl/g/a/a;

.field private i:J


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/g/a/a;Landroid/view/MotionEvent;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/g/a/d;->b:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/g/a/d;->a:Ljava/util/Queue;

    iput-object p1, p0, Lcom/networkbench/agent/impl/g/a/d;->h:Lcom/networkbench/agent/impl/g/a/a;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/networkbench/agent/impl/g/a/d;->c:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/networkbench/agent/impl/g/a/d;->d:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/networkbench/agent/impl/g/a/d;->i:J

    iput-object p3, p0, Lcom/networkbench/agent/impl/g/a/d;->g:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/util/ArrayList;Lcom/networkbench/agent/impl/g/a/d;I)V
    .locals 4

    new-instance p0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {p0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    new-instance v0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/networkbench/agent/impl/util/r;->e(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v1, "timestamp"

    invoke-virtual {p0, v1, v0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v1, p2, Lcom/networkbench/agent/impl/g/a/d;->c:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v1, "x"

    invoke-virtual {p0, v1, v0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v1, p2, Lcom/networkbench/agent/impl/g/a/d;->d:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v1, "y"

    invoke-virtual {p0, v1, v0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {v0, p3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string p3, "or"

    invoke-virtual {p0, p3, v0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance p3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/g/a/d;->b()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string p2, "page"

    invoke-virtual {p0, p2, p3}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 95
    iget-wide v0, p0, Lcom/networkbench/agent/impl/g/a/d;->i:J

    return-wide v0
.end method

.method public a(Ljava/util/Stack;I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "Lcom/networkbench/agent/impl/g/a/d;",
            ">;I)",
            "Ljava/util/ArrayList;"
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/g/a/d;

    .line 99
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/networkbench/agent/impl/g/a/d;

    invoke-direct {p0, v0, p1, p2}, Lcom/networkbench/agent/impl/g/a/d;->a(Ljava/util/ArrayList;Lcom/networkbench/agent/impl/g/a/d;I)V

    .line 100
    invoke-direct {p0, v0, v1, p2}, Lcom/networkbench/agent/impl/g/a/d;->a(Ljava/util/ArrayList;Lcom/networkbench/agent/impl/g/a/d;I)V

    .line 101
    invoke-direct {p0, v0, p0, p2}, Lcom/networkbench/agent/impl/g/a/d;->a(Ljava/util/ArrayList;Lcom/networkbench/agent/impl/g/a/d;I)V

    return-object v0
.end method

.method public a(Lcom/networkbench/agent/impl/g/a/a;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/networkbench/agent/impl/g/a/d;->h:Lcom/networkbench/agent/impl/g/a/a;

    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/g/a/d;)Z
    .locals 4

    .line 96
    iget-wide v0, p0, Lcom/networkbench/agent/impl/g/a/d;->i:J

    iget-wide v2, p1, Lcom/networkbench/agent/impl/g/a/d;->i:J

    sub-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/g/a/d;->d()I

    move-result p0

    int-to-long p0, p0

    cmp-long p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/networkbench/agent/impl/g/a/d;->g:Ljava/lang/String;

    return-object p0
.end method

.method public b(Lcom/networkbench/agent/impl/g/a/d;)Z
    .locals 2

    iget v0, p1, Lcom/networkbench/agent/impl/g/a/d;->c:F

    iget p1, p1, Lcom/networkbench/agent/impl/g/a/d;->d:F

    iget v1, p0, Lcom/networkbench/agent/impl/g/a/d;->c:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget p0, p0, Lcom/networkbench/agent/impl/g/a/d;->d:F

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    mul-float/2addr v0, v0

    mul-float/2addr p0, p0

    add-float/2addr p0, v0

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    cmpl-double p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public c()Lcom/networkbench/agent/impl/g/a/a;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/g/a/d;->h:Lcom/networkbench/agent/impl/g/a/a;

    return-object p0
.end method

.method public d()I
    .locals 0

    const/16 p0, 0x12c

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NBSGesture{gestureType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/g/a/d;->h:Lcom/networkbench/agent/impl/g/a/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gestureHappenedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/networkbench/agent/impl/g/a/d;->i:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", motion=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/networkbench/agent/impl/g/a/d;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/networkbench/agent/impl/g/a/d;->d:F

    const-string v1, "]}"

    invoke-static {p0, v1, v0}, Ld21;->e(FLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
