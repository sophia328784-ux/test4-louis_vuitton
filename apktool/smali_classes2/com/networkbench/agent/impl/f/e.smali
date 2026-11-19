.class public Lcom/networkbench/agent/impl/f/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x1

.field private static b:Lcom/networkbench/agent/impl/f/e; = null

.field private static final c:Ljava/lang/String; = "com.networkbench.agent.impl.coulometry.CoulometryModuleWrapper"


# instance fields
.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/networkbench/agent/impl/f/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/f/e;->d:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/networkbench/agent/impl/f/e;
    .locals 2

    .line 130
    sget-object v0, Lcom/networkbench/agent/impl/f/e;->b:Lcom/networkbench/agent/impl/f/e;

    if-nez v0, :cond_1

    .line 131
    const-class v0, Lcom/networkbench/agent/impl/f/e;

    monitor-enter v0

    .line 132
    :try_start_0
    sget-object v1, Lcom/networkbench/agent/impl/f/e;->b:Lcom/networkbench/agent/impl/f/e;

    if-nez v1, :cond_0

    .line 133
    new-instance v1, Lcom/networkbench/agent/impl/f/e;

    invoke-direct {v1}, Lcom/networkbench/agent/impl/f/e;-><init>()V

    sput-object v1, Lcom/networkbench/agent/impl/f/e;->b:Lcom/networkbench/agent/impl/f/e;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 134
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 135
    :cond_1
    :goto_2
    sget-object v0, Lcom/networkbench/agent/impl/f/e;->b:Lcom/networkbench/agent/impl/f/e;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 125
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, -0x1

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p0, "nbs_module_coulometry"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string p0, "nbs_module_fps"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string p0, "nbs_module_cpu"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 126
    const-string p0, ""

    return-object p0

    .line 127
    :pswitch_0
    invoke-static {}, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->getInstance()Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->getModuleData()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 128
    :pswitch_1
    invoke-static {}, Lcom/networkbench/agent/impl/performance/b/d;->a()Lcom/networkbench/agent/impl/performance/b/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/b/d;->getModuleData()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 129
    :pswitch_2
    invoke-static {}, Lcom/networkbench/agent/impl/performance/a/c;->b()Lcom/networkbench/agent/impl/performance/a/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/a/c;->getModuleData()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x22b7ffab -> :sswitch_2
        -0x22b7f46a -> :sswitch_1
        0x1ff2108a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/content/Context;Lcom/networkbench/agent/impl/c/e;ILcom/networkbench/agent/impl/harvest/a/a/c;)V
    .locals 0

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->aA()Lcom/networkbench/agent/impl/util/u;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/u;->a()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->aA()Lcom/networkbench/agent/impl/util/u;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/u;->c()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    sget p0, Lcom/networkbench/agent/impl/util/r;->p:I

    if-nez p0, :cond_1

    const-string p0, "begin init battery module"

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->p(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->getInstance()Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;

    move-result-object p0

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p4

    invoke-virtual {p4}, Lcom/networkbench/agent/impl/util/r;->aD()Lcom/networkbench/agent/impl/harvest/a/a/b;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->initModule(Landroid/content/Context;Lcom/networkbench/agent/impl/c/e;Lcom/networkbench/agent/impl/harvest/a/a/c;I)V

    :cond_1
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->aA()Lcom/networkbench/agent/impl/util/u;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/u;->x()Z

    move-result p0

    const/4 p2, 0x0

    const/4 p3, 0x0

    if-eqz p0, :cond_2

    sget p0, Lcom/networkbench/agent/impl/util/r;->p:I

    if-nez p0, :cond_2

    invoke-static {}, Lcom/networkbench/agent/impl/performance/a/c;->b()Lcom/networkbench/agent/impl/performance/a/c;

    move-result-object p0

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p4

    invoke-virtual {p4}, Lcom/networkbench/agent/impl/util/r;->aI()Lcom/networkbench/agent/impl/performance/a/a/b;

    move-result-object p4

    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/networkbench/agent/impl/performance/a/c;->initModule(Landroid/content/Context;Lcom/networkbench/agent/impl/c/e;Lcom/networkbench/agent/impl/harvest/a/a/c;I)V

    :cond_2
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->aA()Lcom/networkbench/agent/impl/util/u;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/u;->y()Z

    move-result p0

    if-eqz p0, :cond_3

    sget p0, Lcom/networkbench/agent/impl/util/r;->p:I

    if-nez p0, :cond_3

    invoke-static {}, Lcom/networkbench/agent/impl/performance/b/d;->a()Lcom/networkbench/agent/impl/performance/b/d;

    move-result-object p0

    invoke-virtual {p0, p1, p3, p3, p2}, Lcom/networkbench/agent/impl/performance/b/d;->initModule(Landroid/content/Context;Lcom/networkbench/agent/impl/c/e;Lcom/networkbench/agent/impl/harvest/a/a/c;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "init module error:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p0}, Lz81;->k(Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->aA()Lcom/networkbench/agent/impl/util/u;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/u;->x()Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/networkbench/agent/impl/util/r;->p:I

    if-nez p0, :cond_0

    const-string p0, "begin init CpuModule module Restart"

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->p(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/performance/a/c;->b()Lcom/networkbench/agent/impl/performance/a/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/a/c;->harvestRestart()V

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->aA()Lcom/networkbench/agent/impl/util/u;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/u;->a()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->aA()Lcom/networkbench/agent/impl/util/u;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/u;->c()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    sget p0, Lcom/networkbench/agent/impl/util/r;->p:I

    if-nez p0, :cond_2

    const-string p0, "begin init battery module Restart"

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->p(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->getInstance()Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->harvestRestart()V

    :cond_2
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->aA()Lcom/networkbench/agent/impl/util/u;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/u;->y()Z

    move-result p0

    if-eqz p0, :cond_3

    sget p0, Lcom/networkbench/agent/impl/util/r;->p:I

    if-nez p0, :cond_3

    const-string p0, "begin init fps module Restart"

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->p(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/performance/b/d;->a()Lcom/networkbench/agent/impl/performance/b/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/b/d;->harvestRestart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NBSModuleManager harvestRestart error:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/c/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public c()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/performance/a/c;->b()Lcom/networkbench/agent/impl/performance/a/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/a/c;->harvestStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CpuModuleWrapper harvestStop error:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/c/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    :try_start_1
    invoke-static {}, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->getInstance()Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->harvestStop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CoulometryModuleWrapper harvestStop error:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/c/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    :try_start_2
    invoke-static {}, Lcom/networkbench/agent/impl/performance/b/d;->a()Lcom/networkbench/agent/impl/performance/b/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/b/d;->harvestStop()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FpsModuleWrapper harvestStop error:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/c/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method
