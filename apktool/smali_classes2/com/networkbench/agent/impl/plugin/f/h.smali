.class public Lcom/networkbench/agent/impl/plugin/f/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z = false

.field public static b:Z = false

.field public static c:Z = false

.field public static d:Z = false

.field public static e:Z = false

.field public static f:Z = false

.field public static g:Z = false

.field public static final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/networkbench/agent/impl/plugin/f/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/plugin/f/h;->h:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/plugin/f/h;->i:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 4

    .line 531
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 532
    sget-object v1, Lcom/networkbench/agent/impl/plugin/f/h;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 533
    sget-object v3, Lcom/networkbench/agent/impl/plugin/f/h;->i:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/networkbench/agent/impl/plugin/f/e;

    .line 534
    iget-boolean v3, v3, Lcom/networkbench/agent/impl/plugin/f/e;->b:Z

    if-nez v3, :cond_0

    .line 535
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 536
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 537
    sget-object v2, Lcom/networkbench/agent/impl/plugin/f/h;->i:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static a(Lcom/networkbench/agent/impl/data/c/a;)V
    .locals 7

    .line 538
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->ae()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 539
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/c/a;->c()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/data/c/d;

    .line 540
    invoke-static {v0}, Lcom/networkbench/agent/impl/plugin/f/h;->a(Lcom/networkbench/agent/impl/data/c/d;)V

    .line 541
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setExtensionConfig  \u6dfb\u52a0 taskId : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/networkbench/agent/impl/data/c/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->e(Ljava/lang/String;)V

    .line 542
    sget-object v1, Lcom/networkbench/agent/impl/plugin/f/h;->i:Ljava/util/Map;

    iget-object v2, v0, Lcom/networkbench/agent/impl/data/c/d;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 543
    iget-object v2, v0, Lcom/networkbench/agent/impl/data/c/d;->a:Ljava/lang/String;

    new-instance v3, Lcom/networkbench/agent/impl/plugin/f/e;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/networkbench/agent/impl/plugin/f/e;-><init>(JZ)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setExtensionConfig  \u6dfb\u52a0 \u65b0\u7684taskId : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/networkbench/agent/impl/data/c/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void

    .line 545
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "SceneRegisterObserver   plugin switch  is "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->ae()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized a(Lcom/networkbench/agent/impl/data/c/d;)V
    .locals 3

    const-class v0, Lcom/networkbench/agent/impl/plugin/f/h;

    monitor-enter v0

    .line 512
    :try_start_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/data/c/d;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "on_foreground"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 513
    sput-boolean v2, Lcom/networkbench/agent/impl/plugin/f/h;->d:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 514
    :sswitch_1
    const-string v1, "after_net"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 515
    sput-boolean v2, Lcom/networkbench/agent/impl/plugin/f/h;->a:Z

    goto :goto_0

    .line 516
    :sswitch_2
    const-string v1, "after_anr"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 517
    sput-boolean v2, Lcom/networkbench/agent/impl/plugin/f/h;->e:Z

    goto :goto_0

    .line 518
    :sswitch_3
    const-string v1, "after_error"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 519
    sput-boolean v2, Lcom/networkbench/agent/impl/plugin/f/h;->b:Z

    goto :goto_0

    .line 520
    :sswitch_4
    const-string v1, "after_crash"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 521
    sput-boolean v2, Lcom/networkbench/agent/impl/plugin/f/h;->f:Z

    goto :goto_0

    .line 522
    :sswitch_5
    const-string v1, "on_task"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 523
    sput-boolean v2, Lcom/networkbench/agent/impl/plugin/f/h;->g:Z

    goto :goto_0

    .line 524
    :sswitch_6
    const-string v1, "on_background"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 525
    sput-boolean v2, Lcom/networkbench/agent/impl/plugin/f/h;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :sswitch_data_0
    .sparse-switch
        -0x55647472 -> :sswitch_6
        -0x4f064c1b -> :sswitch_5
        0x210ef784 -> :sswitch_4
        0x212b65e5 -> :sswitch_3
        0x3cc56102 -> :sswitch_2
        0x3cc590ba -> :sswitch_1
        0x704b9fa3 -> :sswitch_0
    .end sparse-switch
.end method

.method public static declared-synchronized a(Lcom/networkbench/agent/impl/plugin/f/i;)V
    .locals 8

    const-class v0, Lcom/networkbench/agent/impl/plugin/f/h;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/data/c/a;->a()Lcom/networkbench/agent/impl/data/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/c/a;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/networkbench/agent/impl/data/c/d;

    iget-object v3, v2, Lcom/networkbench/agent/impl/data/c/d;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/networkbench/agent/impl/plugin/f/i;->e:Lcom/networkbench/agent/impl/plugin/e;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerObserver : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/data/c/d;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/networkbench/agent/impl/c/g;->e(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/networkbench/agent/impl/data/c/d;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x1

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    const-string v4, "responseHead"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lcom/networkbench/agent/impl/plugin/j;

    invoke-direct {v3, p0, v2}, Lcom/networkbench/agent/impl/plugin/j;-><init>(Lcom/networkbench/agent/impl/plugin/f/i;Lcom/networkbench/agent/impl/data/c/d;)V

    goto/16 :goto_4

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :sswitch_1
    const-string v4, "download"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lcom/networkbench/agent/impl/plugin/b/a;

    invoke-direct {v3, p0, v2}, Lcom/networkbench/agent/impl/plugin/b/a;-><init>(Lcom/networkbench/agent/impl/plugin/f/i;Lcom/networkbench/agent/impl/data/c/d;)V

    goto/16 :goto_4

    :sswitch_2
    const-string v4, "requestHead"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lcom/networkbench/agent/impl/plugin/i;

    invoke-direct {v3, p0, v2}, Lcom/networkbench/agent/impl/plugin/i;-><init>(Lcom/networkbench/agent/impl/plugin/f/i;Lcom/networkbench/agent/impl/data/c/d;)V

    goto/16 :goto_4

    :sswitch_3
    const-string v4, "mtr"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :sswitch_4
    const-string v4, "log"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :sswitch_5
    const-string v4, "dns"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lcom/networkbench/agent/impl/plugin/b;

    invoke-direct {v3, p0, v2}, Lcom/networkbench/agent/impl/plugin/b;-><init>(Lcom/networkbench/agent/impl/plugin/f/i;Lcom/networkbench/agent/impl/data/c/d;)V

    goto :goto_4

    :sswitch_6
    const-string v4, "MTR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    new-instance v3, Lcom/networkbench/agent/impl/plugin/d/b;

    invoke-direct {v3, p0, v2}, Lcom/networkbench/agent/impl/plugin/d/b;-><init>(Lcom/networkbench/agent/impl/plugin/f/i;Lcom/networkbench/agent/impl/data/c/d;)V

    goto :goto_4

    :sswitch_7
    const-string v4, "Log"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_2
    new-instance v3, Lcom/networkbench/agent/impl/plugin/c/d;

    invoke-direct {v3, p0, v2}, Lcom/networkbench/agent/impl/plugin/c/d;-><init>(Lcom/networkbench/agent/impl/plugin/f/i;Lcom/networkbench/agent/impl/data/c/d;)V

    goto :goto_4

    :sswitch_8
    const-string v4, "ICMPPing"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lcom/networkbench/agent/impl/plugin/e/c;

    invoke-direct {v3, p0, v2}, Lcom/networkbench/agent/impl/plugin/e/c;-><init>(Lcom/networkbench/agent/impl/plugin/f/i;Lcom/networkbench/agent/impl/data/c/d;)V

    goto :goto_4

    :sswitch_9
    const-string v4, "allCellInfo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lcom/networkbench/agent/impl/plugin/a/b;

    invoke-direct {v3, p0, v2}, Lcom/networkbench/agent/impl/plugin/a/b;-><init>(Lcom/networkbench/agent/impl/plugin/f/i;Lcom/networkbench/agent/impl/data/c/d;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/networkbench/agent/impl/util/r;->n(Z)V

    goto :goto_4

    :sswitch_a
    const-string v4, "tcpPing"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lcom/networkbench/agent/impl/plugin/g/a;

    invoke-direct {v3, p0, v2}, Lcom/networkbench/agent/impl/plugin/g/a;-><init>(Lcom/networkbench/agent/impl/plugin/f/i;Lcom/networkbench/agent/impl/data/c/d;)V

    goto :goto_4

    :sswitch_b
    const-string v4, "tailLog"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lcom/networkbench/agent/impl/plugin/k;

    invoke-direct {v3, p0, v2}, Lcom/networkbench/agent/impl/plugin/k;-><init>(Lcom/networkbench/agent/impl/plugin/f/i;Lcom/networkbench/agent/impl/data/c/d;)V

    goto :goto_4

    :cond_1
    :goto_3
    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " isClientConditionAvalid :"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/plugin/h;->f()Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " ----, getIsUsed() : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/data/c/d;->b()Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/networkbench/agent/impl/c/g;->e(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/plugin/h;->f()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, p0}, Lcom/networkbench/agent/impl/plugin/h;->a(Lcom/networkbench/agent/impl/plugin/f/i;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string p0, " isErrCodeMapping :  code\u4e0d\u5339\u914d \u4e0d\u91c7\u96c6..."

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_2
    :try_start_1
    invoke-virtual {v2}, Lcom/networkbench/agent/impl/data/c/d;->a()Z

    move-result v4

    if-nez v4, :cond_6

    sget v4, Lcom/networkbench/agent/impl/util/r;->p:I

    if-eqz v4, :cond_3

    goto/16 :goto_0

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "taskId \u5305\u542b...."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/networkbench/agent/impl/plugin/f/h;->i:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/networkbench/agent/impl/c/g;->e(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/networkbench/agent/impl/data/c/d;->a:Ljava/lang/String;

    invoke-interface {v6, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "taskId \u5305\u542b...."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/networkbench/agent/impl/c/g;->e(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/networkbench/agent/impl/data/c/d;->a:Ljava/lang/String;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/networkbench/agent/impl/plugin/f/e;

    const-string v6, "taskId \u5305\u542b...."

    invoke-static {v6}, Lcom/networkbench/agent/impl/c/g;->e(Ljava/lang/String;)V

    iget-boolean v6, v4, Lcom/networkbench/agent/impl/plugin/f/e;->b:Z

    if-eqz v6, :cond_4

    const-string v2, "taskId \u5bf9\u5e94\u7684\u4efb\u52a1\u8fd8\u5728\u8fd0\u884c, \u6b64\u6b21\u4efb\u52a1\u9000\u51fa...."

    invoke-static {v2}, Lcom/networkbench/agent/impl/c/g;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v4, v3}, Lcom/networkbench/agent/impl/plugin/f/e;->a(Lcom/networkbench/agent/impl/plugin/h;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v2, "taskId \u5bf9\u5e94\u7684\u4efb\u52a1\u7684\u95f4\u9694\u5c0f\u4e8e1\u5206\u949f..."

    invoke-static {v2}, Lcom/networkbench/agent/impl/c/g;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/networkbench/agent/impl/plugin/f/e;->a:J

    :cond_6
    invoke-static {v2, v3}, Lcom/networkbench/agent/impl/plugin/f/h;->a(Lcom/networkbench/agent/impl/data/c/d;Lcom/networkbench/agent/impl/plugin/h;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, v3, Lcom/networkbench/agent/impl/plugin/h;->h:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    sget-object v4, Lcom/networkbench/agent/impl/plugin/f/h;->h:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v2, Lcom/networkbench/agent/impl/data/c/d;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/networkbench/agent/impl/data/c/d;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Lcom/networkbench/agent/impl/plugin/h;->h:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sceneSubject begin registerObserver, observer:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/networkbench/agent/impl/c/g;->e(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/data/c/d;->a()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/networkbench/agent/impl/plugin/f/i;->a(Lcom/networkbench/agent/impl/plugin/h;Ljava/lang/Boolean;)V

    :cond_8
    invoke-virtual {v2, v5}, Lcom/networkbench/agent/impl/data/c/d;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_9
    monitor-exit v0

    return-void

    :goto_5
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :sswitch_data_0
    .sparse-switch
        -0x5c2d2b2c -> :sswitch_b
        -0x586d230d -> :sswitch_a
        -0x2c59720f -> :sswitch_9
        -0x963cb1 -> :sswitch_8
        0x12b24 -> :sswitch_7
        0x12b8b -> :sswitch_6
        0x18529 -> :sswitch_5
        0x1a344 -> :sswitch_4
        0x1a7ab -> :sswitch_3
        0x4487550f -> :sswitch_2
        0x551ac888 -> :sswitch_1
        0x55c34dc1 -> :sswitch_0
    .end sparse-switch
.end method

.method private static a(Lcom/networkbench/agent/impl/data/c/d;Lcom/networkbench/agent/impl/plugin/h;)Z
    .locals 3

    .line 527
    instance-of v0, p1, Lcom/networkbench/agent/impl/plugin/b;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/networkbench/agent/impl/plugin/g/a;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/networkbench/agent/impl/plugin/b/a;

    if-eqz v0, :cond_1

    .line 528
    :cond_0
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/c/d;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/networkbench/agent/impl/plugin/f/h;->h:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/networkbench/agent/impl/data/c/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/c/d;->b:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcom/networkbench/agent/impl/plugin/h;->h:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 529
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 530
    const-string p0, "isEnterObserver .........true  ... "

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static b()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/data/c/a;->a()Lcom/networkbench/agent/impl/data/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/c/a;->d()V

    sget-object v0, Lcom/networkbench/agent/impl/plugin/f/h;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
