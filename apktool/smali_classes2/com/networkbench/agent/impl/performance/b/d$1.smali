.class Lcom/networkbench/agent/impl/performance/b/d$1;
.super Lcom/networkbench/agent/impl/performance/b/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/performance/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final a:J

.field final synthetic b:Lcom/networkbench/agent/impl/performance/b/d;

.field private final c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:J

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/performance/b/d;)V
    .locals 2

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/b/d$1;->b:Lcom/networkbench/agent/impl/performance/b/d;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/performance/b/a/b;-><init>()V

    const-wide/32 v0, 0xfe502a

    iput-wide v0, p0, Lcom/networkbench/agent/impl/performance/b/d$1;->a:J

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/b/d$1;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/performance/b/d$1;->d:J

    const-string p1, ""

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/b/d$1;->e:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/performance/b/d$1;)J
    .locals 2

    .line 37
    iget-wide v0, p0, Lcom/networkbench/agent/impl/performance/b/d$1;->d:J

    return-wide v0
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/performance/b/d$1;J)J
    .locals 0

    .line 36
    iput-wide p1, p0, Lcom/networkbench/agent/impl/performance/b/d$1;->d:J

    return-wide p1
.end method

.method public static synthetic b(Lcom/networkbench/agent/impl/performance/b/d$1;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/b/d$1;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;JZ)V
    .locals 8

    iget-object p4, p0, Lcom/networkbench/agent/impl/performance/b/d$1;->e:Ljava/lang/String;

    invoke-static {p4}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/b/d$1;->e:Ljava/lang/String;

    :cond_0
    iget-object v5, p0, Lcom/networkbench/agent/impl/performance/b/d$1;->e:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object p4, p0, Lcom/networkbench/agent/impl/performance/b/d$1;->b:Lcom/networkbench/agent/impl/performance/b/d;

    invoke-static {p4}, Lcom/networkbench/agent/impl/performance/b/d;->a(Lcom/networkbench/agent/impl/performance/b/d;)Ljava/util/concurrent/ExecutorService;

    move-result-object p4

    new-instance v0, Lcom/networkbench/agent/impl/performance/b/d$1$1;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/networkbench/agent/impl/performance/b/d$1$1;-><init>(Lcom/networkbench/agent/impl/performance/b/d$1;Ljava/lang/String;JLjava/lang/String;J)V

    invoke-interface {p4, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iput-object v2, v1, Lcom/networkbench/agent/impl/performance/b/d$1;->e:Ljava/lang/String;

    return-void
.end method
