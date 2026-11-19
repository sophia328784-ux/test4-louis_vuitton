.class public Lcom/networkbench/agent/impl/g/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final f:Ljava/lang/String; = "NBSGestureCollection"

.field private static final g:I = 0x2710

.field private static final h:I = 0x12c


# instance fields
.field protected a:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/networkbench/agent/impl/g/a/d;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Lcom/networkbench/agent/impl/g/a/d;

.field protected c:Lcom/networkbench/agent/impl/g/a/d;

.field protected d:Lcom/networkbench/agent/impl/g/a/d;

.field e:Z

.field private i:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/g/a/e;->e:Z

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/g/a/e;->a:Ljava/util/Stack;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/g/a/e;->i:J

    return-void
.end method

.method private a(Lcom/networkbench/agent/impl/g/a/a;)Z
    .locals 0

    .line 73
    sget-object p0, Lcom/networkbench/agent/impl/g/a/a;->d:Lcom/networkbench/agent/impl/g/a/a;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private d()V
    .locals 1

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/networkbench/agent/impl/g/a/e;->c:Lcom/networkbench/agent/impl/g/a/d;

    .line 41
    iput-object v0, p0, Lcom/networkbench/agent/impl/g/a/e;->b:Lcom/networkbench/agent/impl/g/a/d;

    return-void
.end method

.method private e(Lcom/networkbench/agent/impl/g/a/d;)V
    .locals 5

    new-instance v0, Lcom/networkbench/agent/impl/session/Event;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const-string v3, "rage click"

    invoke-direct {v0, v3, v1, v2}, Lcom/networkbench/agent/impl/session/Event;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/g/a/e;->a:Ljava/util/Stack;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/g/a/e;->c()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/networkbench/agent/impl/g/a/d;->a(Ljava/util/Stack;I)Ljava/util/ArrayList;

    move-result-object p1

    :try_start_0
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/session/Event;->getAttributes()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "touchMap"

    new-instance v3, Lcom/networkbench/com/google/gson/Gson;

    invoke-direct {v3}, Lcom/networkbench/com/google/gson/Gson;-><init>()V

    new-instance v4, Lcom/networkbench/agent/impl/g/a/e$1;

    invoke-direct {v4, p0}, Lcom/networkbench/agent/impl/g/a/e$1;-><init>(Lcom/networkbench/agent/impl/g/a/e;)V

    invoke-virtual {v4}, Lcom/networkbench/com/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/networkbench/com/google/gson/Gson;->toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/HarvestData;->getSpanDatas()Lcom/networkbench/agent/impl/session/SpanDatas;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/networkbench/agent/impl/session/SpanDatas;->addEvent(Lcom/networkbench/agent/impl/session/Event;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/g/a/e;->a:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->clear()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 69
    const/16 p0, 0x12c

    return p0
.end method

.method public a(JLcom/networkbench/agent/impl/g/a/h;)V
    .locals 1

    .line 70
    sget-object p0, Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController$ShotControllerType;->SCREEN_SHOT_TYPE:Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController$ShotControllerType;

    .line 71
    invoke-static {p0}, Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController;->getShotController(Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController$ShotControllerType;)Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController;

    move-result-object p0

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/networkbench/agent/impl/session/screen/NBSScreenShotController;->doShot(JLcom/networkbench/agent/impl/g/a/h;Ljava/lang/String;)Lcom/networkbench/agent/impl/session/screen/NBSBitmapBean;

    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/g/a/d;)V
    .locals 3

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/g/a/d;->c()Lcom/networkbench/agent/impl/g/a/a;

    move-result-object v0

    sget-object v1, Lcom/networkbench/agent/impl/g/a/a;->i:Lcom/networkbench/agent/impl/g/a/a;

    const-string v2, "NBSGestureCollection"

    if-ne v0, v1, :cond_1

    const-string p1, "dropFlingWithDown invoke"

    invoke-static {v2, p1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/g/a/e;->d()V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/g/a/d;->c()Lcom/networkbench/agent/impl/g/a/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/g/a/e;->a(Lcom/networkbench/agent/impl/g/a/a;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "gestureType is not suit for angry hit:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/g/a/d;->c()Lcom/networkbench/agent/impl/g/a/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/g/a/e;->c(Lcom/networkbench/agent/impl/g/a/d;)V

    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/g/a/h;)V
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "processGesture:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/g/a/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NBSGestureCollection"

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/g/a/e;->b(Lcom/networkbench/agent/impl/g/a/h;)V

    .line 68
    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/g/a/e;->a(Lcom/networkbench/agent/impl/g/a/d;)V

    return-void
.end method

.method public b()I
    .locals 0

    .line 93
    const/16 p0, 0x2710

    return p0
.end method

.method public b(Lcom/networkbench/agent/impl/g/a/h;)V
    .locals 3

    .line 87
    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/g/a/e;->b(Lcom/networkbench/agent/impl/g/a/d;)Z

    move-result v0

    const-string v1, "NBSGestureCollection"

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "drop gesture type is:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/g/a/d;->c()Lcom/networkbench/agent/impl/g/a/a;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object p0, p0, Lcom/networkbench/agent/impl/g/a/e;->d:Lcom/networkbench/agent/impl/g/a/d;

    iget-object p0, p0, Lcom/networkbench/agent/impl/g/a/d;->a:Ljava/util/Queue;

    invoke-interface {p0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "add gesture to queue gesture type is:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/g/a/d;->c()Lcom/networkbench/agent/impl/g/a/a;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iput-object p1, p0, Lcom/networkbench/agent/impl/g/a/e;->d:Lcom/networkbench/agent/impl/g/a/d;

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/networkbench/agent/impl/g/a/e;->a(JLcom/networkbench/agent/impl/g/a/h;)V

    return-void
.end method

.method public b(Lcom/networkbench/agent/impl/g/a/d;)Z
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "shouldDropGesture  gesture :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/g/a/d;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NBSGestureCollection"

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/g/a/d;->a()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/networkbench/agent/impl/g/a/e;->i:J

    sub-long/2addr v2, v4

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/g/a/e;->a()I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "shouldDropGesture  lastMotionEventTime :"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/networkbench/agent/impl/g/a/e;->i:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/g/a/d;->a()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/networkbench/agent/impl/g/a/e;->i:J

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "shouldDropGesture  new :"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/networkbench/agent/impl/g/a/e;->i:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public c()I
    .locals 1

    .line 52
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public c(Lcom/networkbench/agent/impl/g/a/d;)V
    .locals 1

    sget v0, Lcom/networkbench/agent/impl/util/r;->p:I

    if-eqz v0, :cond_0

    const-string p0, "NBSGestureCollection"

    const-string p1, "angry happened  isMainProcess :  not  .. "

    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/g/a/e;->b:Lcom/networkbench/agent/impl/g/a/d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/networkbench/agent/impl/g/a/e;->c:Lcom/networkbench/agent/impl/g/a/d;

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/g/a/e;->d(Lcom/networkbench/agent/impl/g/a/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/g/a/e;->e:Z

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/g/a/e;->e(Lcom/networkbench/agent/impl/g/a/d;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/g/a/e;->e:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/g/a/e;->e:Z

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/g/a/e;->a:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/networkbench/agent/impl/g/a/e;->b:Lcom/networkbench/agent/impl/g/a/d;

    iput-object v0, p0, Lcom/networkbench/agent/impl/g/a/e;->c:Lcom/networkbench/agent/impl/g/a/d;

    iput-object p1, p0, Lcom/networkbench/agent/impl/g/a/e;->b:Lcom/networkbench/agent/impl/g/a/d;

    return-void
.end method

.method public d(Lcom/networkbench/agent/impl/g/a/d;)Z
    .locals 2

    iget-object v0, p0, Lcom/networkbench/agent/impl/g/a/e;->b:Lcom/networkbench/agent/impl/g/a/d;

    invoke-virtual {p1, v0}, Lcom/networkbench/agent/impl/g/a/d;->a(Lcom/networkbench/agent/impl/g/a/d;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/networkbench/agent/impl/g/a/e;->b:Lcom/networkbench/agent/impl/g/a/d;

    iget-object v1, p0, Lcom/networkbench/agent/impl/g/a/e;->c:Lcom/networkbench/agent/impl/g/a/d;

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/g/a/d;->a(Lcom/networkbench/agent/impl/g/a/d;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/networkbench/agent/impl/g/a/e;->c:Lcom/networkbench/agent/impl/g/a/d;

    iget-object v1, p0, Lcom/networkbench/agent/impl/g/a/e;->b:Lcom/networkbench/agent/impl/g/a/d;

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/g/a/d;->b(Lcom/networkbench/agent/impl/g/a/d;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/networkbench/agent/impl/g/a/e;->b:Lcom/networkbench/agent/impl/g/a/d;

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/g/a/d;->b(Lcom/networkbench/agent/impl/g/a/d;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
